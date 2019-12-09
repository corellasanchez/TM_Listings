<template>
    <div class="content">
        <div class="md-layout">
            <div class="md-layout-item md-medium-size-100 md-size-66">
                <vehicle-details v-bind:data-background-color="headerBackground" v-bind:vehiculo="vehiculo" v-bind:isUpdating="isUpdating"></vehicle-details>
            </div>
            <!-- <div class="md-layout-item md-medium-size-100 md-size-33">
                <vehicle-value v-bind:data-background-color="headerBackground" v-bind:vehiculo="vehiculo"></vehicle-value>
                <vehicle-client v-bind:data-background-color="headerBackground" v-bind:cliente="cliente" v-bind:vehiculo="vehiculo"></vehicle-client>
            </div> -->
            <!-- <div class="md-layout-item md-medium-size-100 md-size-66">
                <image-loader title="Fotos de la vehiculo" v-bind:data-background-color="headerBackground" v-bind:images="imagenes" v-bind:preUploadedImages="preUploadedImages" v-bind:isUpdating="isUpdating"></image-loader>
            </div> -->
            <!-- <div class="md-layout-item md-medium-size-100 md-size-33">
                <vehicle-save v-bind:data-background-color="headerBackground" v-bind:vehiculo="vehiculo" @add="addProperty" @update="updateProperty" v-bind:isUpdating="isUpdating"></vehicle-save>
            </div> -->
        </div>
    </div>
</template>

<script>
import {
    VehicleDetails,
    VehicleValue,
    VehicleClient,
    VehicleSave
} from "../components/Layout/Vehicle";

import { mixins } from "../helpers/mixins";
import ImageLoader from "../components/ImageLoader/ImageLoader";
import BaseApiService from "@/services/Base";

