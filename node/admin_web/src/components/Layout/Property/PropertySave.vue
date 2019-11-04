<template>
  <md-card class="saveProperty">
    <md-card-header :data-background-color="dataBackgroundColor">
      <h4 class="title">Guardar Cambios</h4>
    </md-card-header>
    <md-card-content class="saveContent">
      <md-button class="md-raised md-primary saveButton">
         <md-icon>save</md-icon>Guardar Propiedad</md-button>
    </md-card-content>
  </md-card>
</template>
<script>
export default {
  name: "property-save",
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
  components: {}
};
</script>
<style lang="scss">

.saveButton{
width: 100%;
min-height: 60px;
font-size: 1.1rem !important;
}
.saveProperty{
  min-height: 236px;
}
.saveContent{
  padding-top:46px !important; 
}
</style>
