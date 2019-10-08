<template>
  <md-card class="md-card-login">
    <md-card-header :class="getClass(headerColor)">
      <h4 class="card-title">Login</h4>
    </md-card-header>
    <md-card-content>
      <md-field class="md-form-group">
        <md-icon>face</md-icon>
        <label>Nombre de usuario</label>
        <md-input v-model="firstname"></md-input>
      </md-field>
      <md-field class="md-form-group">
        <md-icon>lock_outline</md-icon>
        <label>Contraseña</label>
        <md-input type="password" v-model="password"></md-input>
      </md-field>
    </md-card-content>
    <md-card-actions>
      <md-button @click="login" class="md-simple md-success md-lg">Entrar</md-button>
    </md-card-actions>
  </md-card>
</template>

<script>
export default {
  name: "login-card",
  props: {
    headerColor: {
      type: String,
      default: ""
    }
  },
  mounted() {},
  data() {
    return {
      firstname: null,
      password: null
    };
  },
  methods: {
    login() {
    },
    getClass(headerColor) {
      return "md-card-header-" + headerColor + "";
    }
  }
};
</script>

<style lang="scss">
.card-title {
  margin-bottom: 20px;
}
</style>
