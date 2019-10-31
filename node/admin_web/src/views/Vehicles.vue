<template>
  <div class="content">
    <baseTable v-if="config.table.data" :config="config" :filtering="filtering">
      <div v-if="filtering.advanced" class="filtering">
        <div class="md-layout md-gutter">
          <div class="md-layout-item md-size-15">
            <md-field>
              <label>Tipo</label>
              <md-select v-if="propertyTypeList" v-model="tipo">
                <md-option v-for="type in propertyTypeList" :value="type.id">{{type.nombre}}</md-option>
              </md-select>
            </md-field>
          </div>
          <div class="md-layout-item md-size-15">
            <md-field>
              <label>Estado</label>
              <md-select v-if="statusList" v-model="estado">
                <md-option v-for="status in statusList" :value="status.id">{{status.nombre}}</md-option>
              </md-select>
            </md-field>
          </div>
          <!-- <div class="md-layout-item md-size-15">
            <md-field>
              <label>Moneda</label>
              <md-select>
                <md-option value="0">Opcion 1</md-option>
                <md-option value="1">Opcion 2</md-option>
              </md-select>
            </md-field>
          </div>-->
          <!-- <div class="md-layout-item md-size-15">
            <md-field>
              <label>Area</label>
              <md-input></md-input>
            </md-field>
          </div>-->
          <!-- <div class="md-layout-item md-size-15">
            <md-field>
              <label>Precio</label>
              <md-input></md-input>
            </md-field>
          </div>-->
          <div class="md-layout-item md-size-55">
            <md-field>
              <label>Buscar...</label>
              <md-input v-model="query"></md-input>
            </md-field>
          </div>
          <div class="md-layout-item md-size-15">
            <md-button @click="applyFilters()">Buscar</md-button>
          </div>
        </div>
      </div>
      <div v-else>
        <div class="md-layout md-gutter">
          <div class="md-layout-item md-size-85">
            <md-field>
              <label>Buscar...</label>
              <md-input v-model="query"></md-input>
            </md-field>
          </div>
          <div class="md-layout-item md-size-15">
            <md-button @click="applyFilters()">Buscar</md-button>
          </div>
        </div>
      </div>
    </baseTable>
  </div>
</template>
<script>
import matPaginator from "@/components/Tables/MatPaginator.vue";
import baseTable from "@/components/Tables/BaseTable.vue";
import BaseApiService from "@/services/Base";

export default {
  data() {
    return {
      propertyService: new BaseApiService("propiedad"),
      statusService: new BaseApiService("estado"),
      propertyTypeService: new BaseApiService("propiedad_tipo"),
      lastFiltering: null,
      statusList: null,
      propertyTypeList: null,
      tipo: null,
      estado: null,
      query: null,
      config: {
        header: {
          color: "red",
          title: "Lista de Propiedades",
          create: {
            enable: true,
            route: "add-property"
          }
        },
        table: {
          data: null,
          meta: null,
          header: [
            {
              label: "ID",
              column: "id",
              first: "",
              last: ""
            },
            {
              label: "Compañia",
              column: "sociedad",
              first: "",
              last: ""
            },
            {
              label: "Provincia",
              column: "provincia",
              first: "",
              last: ""
            },
            {
              label: "Distrito",
              column: "distrito",
              first: "",
              last: ""
            },
            {
              label: "Tipo",
              column: "tipo_propiedad",
              first: "",
              last: ""
            },
            {
              label: "Área de Construcción",
              column: "area_construida",
              first: "",
              last: "m²"
            },
            {
              label: "Estado",
              column: "estado",
              first: "",
              last: ""
            },
            {
              label: "Precio de Venta",
              column: "precio_venta",
              first: "₡",
              last: ""
            }
          ]
        }
      },
      filtering: {
        advanced: false,
        args: "",
        pageSize: 5,
        currentPage: 1,
        orderBy: "id",
        sortOrder: "asc"
      }
    };
  },
  async mounted() {
    this.loadData();
    this.statusList = (await this.statusService.list({
      pageSize: 100,
      currentPage: 1
    })).data.data;
    this.propertyTypeList = (await this.propertyTypeService.list({
      pageSize: 100,
      currentPage: 1
    })).data.data;
  },
  methods: {
    async loadData() {
      let properties = await this.propertyService.list(this.filtering, true);
      this.config.table.data = properties.data.data;
      this.config.table.meta = properties.data.meta;
      this.lastFiltering = Object.assign({}, this.filtering);
    },
    switchAdvancedFilter() {
      this.config.advanced = !this.config.advanced;
    },
    applyFilters() {
      let args = "";
      this.query !== null
        ? args === ""
          ? (args += `propiedad.id:${this.query};sociedad.nombre:${this.query};provincia.nombre:${this.query};distrito.nombre:${this.query}`)
          : (args += `;propiedad.id:${this.query};sociedad.nombre:${this.query};provincia.nombre:${this.query};distrito.nombre:${this.query}`)
        : null;

      this.tipo !== null
        ? args === ""
          ? (args += `propiedad_tipo.id:${this.tipo}`)
          : (args += `;propiedad_tipo.id:${this.tipo}`)
        : null;

      this.estado !== null
        ? args === ""
          ? (args += `propiedad.propiedad_estado_id:${this.estado}`)
          : (args += `;propiedad.propiedad_estado_id:${this.estado}`)
        : null;

      this.filtering.args = args;
    }
  },
  components: {
    matPaginator,
    baseTable
  },
  watch: {
    filtering: {
      handler() {
        this.filtering.args !== this.lastFiltering.args ||
        this.filtering.pageSize !== this.lastFiltering.pageSize
          ? (this.filtering.currentPage = 1)
          : null;
        this.loadData();
      },
      deep: true
    }
  }
};
</script>
<style lang="scss">
div.add-button {
  button,
  button:hover {
    margin-right: 10px !important;
    background-color: white !important;
    i {
      color: #ff5252 !important;
    }
  }
}

div.filters {
  .md-tabs-navigation {
    padding-left: 0;
    padding-bottom: 0;
    margin-top: -15px;
    margin-left: -5px;
    background-color: transparent !important;
    -webkit-box-shadow: none;
    box-shadow: none;

    .md-tab-nav-button {
      background-color: #e94542 !important;
      margin-right: 5px;
      border-radius: 3px;
      box-shadow: 0 12px 20px -10px rgba(244, 67, 54, 0.28),
        0 4px 20px 0px rgba(0, 0, 0, 0.12),
        0 7px 8px -5px rgba(244, 67, 54, 0.2);
      .md-button-content {
        color: white;
      }
    }
  }
}

.filtering {
  overflow-x: auto;
  > div {
    &:nth-child(1) {
      min-width: 750px;
    }
  }
}

.filters-container {
  > div {
    transition: opacity 0.5s;
  }
}
</style>