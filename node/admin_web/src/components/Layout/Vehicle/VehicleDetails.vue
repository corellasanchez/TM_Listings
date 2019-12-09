<template>
    <form>
        <md-card class="propertyDetails">
            <md-card-header :data-background-color="dataBackgroundColor">
                <h4 class="title">Detalles del Vehículo</h4>
            </md-card-header>
            <md-card-content>
                <div class="md-layout md-gutter">
                    <div class="md-layout-item md-small-size-100 md-size-50">
                        <md-field>
                            <label for="sociedad_id">Sociedad</label>
                            <md-select v-model="vehiculo.sociedad_id" name="sociedad_id" id="sociedad_id">
                                <md-option v-for="i in sociedades" :value="i.id" :key="i.id">{{ i.nombre }}</md-option>
                            </md-select>
                        </md-field>
                    </div>
    
                    <div class="md-layout-item md-small-size-100 md-size-50">
                        <md-field>
                            <label for="estado_id">Estado</label>
                            <md-select v-model="vehiculo.estado_id" name="estado_id" id="estado_id">
                                <md-option v-for="i in estadosVehiculo" :value="i.id" :key="i.id">{{ i.nombre }}</md-option>
                            </md-select>
                            <span class="md-helper-text" v-if="vehiculo.fecha_cambio_estado">Última actulización {{vehiculo.fecha_cambio_estado}}</span>
                        </md-field>
                    </div>
                </div>
                <div class="md-layout md-gutter">
                    <div class="md-layout-item md-small-size-100 md-size-33">
                        <md-field>
                            <label for="vehiculo_tipo_id">Tipo de Vehículo</label>
                            <md-select v-model="vehiculo.vehiculo_tipo_id" name="vehiculo_tipo_id" id="vehiculo_tipo_id" @md-selected="tiposVehiculoChanged()">
                                <md-option v-for="i in tiposVehiculo" :value="i.id" :key="i.id">{{ i.nombre }}</md-option>
                            </md-select>
                        </md-field>
                    </div>
                    <div class="md-layout-item md-small-size-100 md-size-33">
                        <md-field>
                            <label for="vehiculo_estilo_id">Estilo del Vehículo</label>
                            <md-select v-model="vehiculo.vehiculo_estilo_id" name="vehiculo_estilo_id" id="vehiculo_estilo_id">
                                <md-option v-for="i in estilosVehiculo" :value="i.id" :key="i.id">{{ i.nombre }}</md-option>
                            </md-select>
                        </md-field>
                    </div>
                    <div class="md-layout-item md-small-size-100 md-size-33">
                        <md-field>
                            <label for="vehiculo_estilo_id">Marca</label>
                            <md-select v-model="vehiculo.vehiculo_marca_id" name="vehiculo_marca_id" id="vehiculo_marca_id">
                                <md-option v-for="i in marcasVehiculo" :value="i.id" :key="i.id">{{ i.nombre }}</md-option>
                            </md-select>
                        </md-field>
                    </div>
                </div>
    
                <div class="md-layout md-gutter">
                    <div class="md-layout-item md-small-size-100 md-size-50">
                        <md-field>
                            <label for="sociedad_id">Combustible</label>
                            <md-select v-model="vehiculo.vehiculo_combustible_id" name="vehiculo_combustible_id" id="vehiculo_combustible_id">
                                <md-option v-for="i in combustibles" :value="i.id" :key="i.id">{{ i.nombre }}</md-option>
                            </md-select>
                        </md-field>
                    </div>
    
                    <div class="md-layout-item md-small-size-100 md-size-50">
                        <md-field>
                            <label for="estado_id">Transmisión</label>
                            <md-select v-model="vehiculo.vehiculo_transmision_id" name="vehiculo_transmision_id" id="vehiculo_transmision_id">
                                <md-option v-for="i in transmisiones" :value="i.id" :key="i.id">{{ i.nombre }}</md-option>
                            </md-select>
                        </md-field>
                    </div>
                </div>
                <div class="md-layout md-gutter">
                    <div class="md-layout-item md-small-size-100 md-size-33">
                        <md-field :md-counter="false">
                            <label># Referencia</label>
                            <md-input v-model="vehiculo.id_interno" maxlength="99"></md-input>
                        </md-field>
                    </div>
                    <div class="md-layout-item md-small-size-100 md-size-33">
                        <md-field :md-counter="false">
                            <label>Folio</label>
                            <md-input v-model="vehiculo.folio" required maxlength="99"></md-input>
                        </md-field>
                    </div>
                    <div class="md-layout-item md-small-size-100 md-size-33">
                        <md-field :md-counter="false">
                            <label># Plano</label>
                            <md-input v-model="vehiculo.plano" required maxlength="99"></md-input>
                        </md-field>
                    </div>
                </div>
    
                <div class="md-layout md-gutter">
                    <div class="md-layout-item md-small-size-100 md-size-50">
                        <md-datepicker v-model="vehiculo.fecha_inscripcion_registro_publico" md-immediately>
                            <label>Fecha de inscripcion</label>
                        </md-datepicker>
                    </div>
                    <div class="md-layout-item md-small-size-100 md-size-50">
                        <md-datepicker v-model="vehiculo.fecha_construccion" md-immediately>
                            <label>Fecha de Construcción</label>
                        </md-datepicker>
                    </div>
                </div>
                <div class="md-layout md-gutter">
                    <div class="md-layout-item md-small-size-100 md-size-50">
                        <md-field>
                            <label>Metraje de la propiedad</label>
                            <md-input v-model="vehiculo.area" required type="number"></md-input>
                        </md-field>
                    </div>
                    <div class="md-layout-item md-small-size-100 md-size-50">
                        <md-field>
                            <label>Metraje de la construcción</label>
                            <md-input v-model="vehiculo.area_construida" required type="number"></md-input>
                        </md-field>
                    </div>
                </div>
    
                <div class="md-layout md-gutter">
                    <div class="md-layout-item md-small-size-100 md-size-100">
                        <md-field>
                            <label>Comentarios</label>
                            <md-textarea v-model="vehiculo.comentarios" md-autogrow maxlength="1000"></md-textarea>
                        </md-field>
                    </div>
                </div>
            </md-card-content>
        </md-card>
    </form>
