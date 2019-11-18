<template>
  <base-table
    v-if="data"
    :advanced_filter="true"
    :add_route="'add-property'"
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
                        <label>Tipo</label>
                        <md-select v-if="propertyTypeList" v-model="pars.tipo">
                          <md-option
                            v-for="type in propertyTypeList"
                            :value="type.id"
                          >{{type.nombre}}</md-option>
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
                  <label>Ubicación</label>
                  <div class="md-layout">
                    <div class="md-layout-item">
                      <md-field>
                        <label>País</label>
                        <md-select v-if="countryList" v-model="pars.pais">
                          <md-option
                            v-for="country in countryList"
                            :value="country.id"
                          >{{country.nombre}}</md-option>
                        </md-select>
                      </md-field>
                    </div>
                    <div class="md-layout-item">
                      <md-field>
                        <label>Provincia</label>
                        <md-select v-if="provinceList" v-model="pars.provincia">
                          <md-option
                            v-for="province in provinceList"
                            :value="province.id"
                          >{{province.nombre}}</md-option>
                        </md-select>
                      </md-field>
                    </div>
                    <div class="md-layout-item">
                      <md-field>
                        <label>Distrito</label>
                        <md-select v-if="districtList" v-model="pars.distrito">
                          <md-option
                            v-for="district in districtList"
                            :value="district.id"
                          >{{district.nombre}}</md-option>
                        </md-select>
                      </md-field>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <div class="md-layout-item md-size-100">
              <div class="md-layout">
                <div class="md-layout-item">
                  <label>Area de Construcción</label>
                  <div class="md-layout">
                    <div class="md-layout-item">
                      <custom-input v-model="pars.areaFrom" placeholder="Desde" sufix="m²"></custom-input>
                    </div>
                    <div class="md-layout-item">
                      <custom-input v-model="pars.areaTo" placeholder="Hasta" sufix="m²"></custom-input>
                    </div>
                  </div>
                </div>
                <div class="md-layout-item">
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
import CustomInput from "@/components/CustomInput";
import BaseApiService from "@/services/Base";
import dataStructure from "@/consts/propertyFields";

export default {
  components: {
    BaseTable,
    CurrencyInput,
    CustomInput
  },
  data() {
    return {
      theme_color: "red",
      messages: {
        headerTitle: "Lista de Propiedades",
        basicSearchLabel:
          "Busqueda por numero de referencia, compañia, provincia o distrito...",
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
      propertyTypeService: new BaseApiService("propiedad_tipo"),
      countryService: new BaseApiService("pais"),
      provinceService: new BaseApiService("provincia"),
      districtService: new BaseApiService("distrito"),
      propertyService: new BaseApiService("propiedad"),
      statusList: null,
      propertyTypeList: null,
      countryList: null,
      provinceList: null,
      districtList: null,
      pars: {
        query: "",
        tipo: "",
        estado: "",
        pais: null,
        provincia: null,
        distrito: null,
        areaFrom: 0,
        areaTo: 0,
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
      this.propertyTypeList = (await this.propertyTypeService.list(
        defaultConfig
      )).data.data;
      this.countryList = (await this.countryService.list(
        defaultConfig
      )).data.data;
      this.provinceList = (await this.provinceService.list(
        defaultConfig
      )).data.data;
      this.districtList = (await this.districtService.list(
        defaultConfig
      )).data.data;
    },
    resetFilters() {
      this.pars.tipo = "";
      this.pars.estado = "";
      this.pars.provincia = null;
      this.pars.distrito = null;
      this.pars.areaFrom = 0;
      this.pars.areaTo = 0;
      this.pars.priceFrom = 0;
      this.pars.priceTo = 0;
      this.pars.query = "";
      this.applyFilters();
      this.loadData();
    },
    applyFilters() {
      let args = "",
        andArgs = "",
        rangeArgs = "";
      this.pars.query !== ""
        ? args === ""
          ? (args += `propiedad.id:${this.pars.query};sociedad.nombre:${this.pars.query};provincia.nombre:${this.pars.query};distrito.nombre:${this.pars.query}`)
          : (args += `;propiedad.id:${this.pars.query};sociedad.nombre:${this.pars.query};provincia.nombre:${this.pars.query};distrito.nombre:${this.pars.query}`)
        : null;
      this.pars.tipo !== ""
        ? andArgs === ""
          ? (andArgs += `propiedad_tipo.id:${this.pars.tipo}`)
          : (andArgs += `;propiedad_tipo.id:${this.pars.tipo}`)
        : null;
      this.pars.estado !== ""
        ? andArgs === ""
          ? (andArgs += `propiedad.propiedad_estado_id:${this.pars.estado}`)
          : (andArgs += `;propiedad.propiedad_estado_id:${this.pars.estado}`)
        : null;
      this.pars.provincia !== null
        ? andArgs === ""
          ? (andArgs += `direccion.provincia_id:${this.pars.provincia}`)
          : (andArgs += `;direccion.provincia_id:${this.pars.provincia}`)
        : null;
      this.pars.distrito !== null
        ? andArgs === ""
          ? (andArgs += `direccion.distrito_id:${this.pars.distrito}`)
          : (andArgs += `;direccion.distrito_id:${this.pars.distrito}`)
        : null;
      this.pars.areaFrom !== 0 && this.pars.areaTo !== 0
        ? rangeArgs === ""
          ? (rangeArgs += `propiedad.area_construida:${this.pars.areaFrom}~${this.pars.areaTo}`)
          : (rangeArgs += `;propiedad.area_construida:${this.pars.areaFrom}~${this.pars.areaTo}`)
        : null;
      this.pars.priceFrom !== 0 &&
      this.pars.priceTo !== 0 &&
      (this.pars.priceFrom !== 0 && this.pars.priceTo !== 0)
        ? rangeArgs === ""
          ? (rangeArgs += `propiedad.precio_venta:${this.pars.priceFrom}~${this.pars.priceTo}`)
          : (rangeArgs += `;propiedad.precio_venta:${this.pars.priceFrom}~${this.pars.priceTo}`)
        : null;
      this.filtering.rangeArgs = rangeArgs;
      this.filtering.args = args;
      this.filtering.andArgs = andArgs;
    },
    async loadData() {
      this.applyFilters();
      this.data = (await this.propertyService.list(this.filtering, true)).data;
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