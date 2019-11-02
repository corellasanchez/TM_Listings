<template>
  <form>
    <md-card>
      <md-card-header :data-background-color="dataBackgroundColor">
        <h4 class="title">Datos de la adjudicacíon</h4>
      </md-card-header>
      <md-card-content>
        <div class="md-layout md-gutter">
          <div class="md-layout-item md-small-size-100 md-size-50">
            <currency-input v-model="propiedad.precio_prestamo" placeholder="Precio del préstamo"></currency-input>
          </div>
          <div class="md-layout-item md-small-size-100 md-size-50">
            <md-datepicker v-model="propiedad.fecha_prestamo" md-immediately>
              <label>Fecha del Prestamo</label>
            </md-datepicker>
          </div>
        </div>
        <div class="md-layout md-gutter">
          <div class="md-layout-item md-small-size-100 md-size-50">
            <currency-input v-model="propiedad.precio_captura" placeholder="Precio de captura"></currency-input>
          </div>
          <div class="md-layout-item md-small-size-100 md-size-50">
            <md-datepicker v-model="propiedad.fecha_captura" md-immediately>
              <label>Fecha de Captura</label>
            </md-datepicker>
          </div>
        </div>

        <div class="md-layout md-gutter">
          <div class="md-layout-item md-small-size-100 md-size-50">
            <currency-input
              v-model="propiedad.provision_regulatoria"
              placeholder="Provisión Regulatoria"
            ></currency-input>
          </div>
          <div class="md-layout-item md-small-size-100 md-size-50">
            <currency-input
              v-model="propiedad.porcentaje_reserva"
              placeholder="Porcentaje de reserva"
            ></currency-input>
          </div>
        </div>

        <div class="md-layout md-gutter">
          <div class="md-layout-item md-small-size-100 md-size-50">
            <md-switch
              v-model="propiedad.expediente_entregados_cobro"
              value="1"
              class="md-primary"
              @change="value => switchChanged(value,'expediente_entregados_cobro')"
            >Expedientes entregados cobro</md-switch>
          </div>
          <div class="md-layout-item md-small-size-100 md-size-50">
            <md-datepicker v-model="propiedad.fecha_entregados_cobro" md-immediately>
              <label>Fecha de expedientes entregados cobro</label>
            </md-datepicker>
          </div>
        </div>

        <div class="md-layout md-gutter">
          <div class="md-layout-item md-small-size-100 md-size-50">
            <md-switch
              v-model="propiedad.llaves_entregadas"
              value="1"
              class="md-primary"
              @change="value => switchChanged(value,'llaves_entregadas')"
            >Laves Entregadas</md-switch>
          </div>
          <div class="md-layout-item md-small-size-100 md-size-50">
            <md-datepicker v-model="propiedad.fecha_llaves_entregadas" md-immediately>
              <label>Fecha de entrega de las llaves</label>
            </md-datepicker>
          </div>
        </div>
        <div class="md-layout md-gutter">
          <div class="md-layout-item md-small-size-100 md-size-50">
            <md-switch
              v-model="propiedad.llaves_tenemos"
              value="1"
              class="md-primary"
              @change="value => switchChanged(value,'llaves_tenemos')"
            >Laves Tenemos</md-switch>
          </div>
          <div class="md-layout-item md-small-size-100 md-size-50">
            <md-datepicker v-model="propiedad.fecha_recibo_expediente" md-immediately>
              <label>Fecha de recibo de expediente</label>
            </md-datepicker>
          </div>
        </div>

        <div class="md-layout md-gutter">
          <div class="md-layout-item md-small-size-100 md-size-100">
            <md-field>
              <label>Dato de adjudicación</label>
              <md-textarea v-model="propiedad.dato_adjudicacion" md-autogrow maxlength="255"></md-textarea>
            </md-field>
          </div>
        </div>

        <div class="md-layout md-gutter">
          <div class="md-layout-item md-small-size-100 md-size-100">
            <md-field>
              <label>Anotaciones Especiales</label>
              <md-textarea v-model="propiedad.anotaciones_especiales" md-autogrow maxlength="1000"></md-textarea>
            </md-field>
          </div>
        </div>
        <br />
        <br />
        <md-divider></md-divider>
        <br />

        <label>Datos del cliente al que pertenecia la propiedad</label>
        <div class="md-layout md-gutter">
          <div class="md-layout-item md-small-size-100 md-size-33">
            <md-field :md-counter="false">
              <label>Nombre</label>
              <md-input v-model="propiedad.cliente.nombre" maxlength="99"></md-input>
            </md-field>
          </div>
          <div class="md-layout-item md-small-size-100 md-size-33">
            <md-field :md-counter="false">
              <label>Apellido</label>
              <md-input v-model="propiedad.cliente.apellido1" maxlength="99"></md-input>
            </md-field>
          </div>
          <div class="md-layout-item md-small-size-100 md-size-33">
            <md-field :md-counter="false">
              <label>Segundo apellido</label>
              <md-input v-model="propiedad.cliente.apellido2" maxlength="99"></md-input>
            </md-field>
          </div>
          <div class="md-layout-item md-small-size-100 md-size-33">
            <md-field :md-counter="false">
              <label>Email</label>
              <md-input v-model="propiedad.cliente.email" maxlength="255" type="email"></md-input>
            </md-field>
          </div>
          <div class="md-layout-item md-small-size-100 md-size-33">
            <md-field :md-counter="false">
              <label>Cédula</label>
              <md-input v-model="propiedad.cliente.cedula" maxlength="50"></md-input>
            </md-field>
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
  name: "property-adjudication",
  props: {
    dataBackgroundColor: {
      type: String,
      default: ""
    },
    propiedad: {}
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
            this.propiedad.expediente_entregados_cobro = "0";
            break;
          case "llaves_tenemos":
            this.propiedad.llaves_tenemos = "0";
            break;
          case "llaves_entregadas":
            this.propiedad.llaves_entregadas = "0";
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
<style></style>
