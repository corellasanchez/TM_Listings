<template>
  <div class="content">
    <div class="md-layout">
      <div class="md-layout-item md-medium-size-100 md-size-66">
        <property-details
          v-bind:data-background-color="headerBackground"
          v-bind:propiedad="propiedad"
          v-bind:isUpdating="isUpdating"
        ></property-details>
      </div>
      <div class="md-layout-item md-medium-size-100 md-size-33">
        <property-address
          v-bind:data-background-color="headerBackground"
          v-bind:direccion="direccion"
          v-bind:propiedad="propiedad"
          v-bind:isUpdating="isUpdating"
        ></property-address>
      </div>
      <div class="md-layout-item md-medium-size-100 md-size-66">
        <property-adjudication
          v-bind:data-background-color="headerBackground"
          v-bind:propiedad="propiedad"
        ></property-adjudication>
      </div>
      <div class="md-layout-item md-medium-size-100 md-size-33">
        <property-value
          v-bind:data-background-color="headerBackground"
          v-bind:propiedad="propiedad"
        ></property-value>
        <property-client
          v-bind:data-background-color="headerBackground"
          v-bind:cliente="cliente"
          v-bind:propiedad="propiedad"
        ></property-client>
      </div>

      <div class="md-layout-item md-medium-size-100 md-size-66">
        <image-loader
          title="Fotos de la propiedad"
          v-bind:data-background-color="headerBackground"
          v-bind:images="imagenes"
          v-bind:preUploadedImages="preUploadedImages"
          v-bind:isUpdating="isUpdating"
        ></image-loader>
      </div>
      <div class="md-layout-item md-medium-size-100 md-size-33">
        <property-save
          v-bind:data-background-color="headerBackground"
          v-bind:propiedad="propiedad"
          @add="addProperty"
          @update="updateProperty"
          v-bind:isUpdating="isUpdating"
        ></property-save>
      </div>
    </div>
  </div>
</template>

<script>
import {
  PropertyDetails,
  PropertyAddress,
  PropertyAdjudication,
  PropertyValue,
  PropertyClient,
  PropertySave
} from "../components/Layout/Property";

import { mixins } from "../helpers/mixins";
import ImageLoader from "../components/ImageLoader/ImageLoader";
import BaseApiService from "@/services/Base";

