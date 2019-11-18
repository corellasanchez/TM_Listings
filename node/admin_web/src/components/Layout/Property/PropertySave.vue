<template>
  <md-card class="saveProperty">
    <md-card-header :data-background-color="dataBackgroundColor">
      <h4 class="title">Guardar Cambios</h4>
    </md-card-header>
    <md-card-content>
      <md-switch
        v-model="propiedad.mostrar"
        value="1"
        class="md-primary"
        @change="value => switchChanged(value,'mostrar')"
      >Mostrar al público</md-switch>

      <md-switch
        v-model="propiedad.destacada"
        value="1"
        class="md-primary"
        @change="value => switchChanged(value,'destacada')"
      >Propiedad Destacada</md-switch>

      <md-button class="md-raised md-primary saveButton" @click="save">
        <md-icon>save</md-icon>Guardar Propiedad
      </md-button>
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
  methods: {
    save: function () {
      this.$emit('save');
    },
    switchChanged(value, nombre) {
      if (!value) {
        switch (nombre) {
          case "mostrar":
            this.propiedad.mostrar = "0";
            break;
          case "destacada":
            this.propiedad.destacada = "0";
            break;
        }
      }
    }
  },
  components: {}
};
</script>
<style lang="scss">
.saveButton {
  width: 100%;
  min-height: 50px;
  font-size: 1rem !important;
}
.saveProperty {
  min-height: 236px;
}

</style>
