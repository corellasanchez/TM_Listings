<template>
  <md-card>
    <md-card-header :data-background-color="dataBackgroundColor">
      <h4 class="title">Valor de la vehiculo</h4>
    </md-card-header>
    <md-card-content>
      <currency-input v-model="vehiculo.valor_libros" placeholder="Valor en Libros *"></currency-input>
      <currency-input v-model="vehiculo.precio_venta" placeholder="Precio de Venta *"></currency-input>
      <md-switch
        v-model="vehiculo.se_financia"
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
  name: "vehicle-value",
  props: {
    dataBackgroundColor: {
      type: String,
      default: ""
    },
    vehiculo: {}
  },
  async mounted() {},
  data() {
    return {};
  },
  methods: {
    switchChanged(value, nombre) {
      if (!value) {
        switch (nombre) {
          case "se_financia":
            this.vehiculo.se_financia = "0";
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