</template>

<script>
import BaseApiService from "@/services/Base";

const { LOCALE } = require("../../../config");

export default {
    name: "vehicle-details",
    props: {
        dataBackgroundColor: {
            type: String,
            default: ""
        },
        isUpdating: {
            type: Boolean,
            default: false
        },
        vehiculo: {}
    },
    data() {
        return {
            sociedades: null,
            tiposVehiculo: null,
            estadosVehiculo: null,
            estilosVehiculo: null,
            marcasVehiculo: null,
            combustibles: null,
            transmisiones: null,
            sociedadService: new BaseApiService("sociedad"),
            tiposVehiculoService: new BaseApiService("vehiculo_tipo"),
            estadosVehiculoService: new BaseApiService("estado"),
            estilosVehiculoService: new BaseApiService("vehiculo_estilo"),
            marcasService: new BaseApiService("vehiculo_marca"),
            combustiblesService: new BaseApiService("vehiculo_combustible"),
            transmisionesService: new BaseApiService("vehiculo_transmision")
        };
    },
    async mounted() {
        this.getSociedades();
        this.getTiposVehiculo();
        this.getEstadosPropiedad();
        this.getCombustiblesVehiculo();
        this.getTransmisionesVehiculo();
        this.$material.locale = LOCALE;
    },
    methods: {
        async getSociedades() {
            let params = {
                args: "",
                pageSize: 100,
                currentPage: 1,
                orderBy: "nombre",
                sortOrder: "desc"
            };
            let sociedades = await this.sociedadService.list(params);
            this.sociedades = sociedades.data.data;
            if (this.sociedades && !this.isUpdating) {
                this.vehiculo.sociedad_id = this.sociedades[0].id;
            }
        },
        async getTiposVehiculo() {
            let params = {
                args: "",
                pageSize: 100,
                currentPage: 1,
                orderBy: "nombre",
                sortOrder: "asc"
            };
            let tiposVehiculo = await this.tiposVehiculoService.list(params);
            this.tiposVehiculo = tiposVehiculo.data.data;
            if (this.tiposVehiculo && !this.isUpdating) {
                this.vehiculo.vehiculo_tipo_id = this.tiposVehiculo[0].id;
            }
        },
        async getEstilosVehiculo() {
            let params = {
                args: "vehiculo_tipo_id:" + this.vehiculo.vehiculo_tipo_id,
                pageSize: 100,
                currentPage: 1,
                orderBy: "id",
                sortOrder: "asc"
            };
            let estilosVehiculo = await this.estilosVehiculoService.list(params);
            this.estilosVehiculo = estilosVehiculo.data.data;
            if (this.estilosVehiculo && !this.isUpdating) {
                this.vehiculo.vehiculo_estilo_id = this.estilosVehiculo[0].id;
            }
        },
        async getMarcasVehiculo() {
            let params = {
                args: "vehiculo_tipo_id:" + this.vehiculo.vehiculo_tipo_id,
                pageSize: 1000,
                currentPage: 1,
                orderBy: "id",
                sortOrder: "asc"
            };
            let marcasVehiculo = await this.marcasService.list(params);
            this.marcasVehiculo = marcasVehiculo.data.data;
            if (this.marcasVehiculo && !this.isUpdating) {
                this.vehiculo.vehiculo_marca_id = this.marcasVehiculo[0].id;
            }
        },
        async getCombustiblesVehiculo() {
            let params = {
                args: "",
                pageSize: 100,
                currentPage: 1,
                orderBy: "nombre",
                sortOrder: "asc"
            };
            let combustibles = await this.combustiblesService.list(params);
            this.combustibles = combustibles.data.data;
            if (this.combustibles && !this.isUpdating) {
                this.vehiculo.vehiculo_combustible_id = this.combustibles[0].id;
            }
        },
        async getTransmisionesVehiculo() {
            let params = {
                args: "",
                pageSize: 100,
                currentPage: 1,
                orderBy: "nombre",
                sortOrder: "asc"
            };
            let transmisiones = await this.transmisionesService.list(params);
            this.transmisiones = transmisiones.data.data;
            if (this.transmisiones && !this.isUpdating) {
                this.vehiculo.vehiculo_transmision_id = this.transmisiones[0].id;
            }
        },
        async getEstadosPropiedad() {
            let params = {
                args: "",
                pageSize: 100,
                currentPage: 1,
                orderBy: "nombre",
                sortOrder: "asc"
            };
            let estadosVehiculo = await this.estadosVehiculoService.list(params);
            this.estadosVehiculo = estadosVehiculo.data.data;
            if (this.estadosVehiculo && !this.isUpdating) {
                this.vehiculo.estado_id = this.estadosVehiculo[0].id;
            }
        },
        tiposVehiculoChanged() {
            if (this.vehiculo.vehiculo_tipo_id) {
                this.getEstilosVehiculo();
                this.getMarcasVehiculo();
            }
        }
    }
};
</script>

<style lang="scss">
.propertyDetails {
    min-height: 612px !important;
}
</style>
