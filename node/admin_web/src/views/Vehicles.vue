<template>
  <div class="content custom-table">
    <div class="md-layout-item md-medium-size-100 md-xsmall-size-100 md-size-100">
      <md-card>
        <md-card-header data-background-color="red">
          <md-card-header-text>
            <div class="md-title">Lista de propiedades</div>
            <!-- <div class="md-subhead">Sin filtros</div> -->
          </md-card-header-text>
          <md-menu class="add-button">
            <md-button
              class="md-icon-button md-fab md-mini md-seccondary"
              @click="switchAdvancedFilter()"
            >
              <md-icon>filter_list</md-icon>
            </md-button>
            <md-button
              class="md-icon-button md-fab md-mini md-seccondary"
              @click="$router.push('add-property')"
            >
              <md-icon>add</md-icon>
            </md-button>
          </md-menu>
        </md-card-header>
        <md-card-content class="filters-container">
          <!--  -->
          <div v-if="advanced_filtering" class="filtering">
            <div class="md-layout md-gutter">
                  <!--  -->
                  <div class="md-layout-item md-size-15"> <!-- Tipo -->
                    <md-field>
                      <label>Tipo</label>
                      <md-select>
                        <md-option value="0">Opcion 1</md-option>
                        <md-option value="1">Opcion 2</md-option>
                      </md-select>
                    </md-field>
                  </div>
                  <div class="md-layout-item md-size-15"> <!-- Estado -->
                    <md-field>
                      <label>Estado</label>
                      <md-select>
                        <md-option value="0">Opcion 1</md-option>
                        <md-option value="1">Opcion 2</md-option>
                      </md-select>
                    </md-field>
                  </div>
                  <div class="md-layout-item md-size-15"> <!-- Moneda -->
                    <md-field>
                      <label>Moneda</label>
                      <md-select>
                        <md-option value="0">Opcion 1</md-option>
                        <md-option value="1">Opcion 2</md-option>
                      </md-select>
                    </md-field>
                  </div>
                  <div class="md-layout-item md-size-15"> <!-- Area -->
                    <md-field>
                      <label>Area</label>
                      <md-input></md-input>
                    </md-field>
                  </div>
                  <div class="md-layout-item md-size-15"> <!-- Precio -->
                    <md-field>
                      <label>Precio</label>
                      <md-input></md-input>
                    </md-field>
                  </div>
                  <div class="md-layout-item md-size-25"> <!-- Buscar -->
                    <md-field>
                      <label>Buscar...</label>
                      <md-input></md-input>
                    </md-field>
                  </div>
                  <!--  -->
                </div>
          </div>
          <div v-else>
            <div class="md-layout md-gutter">
                  <!--  -->
                  <div class="md-layout-item"> <!-- Buscar -->
                    <md-field>
                      <label>Buscar...</label>
                      <md-input></md-input>
                    </md-field>
                  </div>
                  <!--  -->
                </div>
          </div>
          <!--  -->
        </md-card-content>
        <md-card-content>
          <md-table v-model="data" :table-header-color="tableHeaderColor">
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
import matPaginator from "@/components/Tables/MatPaginator.vue";

