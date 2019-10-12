<template>
  <div class="wrapper">
    <div class="section page-header header-filter" :style="headerStyle">
      <div class="container">
        <div class="md-layout">
          <div
            class="md-layout-item md-size-33 md-small-size-66 md-xsmall-size-100 md-medium-size-40 mx-auto"
          >
            <md-card class="md-card-login">
              <md-card-header class="md-card-header-green">
                <h4 class="card-title">Login</h4>
              </md-card-header>
              <md-card-content>
                <md-field class="md-form-group">
                  <md-icon>face</md-icon>
                  <label>Nombre de usuario</label>
                  <md-input v-model="username"></md-input>
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
          </div>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
import authService from "@/services/Auth";

export default {
  data() {
    return {
      username: null,
      password: null
    };
  },
  props: {
    header: {
      type: String,
      default: require("@/assets/img/profile_city.jpg")
    }
  },
  mounted() {
    if (this.$route.query.error) {
      switch (this.$route.query.error) {
        case "unauthorized":
          this.$notify({
            message: `Por favor ingrese al sistema.`,
            icon: "add_alert",
            horizontalAlign: "right",
            verticalAlign: "bottom",
            type: "danger"
          });
          break;
      }
    }
  },
  methods: {
    async login() {
      let data = {
        nombre: this.username,
        contrasena: this.password
      };
      let result = await authService.login(data);
      if (result.data.error) {
        return this.$notify({
          message: `${result.data.error}`,
          icon: "add_alert",
          horizontalAlign: "right",
          verticalAlign: "bottom",
          type: "danger"
        });
      }
      localStorage.setItem("token", result.data.token);
      this.$notify({
        message: `Bienvenido al sistema`,
        icon: "add_alert",
        horizontalAlign: "right",
        verticalAlign: "bottom",
        type: "success"
      });
      this.$router.push("/");
    }
  },
  computed: {
    headerStyle() {
      return {
        backgroundImage: `url(${this.header})`
      };
    }
  }
};
</script>

<style lang="scss">
#app,
.wrapper {
  min-height: 100vh;
}

.page-header {
  height: 100vh !important;
  background-position: center center;
  background-size: cover;
  margin: 0;
  padding: 0;
  border: 0;
  display: -webkit-box;
  display: -ms-flexbox;
  display: flex;
  -webkit-box-align: center;
  -ms-flex-align: center;
  align-items: center;
  -webkit-box-pack: center;
  -ms-flex-pack: center;
  justify-content: center;
}

.container,
.container-fluid {
  padding-right: 15px;
  padding-left: 15px;
  display: -webkit-box;
  display: -ms-flexbox;
  display: flex;
  -webkit-box-pack: justify;
  -ms-flex-pack: justify;
  justify-content: space-between;
  width: 100%;
  margin-left: auto;
  margin-right: auto;
  position: relative;
}

.section .container,
.section .container-fluid {
  -webkit-box-orient: vertical;
  -webkit-box-direction: normal;
  -ms-flex-direction: column;
  flex-direction: column;
}

.page-header > .container {
  color: #ffffff;
}

@media (min-width: 400px) {
  .md-card {
    // height: 350px !important;
    width: 320px !important;
  }
}

.login-page .page-header > .container {
  padding-top: 100px;
  padding-bottom: 150px;
}

.header-filter .md-layout {
  z-index: 2;
  position: relative;
}

.md-layout {
  margin-right: -15px;
  margin-left: -15px;
}

.md-layout {
  display: flex;
  flex-wrap: wrap;
}

.mr-auto,
.mx-auto {
  margin-right: auto !important;
}

.ml-auto,
.mx-auto {
  margin-left: auto !important;
}

.md-card-actions.md-alignment-right {
  justify-content: center !important;
  border: 0 !important;
}

.md-card [data-background-color="green"],
.md-card .md-card-header-green,
.md-card .md-tabs.md-success .md-tabs-navigation {
  background: linear-gradient(60deg, #66bb6a, #388e3c);
  // -webkit-box-shadow: 0 5px 20px 0px rgba(0, 0, 0, 0.2), 0 13px 24px -11px rgba(76, 175, 80, 0.6);
  box-shadow: 0 5px 20px 0px rgba(0, 0, 0, 0.2),
    0 13px 24px -11px rgba(76, 175, 80, 0.6);
}

.card-title {
  color: white;
  font-weight: 700;
  font-family: "Roboto Slab", "Times New Roman", serif;
}
</style>
