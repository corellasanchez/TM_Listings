<template>
  <form>
    <md-card class="propertyDetails">
      <md-card-header :data-background-color="dataBackgroundColor">
        <h4 class="title">Detalles de la propiedad</h4>
      </md-card-header>
      <md-card-content>
        <div class="md-layout md-gutter">
          <div class="md-layout-item md-small-size-100 md-size-50">
            <md-field>
              <label for="sociedad_id">Sociedad</label>
              <md-select v-model="propiedad.sociedad_id" name="sociedad_id" id="sociedad_id">
                <md-option v-for="i in sociedades" :value="i.id" :key="i.id">{{ i.nombre }}</md-option>
              </md-select>
            </md-field>
          </div>
          <div class="md-layout-item md-small-size-100 md-size-50">
            <md-field>
              <label for="propiedad_tipo_id">Tipo de Propiedad</label>
              <md-select
                v-model="propiedad.propiedad_tipo_id"
                name="propiedad_tipo_id"
                id="propiedad_tipo_id"
              >
                <md-option v-for="i in tiposPropiedad" :value="i.id" :key="i.id">{{ i.nombre }}</md-option>
              </md-select>
            </md-field>
          </div>
        </div>
        <div class="md-layout md-gutter">
          <div class="md-layout-item md-small-size-100 md-size-50">
            <md-field>
              <label for="propiedad_estado_id">Estado</label>
              <md-select
                v-model="propiedad.propiedad_estado_id"
                name="propiedad_estado_id"
                id="propiedad_estado_id"
              >
                <md-option v-for="i in estadosPropiedad" :value="i.id" :key="i.id">{{ i.nombre }}</md-option>
              </md-select>
            </md-field>
          </div>
          <div class="md-layout-item md-small-size-100 md-size-50">
            <md-field>
              <label for="departamento_origen_id">Departamento de Origen</label>
              <md-select
                v-model="propiedad.departamento_origen_id"
                name="departamento_origen_id"
                id="departamento_origen_id"
              >
                <md-option v-for="i in departamentosOrigen" :value="i.id" :key="i.id">{{ i.nombre }}</md-option>
              </md-select>
            </md-field>
          </div>
        </div>
        <div class="md-layout md-gutter">
          <div class="md-layout-item md-small-size-100 md-size-33">
            <md-field :md-counter="false">
              <label># Referencia</label>
              <md-input v-model="propiedad.id_interno" maxlength="99"></md-input>
            </md-field>
          </div>
          <div class="md-layout-item md-small-size-100 md-size-33">
            <md-field :md-counter="false">
              <label>Folio</label>
              <md-input v-model="propiedad.folio" required maxlength="99"></md-input>
            </md-field>
          </div>
          <div class="md-layout-item md-small-size-100 md-size-33">
            <md-field :md-counter="false">
              <label># Plano</label>
              <md-input v-model="propiedad.plano" required maxlength="99"></md-input>
            </md-field>
          </div>
        </div>

        <div class="md-layout md-gutter">
          <div class="md-layout-item md-small-size-100 md-size-50">
            <md-datepicker v-model="propiedad.fecha_inscripcion_registro_publico" md-immediately>
              <label>Fecha de inscripcion en el registro público</label>
            </md-datepicker>
          </div>
          <div class="md-layout-item md-small-size-100 md-size-50">
            <md-datepicker v-model="propiedad.fecha_construccion" md-immediately>
              <label>Fecha de Construcción</label>
            </md-datepicker>
          </div>
        </div>
        <div class="md-layout md-gutter">
          <div class="md-layout-item md-small-size-100 md-size-50">
            <md-field>
              <label>Metraje de la propiedad</label>
              <md-input v-model="propiedad.area" required type="number"></md-input>
            </md-field>
          </div>
          <div class="md-layout-item md-small-size-100 md-size-50">
            <md-field>
              <label>Metraje de la construcción</label>
              <md-input v-model="propiedad.area_construida" required type="number"></md-input>
            </md-field>
          </div>
        </div>

        <div class="md-layout md-gutter">
          <div class="md-layout-item md-small-size-100 md-size-100">
            <md-field>
              <label>Comentarios</label>
              <md-textarea v-model="propiedad.comentarios" md-autogrow maxlength="1000"></md-textarea>
            </md-field>
          </div>
        </div>
      </md-card-content>
    </md-card>
  </form>
</template>
<script>
import BaseApiService from "@/services/Base";
const { LOCALE } = require("../../../config");

export default {
  name: "property-details",
  props: {
    dataBackgroundColor: {
      type: String,
      default: ""
    },
    propiedad: {}
  },
  data() {
    return {
      sociedades: null,
      tiposPropiedad: null,
      estadosPropiedad: null,
      departamentosOrigen: null,
      sociedadService: new BaseApiService("sociedad"),
      tiposPropiedadService: new BaseApiService("propiedad_tipo"),
      estadosPropiedadService: new BaseApiService("estado"),
      departamentosOrigenService: new BaseApiService("departamento_origen")
    };
  },
  async mounted() {
    this.getSociedades();
    this.getTiposPropiedad();
    this.getEstadosPropiedad();
    this.getDepartamentosOrigen();
    this.$material.locale = LOCALE;
  },
  methods: {
    async getSociedades() {
      let params = {
        args: "",
        pageSize: 100,
        currentPage: 1,
        orderBy: "nombre",
        sortOrder: "desc"
      };
      let sociedades = await this.sociedadService.list(params);
      this.sociedades = sociedades.data.data;
      if (this.sociedades) {
        this.propiedad.sociedad_id = this.sociedades[0].id;
      }
    },
    async getTiposPropiedad() {
      let params = {
        args: "",
        pageSize: 100,
        currentPage: 1,
        orderBy: "nombre",
        sortOrder: "asc"
      };
      let tiposPropiedad = await this.tiposPropiedadService.list(params);
      this.tiposPropiedad = tiposPropiedad.data.data;
      if (this.tiposPropiedad) {
        this.propiedad.propiedad_tipo_id = this.tiposPropiedad[0].id;
      }
    },
    async getEstadosPropiedad() {
      let params = {
        args: "",
        pageSize: 100,
        currentPage: 1,
        orderBy: "nombre",
        sortOrder: "asc"
      };
      let estadosPropiedad = await this.estadosPropiedadService.list(params);
      this.estadosPropiedad = estadosPropiedad.data.data;
      if (this.estadosPropiedad) {
        this.propiedad.propiedad_estado_id = this.estadosPropiedad[0].id;
      }
    },
    async getDepartamentosOrigen() {
      let params = {
        args: "",
        pageSize: 100,
        currentPage: 1,
        orderBy: "id",
        sortOrder: "asc"
      };
      let departamentosOrigen = await this.departamentosOrigenService.list(
        params
      );
      this.departamentosOrigen = departamentosOrigen.data.data;
      if (this.departamentosOrigen) {
        this.propiedad.departamento_origen_id = this.departamentosOrigen[0].id;
      }
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
          case "se_financia":
            this.propiedad.se_financia = "0";
            break;
        }
      }
    }
  }
};
</script>
<style lang="scss">
.propertyDetails {
  min-height: 612px !important;
}
</style>
