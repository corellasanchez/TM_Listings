<template>
  <div class="content">
    <div class="md-layout">
      <div class="md-layout-item md-medium-size-100 md-size-66">
        <form>
          <md-card>
            <md-card-header :data-background-color="theme_color">
              <h4 class="title">Detalles del Usuario</h4>
            </md-card-header>
            <md-card-content>
              <div class="md-layout md-gutter">
                <div class="md-layout-item md-small-size-100 md-size-50">
                  <md-field>
                    <label>Nombre de Usuario</label>
                    <md-input
                      required
                      type="text"
                      v-model="data.nombre"
                      :disabled="($route.params.user_id)? true: false"
                    ></md-input>
                  </md-field>
                </div>
                <div class="md-layout-item md-small-size-100 md-size-50">
                  <md-field>
                    <label>Contraseña</label>
                    <md-input required type="password" v-model="data.contrasena"></md-input>
                  </md-field>
                </div>
              </div>
              <div class="md-layout md-gutter">
                <div class="md-layout-item md-small-size-100 md-size-50">
                  <md-field>
                    <label>Email</label>
                    <md-input required type="text" v-model="data.email"></md-input>
                  </md-field>
                </div>
                <div class="md-layout-item md-small-size-100 md-size-50">
                  <md-field>
                    <label>Nivel de Acceso</label>
                    <md-select v-model="data.acceso">
                      <md-option value="1">Administrador</md-option>
                      <md-option value="2">Usuario</md-option>
                    </md-select>
                  </md-field>
                </div>
              </div>
            </md-card-content>
          </md-card>
        </form>
      </div>
      <div class="md-layout-item md-medium-size-100 md-size-33">
        <form>
          <md-card>
            <md-card-header :data-background-color="theme_color">
              <h4 class="title">Guardar Cambios</h4>
            </md-card-header>
            <md-card-content>
              <md-button class="md-raised md-primary" style="width:100%" @click="addUser()">
                <md-icon>save</md-icon>Guardar Usuario
              </md-button>
            </md-card-content>
          </md-card>
        </form>
      </div>
    </div>
  </div>
</template>
<script>
import BaseApiService from "@/services/Base";
import { mixins } from "../helpers/mixins";
export default {
  data() {
    return {
      theme_color: "green",
      userService: new BaseApiService("usuario"),
      data: {
        nombre: null,
        contrasena: null,
        email: null,
        acceso: null
      }
    };
  },
  methods: {
    async addUser() {
      if (this.$route.params.user_id) {
        this.editUser();
        return;
      }
      if (!this.checkRequiredFiles()) {
        this.showError("Los campos con * son requeridos");
        return;
      }
      if (await this.checkUsernameAvailability()) {
        this.showError("El nombre de usuario brindado ya esta en uso");
        return;
      }
      let result = await this.userService.add(this.data);
    },
    async editUser() {
      console.log("ESTAMOS EDITANDO");
    },
    async fetchUserData() {
      let params = {
        args: "id:" + this.$route.params.user_id
      };
      let result = (await this.userService.find(params)).data[0];
      result.contrasena = null;
      this.data = result;
    },
    async checkUsernameAvailability() {
      let params = {
        args: "nombre:" + this.data.nombre
      };
      let result = (await this.userService.find(params)).data;
      return result.length ? true : false;
    },
    checkRequiredFiles() {
      return this.data.nombre &&
        this.data.contrasena &&
        this.data.acceso &&
        this.data.email
        ? true
        : false;
    }
  },
  mounted() {
    if (this.$route.params.user_id) {
      this.fetchUserData();
    }
  },
  mixins: [mixins]
};
</script>