// `fecha_cambio_estado` date DEFAULT NULL, recordar cambiar la fecha al actualizar si cambia
export default {
    data() {
        return {
            vehiculo: {},
            cliente: {},
            imagenes: [],
            preUploadedImages: [],
            direccion: {},
            headerBackground: "blue",
            vehiculoService: new BaseApiService("vehiculo"),
            direccionService: new BaseApiService("direccion"),
            personaService: new BaseApiService("persona"),
            imagenes_vehiculoService: new BaseApiService("imagenes_vehiculo"),
            isUpdating: false,
            originalPropertyState: 0
        };
    },
    methods: {
        async addProperty() {
            let vehiculo = Object.assign({}, this.vehiculo);

            if (!this.checkRequiredFiles()) {
                this.showError("Los campos con * son requeridos");
                return;
            }

            if (!this.checkAreas()) {
                this.showError(
                    "El area contruida no puede ser mayor a el area de la vehiculo"
                );
                return;
            }

            // Change the date format before save the property
            vehiculo = this.formatDates(vehiculo);

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
                vehiculo.cliente_id = resultClient.data.id;
            }

            this.direccion.fecha_creacion = this.getDate();

            // Add the property address
            let resultDireccion = await this.direccionService.add(this.direccion);

            if (resultDireccion.data.success) {
                vehiculo.direccion_id = resultDireccion.data.id;
            } else {
                this.showError(
                    "Error al agregar la direccion " + resultDireccion.data.error
                );
                return;
            }

            // Creation date
            vehiculo.fecha_cambio_estado = this.getDate();

            // Add the property
            let result = await this.vehiculoService.add(vehiculo);

            if (result.data.success) {
                let imagenesPropiedad = await this.addImages(result.data.id);
                this.showInfo("Propiedad agregada con éxito");
                this.resetProperty();
            } else {
                this.showError("Error al agregar la vehiculo " + result.data.error);
                return;
            }
        },

        async updateProperty() {
            let vehiculo = Object.assign({}, this.vehiculo);

            if (!this.checkRequiredFiles()) {
                this.showError("Los campos con * son requeridos");
                return;
            }

            if (!this.checkAreas()) {
                this.showError(
                    "El area contruida no puede ser mayor a el area de la vehiculo"
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
                if (vehiculo.cliente_id) {
                    // update cliente
                    let resultClient = await this.personaService.update(
                        vehiculo.cliente_id,
                        this.cliente
                    );
                    vehiculo.cliente_id = resultClient.data.id;
                } else {
                    // Add a new client
                    let resultClient = await this.personaService.add(this.cliente);
                    vehiculo.cliente_id = resultClient.data.id;
                }
            }

            // update address data
            if (vehiculo.direccion_id) {
                let resultAddress = await this.direccionService.update(
                    vehiculo.direccion_id,
                    this.direccion
                );
            }

            if (this.originalPropertyState !== vehiculo.vehiculo_estado_id) {
                vehiculo.fecha_cambio_estado = this.getDate();
            }

            // Change the date format before save the property
            vehiculo = this.formatDates(vehiculo);

            // Edit the the property
            let result = await this.vehiculoService.update(vehiculo.id, vehiculo);

            if (result.data.success) {
                this.showInfo("Propiedad actualizada con éxito");
            } else {
                this.showError(
                    "Error al actualizada la vehiculo " + result.data.error
                );
                return;
            }
        },

        checkRequiredFiles() {
            if (
                this.vehiculo.folio &&
                this.vehiculo.plano &&
                this.vehiculo.area &&
                this.vehiculo.area_construida
            ) {
                return true;
            } else {
                return false;
            }
        },
        checkAreas() {
            return (
                parseInt(this.vehiculo.area_construida) <=
                parseInt(this.vehiculo.area)
            );
        },
        initProperty() {
            this.vehiculo = {
                sociedad_id: 0,
                mostrar: "1",
                vehiculo_tipo_id: 0,
                departamento_origen_id: 0,
                vehiculo_estado_id: 0,
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
            this.vehiculo.mostrar = "1";
            this.vehiculo.fecha_captura = null;
            this.vehiculo.id_interno = "";
            this.vehiculo.folio = "";
            this.vehiculo.plano = "";
            this.vehiculo.unidad = "";
            this.vehiculo.fecha_inscripcion_registro_publico = null;
            this.vehiculo.fecha_construccion = null;
            this.vehiculo.area = "";
            this.vehiculo.area_construida = "";
            this.vehiculo.comentarios = "";
            this.vehiculo.precio_prestamo = 0;
            this.vehiculo.fecha_prestamo = null;
            this.vehiculo.provision_regulatoria = 0;
            this.vehiculo.porcentaje_reserva = 0;
            this.vehiculo.expediente_entregados_cobro = 0;
            this.vehiculo.llaves_entregadas = 0;
            this.vehiculo.llaves_tenemos = 0;
            this.vehiculo.fecha_entregados_cobro = null;
            this.vehiculo.fecha_llaves_entregadas = null;
            this.vehiculo.fecha_recibo_expediente = null;
            this.vehiculo.valor_libros = 0;
            this.vehiculo.valor_avaluo = 0;
            this.vehiculo.precio_venta = 0;
            this.vehiculo.dato_adjudicacion = "";
            this.vehiculo.anotaciones_especiales = "";
        },
        async loadPropertyData() {
            let params = {
                args: "id:" + this.$route.params.property_id,
                orderBy: "id",
                sortOrder: "asc"
            };

            let propertyData = (await this.vehiculoService.find(params)).data[0];

            this.originalPropertyState = propertyData.vehiculo_estado_id;

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

            this.vehiculo = Object.assign({}, propertyData);

            // load client data
            if (this.vehiculo.cliente_id) {
                this.getClientData(this.vehiculo.cliente_id);
            }

            // load address data
            if (this.vehiculo.direccion_id) {
                this.getAddressData(this.vehiculo.direccion_id);
            }

            this.getPropertyImages(this.vehiculo.id);
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
                args: "vehiculo_id:" + propertyId,
                orderBy: "id",
                sortOrder: "asc"
            };
            let result = (await this.imagenes_vehiculoService.find(params)).data;
            if (!result.error) {
                this.preUploadedImages = result;
            }
        },
        async addImage(image) {
            return await this.imagenes_vehiculoService.add(image);
        },
        // removes image from the property
        async removeImage(imageUrl) {
            let params = "url=" + imageUrl;
            let result = await this.imagenes_vehiculoService.delete(params);
        },
        async addImages(propertyId) {
            const results = [];
            let propertyImage = {};
            this.imagenes.forEach(imagen => {
                propertyImage.vehiculo_id = propertyId;
                propertyImage.url = imagen.serverName;
                propertyImage.size = imagen.fileSize;
                results.push(this.addImage(propertyImage));
            });
            return await Promise.all(results);
        },
        async linkImage(filename, size) {
            let image = {};
            image.vehiculo_id = this.vehiculo.id;
            image.url = filename;
            image.size = size;
            let result = await this.imagenes_vehiculoService.add(image);
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
        VehicleDetails,
        VehicleValue,
        VehicleClient,
        VehicleSave,
        //ImageLoader
    },
    mixins: [mixins]
};
</script>
