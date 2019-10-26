<template>
  <div class="content">
    <div class="md-layout-item md-medium-size-100 md-xsmall-size-100 md-size-100">
      <md-card>
        <md-card-header data-background-color="red">
          <md-card-header-text>
            <div class="md-title">Lista de propiedades</div>
            <div class="md-subhead">Sin filtros</div>
          </md-card-header-text>

          <md-menu>
            <md-button class="md-icon-button md-fab md-mini md-seccondary" @click="$router.push('add-property')">
              <md-icon>add</md-icon>
            </md-button>
            
          </md-menu>
        </md-card-header>

        <md-card-content v-if="properties">
          <md-table v-model="properties" :table-header-color="tableHeaderColor">
            <md-table-row slot="md-table-row" slot-scope="{ item }">
              <md-table-cell md-label="ID">{{ item.id }}</md-table-cell>
              <md-table-cell md-label="Compañia">{{ item.sociedad }}</md-table-cell>
              <md-table-cell md-label="Provincia">{{ item.provincia }}</md-table-cell>
              <md-table-cell md-label="Distrito">{{ item.distrito }}</md-table-cell>
              <md-table-cell md-label="Tipo">{{ item.tipo_propiedad }}</md-table-cell>
              <md-table-cell md-label="Área de Construcción">{{ item.area_construida }} m²</md-table-cell>
              <md-table-cell md-label="Estado">{{ item.estado }}</md-table-cell>
              <md-table-cell md-label="Precio de Venta">₡{{ item.precio_venta }}</md-table-cell>
            </md-table-row>
          </md-table>
          <matPaginator :params="params"></matPaginator>
        </md-card-content>
      </md-card>
    </div>
  </div>
</template>
<script>
import BaseApiService from "@/services/Base";
import matPaginator from "@/components/Tables/MatPaginator.vue";

export default {
  components: {
    matPaginator
  },
  props: {
    tableHeaderColor: {
      type: String,
      default: "red"
    }
  },
  async mounted() {
    this.loadData();
  },
  data() {
    return {
      propertyService: new BaseApiService('propiedad'),
      selected: [],
      properties: null,
      params: {
        args: "",
        pageSize: 5,
        currentPage: 1,
        orderBy: "id",
        sortOrder: "asc"
      }
    };
  },
  methods: {
    async loadData(){
      let properties = await this.propertyService.list(this.params, true);
      this.properties = properties.data.data;
      this.params.totalPages = properties.data.meta.pagination.total_pages;
    }
  },
  watch:{
    params:{
      handler(){
        this.loadData();
      },
      deep: true
    }
  }
};
</script>