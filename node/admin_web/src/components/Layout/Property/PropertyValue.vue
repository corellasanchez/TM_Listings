<template>
  <md-card>
    <md-card-header :data-background-color="dataBackgroundColor">
      <h4 class="title">Valor de la propiedad</h4>
    </md-card-header>
    <md-card-content>
      <md-field>
        <label>Valor en Libros</label>
        <md-input v-model="propiedad.valor_libros" type="number"></md-input>
      </md-field>
      <md-field>
        <label>Valor del avalúo</label>
        <md-input v-model="propiedad.valor_avaluo" type="number"></md-input>
      </md-field>
      <md-datepicker v-model="propiedad.fecha_avaluo" md-immediately>
        <label>Fecha del avalúo</label>
      </md-datepicker>
      <md-field>
        <label>Precio de Venta</label>
        <md-input v-model="propiedad.precio_venta" type="number"></md-input>
      </md-field>
    </md-card-content>
  </md-card>
</template>
<script>
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
  methods: {}
};
</script>
<style></style>
