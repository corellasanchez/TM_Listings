<template>
  <base-table
    v-if="data"
    :advanced_filter="true"
    :add_route="'add-vehicle'"
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
            <div class="md-layout-item md-size-100">
              <div class="md-layout">
                <div class="md-layout-item md-size-40">
                  <label>Datos Generales</label>
                  <div class="md-layout">
                    <div class="md-layout-item">
                      <md-field>
                        <label>Compañia</label>
                        <md-select v-if="companyList" v-model="pars.compania">
                          <md-option
                            v-for="company in companyList"
                            :value="company.id"
                          >{{company.nombre}}</md-option>
                        </md-select>
                      </md-field>
                    </div>
                    <div class="md-layout-item">
                      <md-field>
                        <label>Estado</label>
                        <md-select v-if="statusList" v-model="pars.estado">
                          <md-option
                            v-for="status in statusList"
                            :value="status.id"
                          >{{status.nombre}}</md-option>
                        </md-select>
                      </md-field>
                    </div>
                  </div>
                </div>
                <div class="md-layout-item md-size-60">
                  <label>Datos del Vehiculo</label>
                  <div class="md-layout">
                    <div class="md-layout-item">
                      <md-field>
                        <label>Marca</label>
                        <md-select v-if="brandList" v-model="pars.marca">
                          <md-option v-for="brand in brandList" :value="brand.id">{{brand.nombre}}</md-option>
                        </md-select>
                      </md-field>
                    </div>
                    <div class="md-layout-item">
                      <md-field>
                        <label>Categoria</label>
                        <md-select v-if="typeList" v-model="pars.categoria">
                          <md-option v-for="type in typeList" :value="type.id">{{type.nombre}}</md-option>
                        </md-select>
                      </md-field>
                    </div>
                    <div class="md-layout-item">
                      <md-field>
                        <label>Estilo</label>
                        <md-select v-if="styleList" v-model="pars.estilo">
                          <md-option v-for="style in styleList" :value="style.id">{{style.nombre}}</md-option>
                        </md-select>
                      </md-field>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <div class="md-layout-item md-size-100">
              <label>Precio de Venta</label>
              <div class="md-layout">
                <div class="md-layout-item">
                  <currency-input v-model="pars.priceFrom" placeholder="Desde"></currency-input>
                </div>
                <div class="md-layout-item">
                  <currency-input v-model="pars.priceTo" placeholder="Hasta"></currency-input>
                </div>
              </div>
            </div>
          </div>
        </div>
        <div class="md-layout-item md-size-5">
          <div class="md-layout custom-filter-actions">
            <div class="md-layout-item md-size-100">
              <md-button
                class="md-icon-button md-fab"
                :data-background-color="theme_color"
                @click="loadData()"
              >
                <md-icon>search</md-icon>
              </md-button>
            </div>
            <div class="md-layout-item md-size-100">
              <md-button class="md-icon-button md-fab" @click="resetFilters()">
                <md-icon>clear</md-icon>
                <md-tooltip md-direction="bottom">Limpiar Filtros</md-tooltip>
              </md-button>
            </div>
          </div>
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
import CurrencyInput from "@/components/Currency/CurrencyInput";
import BaseApiService from "@/services/Base";
import dataStructure from "@/consts/vehicleFields";

