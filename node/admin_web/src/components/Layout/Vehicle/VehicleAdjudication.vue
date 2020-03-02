<template>
    <form>
        <md-card >
            <md-card-header :data-background-color="dataBackgroundColor">
                <h4 class="title">Datos de la adjudicacíon</h4>
            </md-card-header>
            <md-card-content>
                <div class="md-layout md-gutter">
                    <div class="md-layout-item md-small-size-100 md-size-100">
                        <currency-input v-model="vehiculo.precio_prestamo" placeholder="Precio del préstamo"></currency-input>
                    </div>
                    <div class="md-layout-item md-small-size-100 md-size-100">
                        <md-datepicker v-model="vehiculo.fecha_prestamo" md-immediately>
                            <label>Fecha del Prestamo</label>
                        </md-datepicker>
                    </div>
                </div>
                <div class="md-layout md-gutter">
                    <div class="md-layout-item md-small-size-100 md-size-100">
                        <currency-input v-model="vehiculo.precio_captura" placeholder="Precio de captura"></currency-input>
                    </div>
                    <div class="md-layout-item md-small-size-100 md-size-100">
                        <md-datepicker v-model="vehiculo.fecha_captura" md-immediately>
                            <label>Fecha de Captura</label>
                        </md-datepicker>
                    </div>
                </div>
    
    
                <div class="md-layout md-gutter">
                    <div class="md-layout-item md-small-size-100 md-size-100">
                        <md-switch v-model="vehiculo.llaves_entregadas" value="1" class="md-primary" @change="value => switchChanged(value,'llaves_entregadas')">Laves Entregadas</md-switch>
                    </div>
                    <div class="md-layout-item md-small-size-100 md-size-100">
                        <md-datepicker v-model="vehiculo.fecha_llaves_entregadas" md-immediately>
                            <label>Fecha de entrega de las llaves</label>
                        </md-datepicker>
                    </div>
                </div>
                <div class="md-layout md-gutter">
                    <div class="md-layout-item md-small-size-100 md-size-100">
                        <md-switch v-model="vehiculo.llaves_tenemos" value="1" class="md-primary" @change="value => switchChanged(value,'llaves_tenemos')">Laves Tenemos</md-switch>
                    </div>
                </div>
            </md-card-content>
        </md-card>
    </form>
</template>

<script>
const { LOCALE } = require("../../../config");
import CurrencyInput from "../../Currency/CurrencyInput";

export default {
    name: "vehicle-adjudication",
    props: {
        dataBackgroundColor: {
            type: String,
            default: ""
        },
        vehiculo: {}
    },
    data() {
        return {};
    },
    async mounted() {
        this.$material.locale = LOCALE;
    },
    methods: {
        switchChanged(value, nombre) {
            if (!value) {
                switch (nombre) {
                    case "expediente_entregados_cobro":
                        this.vehiculo.expediente_entregados_cobro = "0";
                        break;
                    case "llaves_tenemos":
                        this.vehiculo.llaves_tenemos = "0";
                        break;
                    case "llaves_entregadas":
                        this.vehiculo.llaves_entregadas = "0";
                        break;
                }
            }
        }
    },
    components: {
        CurrencyInput
    }
};
</script>

<style lang="scss">

</style>
