<template>
  <div class="content">
    <div class="md-layout">
      <div class="md-layout-item md-medium-size-100 md-size-66">
        <property-details
          v-bind:data-background-color="headerBackground"
          v-bind:propiedad="propiedad"
        ></property-details>
      </div>
      <div class="md-layout-item md-medium-size-100 md-size-33">
        <property-address
          v-bind:data-background-color="headerBackground"
          v-bind:direccion="direccion"
          v-bind:propiedad="propiedad"
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
        ></property-client>
      </div>

      <div class="md-layout-item md-medium-size-100 md-size-66">
        <image-loader
          title="Fotos de la propiedad"
          v-bind:data-background-color="headerBackground"
          v-bind:images="imagenes"
        ></image-loader>
      </div>
      <div class="md-layout-item md-medium-size-100 md-size-33">
        <property-save
          v-bind:data-background-color="headerBackground"
          v-bind:propiedad="propiedad"
          @save="addProperty"
        ></property-save>
      </div>
      <pre>{{propiedad}}</pre>
      <pre>{{direccion}}</pre>
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

import ImageLoader from "../components/ImageLoader/ImageLoader";
import BaseApiService from "@/services/Base";

// `fecha_cambio_estado` date DEFAULT NULL, recordar cambiar la fecha al actualizar si cambia
export default {
  data() {
    return {
      propiedad: {
        mostrar: "1",
        direccion_id: 101
      },
      cliente: {},
      imagenes: [],
      direccion: {},
      headerBackground: "green",
      propiedadService: new BaseApiService("propiedad")
    };
  },
  methods: {
    async addProperty() {
      let result = await this.propiedadService.add(this.propiedad);
      console.log(result);
      if (result.data.error) {
        return this.$notify({
          message: `${result.data.error}`,
          icon: "add_alert",
          horizontalAlign: "right",
          verticalAlign: "bottom",
          type: "danger"
        });
      }
    },
    initAddress() {
      this.direccion = {
        pais_id: 0,
        provincia_id: 0,
        distrito_id: 0,
        corregimiento_id: 0,
        detalle: ""
      };
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
        expediente_entregados_cobro: "",
        llaves_entregadas: "",
        llaves_tenemos: "",
        fecha_entregados_cobro: null,
        fecha_llaves_entregadas: null,
        fecha_recibo_expediente: null,
        valor_libros: 0,
        valor_avaluo: 0,
        precio_venta: 0,
        se_financia: "",
        dato_adjudicacion: "",
        anotaciones_especiales: "",
        destacada: ""
      };
    }
  },
  async mounted() {
    // this.initProperty();
  },
  components: {
    PropertyDetails,
    PropertyAddress,
    PropertyAdjudication,
    PropertyValue,
    PropertyClient,
    PropertySave,
    ImageLoader
  }
};
</script>