export default {
  data() {
    return {
      advanced_filtering: false,
      data: [
        {
          id: 101,
          sociedad_id: 1,
          folio: "123sj112z1w235",
          plano: "k1r23qa22j34r",
          unidad: "Suite 225",
          area: 717,
          area_construida: 405,
          mostrar: 0,
          valor_libros: 3043890,
          valor_avaluo: 8855616,
          precio_prestamo: 1611687,
          precio_captura: 5050548,
          precio_venta: 8399289,
          fecha_avaluo: "1976-04-23T00:00:00.000Z",
          fecha_prestamo: "2010-08-15T00:00:00.000Z",
          fecha_captura: "2006-10-08T00:00:00.000Z",
          fecha_construccion: "2013-12-03T00:00:00.000Z",
          fecha_cambio_estado: "1996-08-30T00:00:00.000Z",
          fecha_recibo_expediente: "1999-02-22T00:00:00.000Z",
          fecha_inscripcion_registro_publico: "1998-02-24T00:00:00.000Z",
          fecha_llaves_entregadas: "1991-09-01T00:00:00.000Z",
          fecha_entregados_cobro: "2005-04-07T00:00:00.000Z",
          id_interno: "1234ik",
          propiedad_tipo_id: 2,
          cliente_id: null,
          comprador_id: null,
          propiedad_estado_id: 4,
          provision_regulatoria: 346717,
          dato_adjudicacion: null,
          departamento_origen_id: 4,
          porcentaje_reserva: 9982,
          llaves_tenemos: 0,
          llaves_entregadas: 1,
          expediente_entregados_cobro: 1,
          comentarios: "Ut enim et enim et.",
          anotaciones_especiales:
            "Non suscipit voluptas error aut tempora reprehenderit suscipit fuga.",
          direccion_id: 139,
          se_financia: 1,
          tipo_propiedad: "Local Comercial",
          departamento_origen: "Banca Empresas",
          sociedad: " Banco Nacional de Panamá",
          estado: "Por realizar Proceso de desalojo",
          detalle_direccion: "871 Johnson Mountain",
          pais: "Panama",
          provincia: "Bocas del Toro",
          distrito: "\tTolé\t"
        },
        {
          id: 102,
          sociedad_id: 1,
          folio: "123et112x1c235",
          plano: "j1q23rg22y34m",
          unidad: "Apt. 670",
          area: 734,
          area_construida: 254,
          mostrar: 1,
          valor_libros: 6365038,
          valor_avaluo: 1130253,
          precio_prestamo: 4292683,
          precio_captura: 9312982,
          precio_venta: 2851052,
          fecha_avaluo: "1977-04-26T00:00:00.000Z",
          fecha_prestamo: "2014-10-09T00:00:00.000Z",
          fecha_captura: "2015-01-24T00:00:00.000Z",
          fecha_construccion: "1997-11-26T00:00:00.000Z",
          fecha_cambio_estado: "2003-12-12T00:00:00.000Z",
          fecha_recibo_expediente: "1978-07-23T00:00:00.000Z",
          fecha_inscripcion_registro_publico: "2013-08-19T00:00:00.000Z",
          fecha_llaves_entregadas: "1990-09-17T00:00:00.000Z",
          fecha_entregados_cobro: "2003-02-09T00:00:00.000Z",
          id_interno: "1234oi",
          propiedad_tipo_id: 5,
          cliente_id: null,
          comprador_id: null,
          propiedad_estado_id: 2,
          provision_regulatoria: 849473,
          dato_adjudicacion: null,
          departamento_origen_id: 1,
          porcentaje_reserva: 5136,
          llaves_tenemos: 1,
          llaves_entregadas: 1,
          expediente_entregados_cobro: 1,
          comentarios:
            "Fugiat magni aliquam eveniet illo vel nesciunt molestiae.",
          anotaciones_especiales:
            "Velit consequatur voluptate doloribus repellat voluptas corporis.",
          direccion_id: 175,
          se_financia: 1,
          tipo_propiedad: "Terreno",
          departamento_origen: "Banca Agropecuaria",
          sociedad: " Banco Nacional de Panamá",
          estado: "Arrendamiento con opción a compra",
          detalle_direccion: "61220 Koch Meadows",
          pais: "Panama",
          provincia: "Colón",
          distrito: "\tPenonomé\t"
        },
        {
          id: 103,
          sociedad_id: 1,
          folio: "123nl112a1s235",
          plano: "c1l23yf22e34n",
          unidad: "Suite 034",
          area: 690,
          area_construida: 440,
          mostrar: 0,
          valor_libros: 7100704,
          valor_avaluo: 1784143,
          precio_prestamo: 5715489,
          precio_captura: 5903471,
          precio_venta: 1365432,
          fecha_avaluo: "2016-03-20T00:00:00.000Z",
          fecha_prestamo: "1975-09-07T00:00:00.000Z",
          fecha_captura: "2003-09-05T00:00:00.000Z",
          fecha_construccion: "2006-07-03T00:00:00.000Z",
          fecha_cambio_estado: "1993-05-30T00:00:00.000Z",
          fecha_recibo_expediente: "2017-08-03T00:00:00.000Z",
          fecha_inscripcion_registro_publico: "1983-10-03T00:00:00.000Z",
          fecha_llaves_entregadas: "1991-01-19T00:00:00.000Z",
          fecha_entregados_cobro: "1991-12-02T00:00:00.000Z",
          id_interno: "1234tn",
          propiedad_tipo_id: 1,
          cliente_id: null,
          comprador_id: null,
          propiedad_estado_id: 8,
          provision_regulatoria: 556503,
          dato_adjudicacion: null,
          departamento_origen_id: 1,
          porcentaje_reserva: 8310,
          llaves_tenemos: 0,
          llaves_entregadas: 1,
          expediente_entregados_cobro: 0,
          comentarios: "Nam quam amet illum qui laborum.",
          anotaciones_especiales: "Quae voluptatem eum aut molestias ratione.",
          direccion_id: 149,
          se_financia: 0,
          tipo_propiedad: "Apartamento",
          departamento_origen: "Banca Agropecuaria",
          sociedad: " Banco Nacional de Panamá",
          estado: "Vendida",
          detalle_direccion: "599 Macejkovic Plain",
          pais: "Panama",
          provincia: "Darién",
          distrito: "\tRenacimiento\t"
        },
        {
          id: 104,
          sociedad_id: 1,
          folio: "123qz112j1w235",
          plano: "y1t23je22u34s",
          unidad: "Apt. 489",
          area: 416,
          area_construida: 399,
          mostrar: 0,
          valor_libros: 223344,
          valor_avaluo: 3972846,
          precio_prestamo: 8591456,
          precio_captura: 3461812,
          precio_venta: 6730730,
          fecha_avaluo: "1985-10-15T00:00:00.000Z",
          fecha_prestamo: "1979-08-01T00:00:00.000Z",
          fecha_captura: "2003-09-09T00:00:00.000Z",
          fecha_construccion: "1977-08-16T00:00:00.000Z",
          fecha_cambio_estado: "2014-10-05T00:00:00.000Z",
          fecha_recibo_expediente: "1983-03-25T00:00:00.000Z",
          fecha_inscripcion_registro_publico: "1972-07-09T00:00:00.000Z",
          fecha_llaves_entregadas: "2017-03-09T00:00:00.000Z",
          fecha_entregados_cobro: "1987-09-20T00:00:00.000Z",
          id_interno: "1234ko",
          propiedad_tipo_id: 5,
          cliente_id: null,
          comprador_id: null,
          propiedad_estado_id: 8,
          provision_regulatoria: 979969,
          dato_adjudicacion: null,
          departamento_origen_id: 3,
          porcentaje_reserva: 5114,
          llaves_tenemos: 1,
          llaves_entregadas: 0,
          expediente_entregados_cobro: 1,
          comentarios: "Soluta maiores aliquam deleniti sed.",
          anotaciones_especiales:
            "Aut perferendis mollitia provident velit quos.",
          direccion_id: 167,
          se_financia: 0,
          tipo_propiedad: "Terreno",
          departamento_origen: "Banca Corporativa",
          sociedad: " Banco Nacional de Panamá",
          estado: "Vendida",
          detalle_direccion: "5374 Myrtie Summit",
          pais: "Panama",
          provincia: "Bocas del Toro",
          distrito: "\tSanta Isabel\t"
        },
        {
          id: 105,
          sociedad_id: 1,
          folio: "123ki112g1v235",
          plano: "l1l23xr22k34c",
          unidad: "Apt. 822",
          area: 882,
          area_construida: 395,
          mostrar: 1,
          valor_libros: 791215,
          valor_avaluo: 5177659,
          precio_prestamo: 3689847,
          precio_captura: 5011872,
          precio_venta: 3836830,
          fecha_avaluo: "1993-02-25T00:00:00.000Z",
          fecha_prestamo: "1992-08-16T00:00:00.000Z",
          fecha_captura: "2003-01-05T00:00:00.000Z",
          fecha_construccion: "1979-12-22T00:00:00.000Z",
          fecha_cambio_estado: "2009-11-12T00:00:00.000Z",
          fecha_recibo_expediente: "2004-08-14T00:00:00.000Z",
          fecha_inscripcion_registro_publico: "2010-11-19T00:00:00.000Z",
          fecha_llaves_entregadas: "1982-04-05T00:00:00.000Z",
          fecha_entregados_cobro: "2015-08-22T00:00:00.000Z",
          id_interno: "1234ed",
          propiedad_tipo_id: 6,
          cliente_id: null,
          comprador_id: null,
          propiedad_estado_id: 2,
          provision_regulatoria: 856314,
          dato_adjudicacion: null,
          departamento_origen_id: 3,
          porcentaje_reserva: 8150,
          llaves_tenemos: 1,
          llaves_entregadas: 0,
          expediente_entregados_cobro: 0,
          comentarios: "Ipsa voluptatibus voluptas voluptas nostrum.",
          anotaciones_especiales: "Molestiae sed officia quo commodi commodi.",
          direccion_id: 127,
          se_financia: 1,
          tipo_propiedad: "Condominio",
          departamento_origen: "Banca Corporativa",
          sociedad: " Banco Nacional de Panamá",
          estado: "Arrendamiento con opción a compra",
          detalle_direccion: "501 Laurine Dale",
          pais: "Panama",
          provincia: "Bocas del Toro",
          distrito: "\tChame\t"
        }
      ],
      params: {
        args: "",
        pageSize: 5,
        currentPage: 1,
        orderBy: "id",
        sortOrder: "asc"
      },
      tableHeaderColor: {
        type: String,
        default: "red"
      }
    };
  },
  methods:{
    switchAdvancedFilter(){
      this.advanced_filtering = !this.advanced_filtering;
    }
  },
  components: {
    matPaginator
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

.filtering{
  overflow-x: auto;
  > div {
    &:nth-child(1){
      min-width: 750px;
    }
  }
}

.filters-container{
  > div{
    transition: opacity .5s;
  }
}
</style>