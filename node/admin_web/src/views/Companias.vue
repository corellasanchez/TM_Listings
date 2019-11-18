<template>
  <base-table
    v-if="data"
    :advanced_filter="false"
    :add_route="'add-company'"
    :messages="messages"
    :theme_color="theme_color"
    :data="data"
    :fields="tableHeaders"
    :pars="pars"
    :paginator="filtering"
    @updateResult="loadData"
    @resetFiltering="resetFilters"
  >
    <template slot="advanced_filter">
      <div class="md-layout">
        <div class="md-layout-item md-size-95">
          <div class="md-layout custom-filter-advanced">
            <!-- THIS VIEW DOES NOT HAVE AN ADVANCED FILTERING SYSTEM -->
          </div>
        </div>
        <div class="md-layout-item md-size-5">
          <md-button
            class="md-icon-button md-fab"
            :data-background-color="theme_color"
            @click="loadData()"
          >
            <md-icon>search</md-icon>
          </md-button>
        </div>
      </div>
    </template>
    <template slot="table_no_results">
      <md-icon class="md-size-3x">sentiment_very_dissatisfied</md-icon>
    </template>
  </base-table>
</template>
<script>
import BaseTable from "@/components/Tables/BaseTable";
import BaseApiService from "@/services/Base";
import dataStructure from "@/consts/companyFields";

export default {
  components: {
    BaseTable
  },
  data() {
    return {
      theme_color: "orange",
      messages: {
        headerTitle: "Lista de Compañias",
        basicSearchLabel: "Busqueda por numero de referencia, nombre o cedula juridica...",
        noResTitle: "Sin resultados",
        noResSubtitle: "Por favor cambie los parametros de busqueda"
      },
      filtering: {
        args: "",
        andArgs: "",
        rangeArgs: "",
        pageSize: 5,
        currentPage: 1,
        orderBy: "id",
        sortOrder: "asc"
      },
      companyService: new BaseApiService("sociedad"),
      pars: {
        query: ""
      },
      data: null,
      tableHeaders: null,
      lastFiltering: null
    };
  },
  mounted() {
    this.loadData();
  },
  methods: {
    tabChanged() {
      this.resetFilters();
    },
    resetFilters() {
      this.pars.query = "";
      this.applyFilters();
      this.loadData();
    },
    applyFilters() {
      let args = "";
      this.pars.query !== ""
        ? args === ""
          ? (args += `id:${this.pars.query};nombre:${this.pars.query};cedula:${this.pars.query}`)
          : (args += `;id:${this.pars.query};nombre:${this.pars.query};cedula:${this.pars.query}`)
        : null;
      this.filtering.args = args;
    },
    async loadData() {
      this.applyFilters();
      this.data = (await this.companyService.list(this.filtering, true)).data;
      this.tableHeaders = dataStructure;
      this.lastFiltering = Object.assign({}, this.filtering);
    }
  }
};
</script>
<style lang="scss">
.custom-filter-advanced {
  text-align: center;
  margin-left: 0;
}
</style>