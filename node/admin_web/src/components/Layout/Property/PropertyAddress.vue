<template>
  <md-card>
    <md-card-header :data-background-color="dataBackgroundColor">
      <h4 class="title">Dirección de la propiedad</h4>
    </md-card-header>
    <md-card-content>
      <md-field>
        <label for="pais">País</label>
        <md-select
          v-model="propiedad.direccion.pais_id"
          name="pais"
          id="pais"
          @md-selected="onPaisChange()"
        >
          <md-option v-for="i in paises" :value="i.id" :key="i.id">{{ i.nombre }}</md-option>
        </md-select>
      </md-field>
      <md-field>
        <label for="provincia">Provincia</label>
        <md-select
          v-model="propiedad.direccion.provincia_id"
          name="provincia"
          id="provincia"
          @md-selected="onProvinciaChange()"
        >
          <md-option v-for="i in provincias" :value="i.id" :key="i.id">{{ i.nombre }}</md-option>
        </md-select>
      </md-field>
      <md-field>
        <label for="distrito">{{distritoLabel}}</label>
        <md-select
          v-model="propiedad.direccion.distrito_id"
          name="distrito"
          id="distrito"
          @md-selected="onDistritoChange()"
        >
          <md-option v-for="i in distritos" :value="i.id" :key="i.id">{{ i.nombre }}</md-option>
        </md-select>
      </md-field>
      <md-field>
        <label for="corregimiento">{{corregimientoLabel}}</label>
        <md-select
          v-model="propiedad.direccion.corregimiento_id"
          name="corregimiento"
          id="corregimiento"
        >
          <md-option v-for="i in corregimientos" :value="i.id" :key="i.id">{{ i.nombre }}</md-option>
        </md-select>
      </md-field>
      <md-field>
        <label>Dirección exacta</label>
        <md-textarea v-model="propiedad.direccion.detalle" maxlength="255"></md-textarea>
      </md-field>
      <md-field :md-counter="false">
        <label>Unidad</label>
        <md-input v-model="propiedad.unidad" required maxlength="99"></md-input>
        <span class="md-helper-text">Numero de apartamento, Casa o Local</span>
      </md-field>
    </md-card-content>
  </md-card>
</template>
<script>
import BaseApiService from "@/services/Base";

export default {
  name: "property-address",
  props: {
    dataBackgroundColor: {
      type: String,
      default: ""
    },
    propiedad: {}
  },
  async mounted() {
    this.getPaises();
  },
  data() {
    return {
      paises: [],
      provincias: [],
      distritos: [],
      corregimientos: [],
      paisService: new BaseApiService("pais"),
      provinciaService: new BaseApiService("provincia"),
      distritoService: new BaseApiService("distrito"),
      corregimientoService: new BaseApiService("corregimiento"),
      distritoLabel: "Distrito",
      corregimientoLabel: "Corregimiento"
    };
  },
  methods: {
    async getPaises() {
      let params = {
        args: "",
        pageSize: 100,
        currentPage: 1,
        orderBy: "nombre",
        sortOrder: "desc"
      };
      let paises = await this.paisService.list(params);
      this.paises = paises.data.data;
      if (this.paises) {
        this.propiedad.direccion.pais_id = this.paises[0].id;
      }
    },
    async getProvincias() {
      let params = {
        args: "pais_id:" + this.propiedad.direccion.pais_id,
        pageSize: 100,
        currentPage: 1,
        orderBy: "nombre",
        sortOrder: "asc"
      };
      let provincias = await this.provinciaService.list(params);
      this.provincias = provincias.data.data;
      if (this.provincias) {
        this.propiedad.direccion.provincia_id = this.provincias[0].id;
      }
    },
    async getDistritos() {
      let params = {
        args: "provincia_id:" + this.propiedad.direccion.provincia_id,
        pageSize: 100,
        currentPage: 1,
        orderBy: "nombre",
        sortOrder: "asc"
      };
      let distritos = await this.distritoService.list(params);
      this.distritos = distritos.data.data;
      if (this.distritos) {
        this.propiedad.direccion.distrito_id = this.distritos[0].id;
      }
    },
    async getCorregimientos() {
      let params = {
        args: "distrito_id:" + this.propiedad.direccion.distrito_id,
        pageSize: 100,
        currentPage: 1,
        orderBy: "nombre",
        sortOrder: "asc"
      };
      let corregimientos = await this.corregimientoService.list(params);
      this.corregimientos = corregimientos.data.data;
      if (this.corregimientos) {
        this.propiedad.direccion.corregimiento_id = this.corregimientos[0].id;
      }
    },
    onPaisChange(event) {
      this.getProvincias();
      switch (this.propiedad.direccion.pais_id) {
        case 1:
          // Costa Rica
          this.distritoLabel = "Canton";
          this.corregimientoLabel = "Distrito";
          break;
        case 2:
          // Panama
          this.distritoLabel = "Distrito";
          this.corregimientoLabel = "Corregimiento";
          break;
      }
    },
    onProvinciaChange(event) {
      this.getDistritos();
    },
    onDistritoChange(event) {
      this.getCorregimientos();
    }
  }
};
</script>
<style lang="scss">
</style>
