<template>
  <md-card>
    <md-card-header :data-background-color="dataBackgroundColor">
      <h4 class="title">Valor de la propiedad</h4>
    </md-card-header>
    <md-card-content>
      <currency-input v-model="propiedad.valor_libros" placeholder="Valor en Libros"></currency-input>
      <currency-input v-model="propiedad.valor_avaluo" placeholder="Valor del avalúo"></currency-input>
      <md-datepicker v-model="propiedad.fecha_avaluo" md-immediately>
        <label>Fecha del avalúo</label>
      </md-datepicker>
      <currency-input v-model="propiedad.precio_venta" placeholder="Precio de Venta"></currency-input>
       <md-switch
      v-model="propiedad.se_financia"
      value="1"
      class="md-primary"
      @change="value => switchChanged(value,'se_financia')"
    >Financiamiento Disponible</md-switch>
    </md-card-content>
  </md-card>
</template>
<script>
import CurrencyInput from "../../Currency/CurrencyInput";

export default {
  name: "property-value",
  props: {
    dataBackgroundColor: {
      type: String,
      default: ""
    },
    propiedad: {}
  },
  async mounted() {},
  data() {
    return {};
  },
  methods: {},
  components: {
    CurrencyInput
  }
};
</script>
<style></style>
