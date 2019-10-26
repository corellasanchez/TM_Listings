<template>
  <form>
    <md-card>
      <md-card-header :data-background-color="dataBackgroundColor">
        <h4 class="title">Detalles de la propiedad</h4>
      </md-card-header>

      <md-card-content>
        <div class="md-layout md-gutter">
          <div class="md-layout-item md-small-size-100 md-size-33">
            <md-field>
              <label for="sociedad_id">Sociedad</label>
              <md-select v-model="propiedad.sociedad_id" name="sociedad_id" id="sociedad_id">
                <md-option v-for="i in sociedades" :value="i.id" :key="i.id">{{ i.nombre }}</md-option>
              </md-select>
            </md-field>
          </div>
          <div class="md-layout-item md-small-size-100 md-size-33">
            <md-field>
              <label>Folio</label>
              <md-input v-model="propiedad.folio" required></md-input>
              <span class="md-error">There is an error</span>
            </md-field>
          </div>
          <div class="md-layout-item md-small-size-100 md-size-33">
            <md-field>
              <label># Plano</label>
              <md-input v-model="propiedad.plano" required></md-input>
              <span class="md-error">There is an error</span>
            </md-field>
          </div>
        </div>
      </md-card-content>
    </md-card>
  </form>
</template>
<script>
import BaseApiService from "@/services/Base";

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
      sociedadService: new BaseApiService('sociedad')
    };
  },
  async mounted() {
    this.getSociedades();
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
    }
  }
};
</script>
<style></style>