export default {
  components: {
    BaseTable,
    CurrencyInput
  },
  data() {
    return {
      theme_color: "blue",
      messages: {
        headerTitle: "Lista de Vehículos",
        basicSearchLabel: "Busqueda por numero de referencia, año o placa...",
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
      statusService: new BaseApiService("estado"),
      companyService: new BaseApiService("sociedad"),
      vehicleService: new BaseApiService("vehiculo"),
      brandService: new BaseApiService("vehiculo_marca"),
      typeService: new BaseApiService("vehiculo_tipo"),
      styleService: new BaseApiService("vehiculo_estilo"),
      brandList: null,
      typeList: null,
      styleList: null,
      statusList: null,
      companyList: null,
      pars: {
        query: "",
        estado: "",
        compania: "",
        marca: "",
        categoria: "",
        estilo: "",
        priceFrom: 0,
        priceTo: 0
      },
      data: null,
      tableHeaders: null,
      lastFiltering: null
    };
  },
  mounted() {
    this.firstLoad();
    this.loadData();
  },
  methods: {
    tabChanged() {
      this.resetFilters();
    },
    async firstLoad() {
      let defaultConfig = {
        pageSize: 100,
        currentPage: 1
      };
      this.statusList = (await this.statusService.list(
        defaultConfig
      )).data.data;
      this.companyList = (await this.companyService.list(
        defaultConfig
      )).data.data;
      this.brandList = (await this.brandService.list(defaultConfig)).data.data;
      this.typeList = (await this.typeService.list(defaultConfig)).data.data;
      this.styleList = (await this.styleService.list(defaultConfig)).data.data;
    },
    resetFilters() {
      this.pars.estado = "";
      this.pars.priceFrom = 0;
      this.pars.priceTo = 0;
      this.pars.query = "";

      this.pars.compania = "";
      this.pars.marca = "";
      this.pars.categoria = "";
      this.pars.estilo = "";

      this.applyFilters();
      this.loadData();
    },
    applyFilters() {
      let args = "",
        andArgs = "",
        rangeArgs = "";
      this.pars.query !== ""
        ? args === ""
          ? (args += `vehiculo.id:${this.pars.query};vehiculo.ano:${this.pars.query};vehiculo.placa:${this.pars.query}`)
          : (args += `;vehiculo.id:${this.pars.query};vehiculo.ano:${this.pars.query};vehiculo.placa:${this.pars.query}`)
        : null;
      this.pars.estado !== ""
        ? andArgs === ""
          ? (andArgs += `vehiculo.estado_id:${this.pars.estado}`)
          : (andArgs += `;vehiculo.estado_id:${this.pars.estado}`)
        : null;

      this.pars.compania !== ""
        ? andArgs === ""
          ? (andArgs += `vehiculo.sociedad_id:${this.pars.compania}`)
          : (andArgs += `;vehiculo.sociedad_id:${this.pars.compania}`)
        : null;
      this.pars.marca !== ""
        ? andArgs === ""
          ? (andArgs += `vehiculo.vehiculo_marca_id:${this.pars.marca}`)
          : (andArgs += `;vehiculo.vehiculo_marca_id:${this.pars.marca}`)
        : null;
      this.pars.categoria !== ""
        ? andArgs === ""
          ? (andArgs += `vehiculo_estilo.vehiculo_tipo_id:${this.pars.categoria}`)
          : (andArgs += `;vehiculo_estilo.vehiculo_tipo_id:${this.pars.categoria}`)
        : null;
      this.pars.estilo !== ""
        ? andArgs === ""
          ? (andArgs += `vehiculo.vehiculo_estilo_id:${this.pars.estilo}`)
          : (andArgs += `;vehiculo.vehiculo_estilo_id:${this.pars.estilo}`)
        : null;

      this.pars.priceFrom !== 0 &&
      this.pars.priceTo !== 0 &&
      (this.pars.priceFrom !== 0 && this.pars.priceTo !== 0)
        ? rangeArgs === ""
          ? (rangeArgs += `vehiculo.precio_venta:${this.pars.priceFrom}~${this.pars.priceTo}`)
          : (rangeArgs += `;vehiculo.precio_venta:${this.pars.priceFrom}~${this.pars.priceTo}`)
        : null;
      this.filtering.rangeArgs = rangeArgs;
      this.filtering.args = args;
      this.filtering.andArgs = andArgs;
    },
    async loadData() {
      this.applyFilters();
      this.data = (await this.vehicleService.list(this.filtering, true)).data;
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

.custom-filter-actions{
  margin-top: 25px;
}
</style>