// `fecha_cambio_estado` date DEFAULT NULL, recordar cambiar la fecha al actualizar si cambia
export default {
  data() {
    return {
      propiedad: {},
      cliente: {},
      imagenes: [],
      preUploadedImages: [],
      direccion: {},
      headerBackground: "green",
      propiedadService: new BaseApiService("propiedad"),
      direccionService: new BaseApiService("direccion"),
      personaService: new BaseApiService("persona"),
      imagenes_propiedadService: new BaseApiService("imagenes_propiedad"),
      isUpdating: false,
      originalPropertyState: 0
    };
  },
  methods: {
    async addProperty() {
      let propiedad = Object.assign({}, this.propiedad);

      if (!this.checkRequiredFiles()) {
        this.showError("Los campos con * son requeridos");
        return;
      }

      if (!this.checkAreas()) {
        this.showError(
          "El area contruida no puede ser mayor a el area de la propiedad"
        );
        return;
      }

      // Change the date format before save the property
      propiedad = this.formatDates(propiedad);

      // Add the client if exists
      if (
        this.cliente.cedula ||
        this.cliente.nombre ||
        this.cliente.apellido1 ||
        this.cliente.apellido2 ||
        this.cliente.email
      ) {
        if (!this.validateEmail(this.cliente.email) && this.cliente.email) {
          this.showError("Email del cliente no es válido");
          return;
        }
        let resultClient = await this.personaService.add(this.cliente);
        propiedad.cliente_id = resultClient.data.id;
      }

      this.direccion.fecha_creacion = this.getDate();

      // Add the property address
      let resultDireccion = await this.direccionService.add(this.direccion);

      if (resultDireccion.data.success) {
        propiedad.direccion_id = resultDireccion.data.id;
      } else {
        this.showError(
          "Error al agregar la direccion " + resultDireccion.data.error
        );
        return;
      }

      // Creation date
      propiedad.fecha_cambio_estado = this.getDate();

      // Add the property
      let result = await this.propiedadService.add(propiedad);

      if (result.data.success) {
        let imagenesPropiedad = await this.addImages(result.data.id);
        this.showInfo("Propiedad agregada con éxito");
        this.resetProperty();
      } else {
        this.showError("Error al agregar la propiedad " + result.data.error);
        return;
      }
    },
    async updateProperty() {
      let propiedad = Object.assign({}, this.propiedad);

      if (!this.checkRequiredFiles()) {
        this.showError("Los campos con * son requeridos");
        return;
      }

      if (!this.checkAreas()) {
        this.showError(
          "El area contruida no puede ser mayor a el area de la propiedad"
        );
        return;
      }

      if (
        this.cliente.cedula ||
        this.cliente.nombre ||
        this.cliente.apellido1 ||
        this.cliente.apellido2 ||
        this.cliente.email
      ) {
        if (!this.validateEmail(this.cliente.email) && this.cliente.email) {
          this.showError("Email del cliente no es válido");
          return;
        }

        // update client data
        if (propiedad.cliente_id) {
          // update cliente
          let resultClient = await this.personaService.update(
            propiedad.cliente_id,
            this.cliente
          );
          propiedad.cliente_id = resultClient.data.id;
        } else {
          // Add a new client
          let resultClient = await this.personaService.add(this.cliente);
          propiedad.cliente_id = resultClient.data.id;
        }
      }

      // update address data
      if (propiedad.direccion_id) {
        let resultAddress = await this.direccionService.update(
          propiedad.direccion_id,
          this.direccion
        );
      }

      if (this.originalPropertyState !== propiedad.propiedad_estado_id) {
        propiedad.fecha_cambio_estado = this.getDate();
      }

      // Change the date format before save the property
      propiedad = this.formatDates(propiedad);

      // Edit the the property
      let result = await this.propiedadService.update(propiedad.id, propiedad);

      if (result.data.success) {
        this.showInfo("Propiedad actualizada con éxito");
      } else {
        this.showError(
          "Error al actualizada la propiedad " + result.data.error
        );
        return;
      }
    },
    checkRequiredFiles() {
      if (
        this.propiedad.folio &&
        this.propiedad.plano &&
        this.propiedad.area &&
        this.propiedad.area_construida
      ) {
        return true;
      } else {
        return false;
      }
    },
    checkAreas() {
      return (
        parseInt(this.propiedad.area_construida) <=
        parseInt(this.propiedad.area)
      );
    },
    initProperty() {
      this.propiedad = {
        sociedad_id: 0,
        mostrar: "1",
        propiedad_tipo_id: 0,
        departamento_origen_id: 0,
        propiedad_estado_id: 0,
        precio_captura: 0,
        fecha_captura: null,
        id_interno: "",
        folio: "",
        plano: "",
        unidad: "",
        fecha_inscripcion_registro_publico: null,
        fecha_construccion: null,
        area: "",
        area_construida: "",
        comentarios: "",
        precio_prestamo: 0,
        fecha_prestamo: null,
        provision_regulatoria: 0,
        porcentaje_reserva: 0,
        expediente_entregados_cobro: 0,
        llaves_entregadas: 0,
        llaves_tenemos: 0,
        fecha_entregados_cobro: null,
        fecha_llaves_entregadas: null,
        fecha_recibo_expediente: null,
        valor_libros: 0,
        valor_avaluo: 0,
        precio_venta: 0,
        se_financia: 0,
        dato_adjudicacion: "",
        anotaciones_especiales: "",
        destacada: 0
      };
    },
    resetProperty() {
      this.propiedad.mostrar = "1";
      this.propiedad.fecha_captura = null;
      this.propiedad.id_interno = "";
      this.propiedad.folio = "";
      this.propiedad.plano = "";
      this.propiedad.unidad = "";
      this.propiedad.fecha_inscripcion_registro_publico = null;
      this.propiedad.fecha_construccion = null;
      this.propiedad.area = "";
      this.propiedad.area_construida = "";
      this.propiedad.comentarios = "";
      this.propiedad.precio_prestamo = 0;
      this.propiedad.fecha_prestamo = null;
      this.propiedad.provision_regulatoria = 0;
      this.propiedad.porcentaje_reserva = 0;
      this.propiedad.expediente_entregados_cobro = 0;
      this.propiedad.llaves_entregadas = 0;
      this.propiedad.llaves_tenemos = 0;
      this.propiedad.fecha_entregados_cobro = null;
      this.propiedad.fecha_llaves_entregadas = null;
      this.propiedad.fecha_recibo_expediente = null;
      this.propiedad.valor_libros = 0;
      this.propiedad.valor_avaluo = 0;
      this.propiedad.precio_venta = 0;
      this.propiedad.dato_adjudicacion = "";
      this.propiedad.anotaciones_especiales = "";
    },
    async loadPropertyData() {
      let params = {
        args: "id:" + this.$route.params.property_id,
        orderBy: "id",
        sortOrder: "asc"
      };

      let propertyData = (await this.propiedadService.find(params)).data[0];

      this.originalPropertyState = propertyData.propiedad_estado_id;

      propertyData.fecha_avaluo = this.tolocalDateFormat(
        propertyData.fecha_avaluo
      );
      propertyData.fecha_cambio_estado = this.tolocalDateFormat(
        propertyData.fecha_cambio_estado
      );
      propertyData.fecha_captura = this.tolocalDateFormat(
        propertyData.fecha_captura
      );
      propertyData.fecha_construccion = this.tolocalDateFormat(
        propertyData.fecha_construccion
      );
      propertyData.fecha_entregados_cobro = this.tolocalDateFormat(
        propertyData.fecha_entregados_cobro
      );
      propertyData.fecha_inscripcion_registro_publico = this.tolocalDateFormat(
        propertyData.fecha_inscripcion_registro_publico
      );
      propertyData.fecha_llaves_entregadas = this.tolocalDateFormat(
        propertyData.fecha_llaves_entregadas
      );
      propertyData.fecha_prestamo = this.tolocalDateFormat(
        propertyData.fecha_prestamo
      );
      propertyData.fecha_recibo_expediente = this.tolocalDateFormat(
        propertyData.fecha_recibo_expediente
      );

      propertyData.llaves_tenemos = this.booleanToString(
        propertyData.llaves_tenemos
      );
      propertyData.llaves_entregadas = this.booleanToString(
        propertyData.llaves_entregadas
      );
      propertyData.expediente_entregados_cobro = this.booleanToString(
        propertyData.expediente_entregados_cobro
      );
      propertyData.se_financia = this.booleanToString(propertyData.se_financia);
      propertyData.mostrar = this.booleanToString(propertyData.mostrar);
      propertyData.destacada = this.booleanToString(propertyData.destacada);

      this.propiedad = Object.assign({}, propertyData);

      // load client data
      if (this.propiedad.cliente_id) {
        this.getClientData(this.propiedad.cliente_id);
      }

      // load address data
      if (this.propiedad.direccion_id) {
        this.getAddressData(this.propiedad.direccion_id);
      }

      this.getPropertyImages(this.propiedad.id);
      this.isUpdating = true;
    },
    async getClientData(clientId) {
      let params = {
        args: "id:" + clientId,
        orderBy: "id",
        sortOrder: "asc"
      };

      let clientData = (await this.personaService.find(params)).data[0];
      this.cliente = clientData;
    },
    async getAddressData(addressId) {
      let params = {
        args: "id:" + addressId,
        orderBy: "id",
        sortOrder: "asc"
      };

      let addressData = (await this.direccionService.find(params)).data[0];
      this.direccion = addressData;
    },
    async getPropertyImages(propertyId) {
      let params = {
        args: "propiedad_id:" + propertyId,
        orderBy: "id",
        sortOrder: "asc"
      };
      let result = (await this.imagenes_propiedadService.find(params)).data;
      if (!result.error) {
        this.preUploadedImages = result;
      }
    },
    async addImage(image) {
      return await this.imagenes_propiedadService.add(image);
    },
    // removes image from the property
    async removeImage(imageUrl) {
      let params = "url=" + imageUrl;
      let result = await this.imagenes_propiedadService.delete(params);
    },
    async addImages(propertyId) {
      const results = [];
      let propertyImage = {};
      this.imagenes.forEach(imagen => {
        propertyImage.propiedad_id = propertyId;
        propertyImage.url = imagen.serverName;
        propertyImage.size = imagen.fileSize;
        results.push(this.addImage(propertyImage));
      });
      return await Promise.all(results);
    },
    async linkImage(filename, size) {
      let image = {};
      image.propiedad_id = this.propiedad.id;
      image.url = filename;
      image.size = size;
      let result = await this.imagenes_propiedadService.add(image);
    }
  },
  async mounted() {
    this.initProperty();
    if (this.$route.params.property_id) {
      this.loadPropertyData();
    } else {
      this.direccion = {};
    }
  },
  components: {
    PropertyDetails,
    PropertyAddress,
    PropertyAdjudication,
    PropertyValue,
    PropertyClient,
    PropertySave,
    ImageLoader
  },
  mixins: [mixins]
};
</script>
