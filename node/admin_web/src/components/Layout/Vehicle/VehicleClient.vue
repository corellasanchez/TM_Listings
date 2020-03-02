<template>
  <form>
    <md-card class="vehicleClient">
      <md-card-header :data-background-color="dataBackgroundColor">
        <h4 class="title">Datos del Cliente</h4>
      </md-card-header>
      <md-card-content>
        <label>Datos del cliente al que pertenecia el vehículo</label>
        <md-field :md-counter="false">
          <label>Cédula</label>
          <md-input v-model="cliente.cedula" maxlength="50"></md-input>
        </md-field>

        <md-field :md-counter="false">
          <label>Nombre</label>
          <md-input v-model="cliente.nombre" maxlength="99"></md-input>
        </md-field>

        <md-field :md-counter="false">
          <label>Apellido</label>
          <md-input v-model="cliente.apellido1" maxlength="99"></md-input>
        </md-field>

        <md-field :md-counter="false">
          <label>Segundo apellido</label>
          <md-input v-model="cliente.apellido2" maxlength="99"></md-input>
        </md-field>

        <md-field :md-counter="false">
          <label>Email</label>
          <md-input v-model="cliente.email" maxlength="255" type="email"></md-input>
        </md-field>
      </md-card-content>
    </md-card>
  </form>
</template>
<script>
export default {
  name: "vehicle-client",
  props: {
    dataBackgroundColor: {
      type: String,
      default: ""
    },
    cliente: {},
    propiedad: {}
  },
  data() {
    return {};
  },
  async mounted() {
  },
  methods: {},
  components: {}
};
</script>
<style lang="scss">
.vehicleClient {
    min-height: 632px !important;
}
</style>
