<template>
  <div class="content">
    <div class="layout">
      <md-card>
        <md-card-header class="custom-header-section" :data-background-color="theme_color">
          <md-card-header-text>
            <div class="md-title">{{messages.headerTitle}}</div>
            <div class="md-subhead" v-if="messages.headerSubtitle">{{messages.headerSubtitle}}</div>
          </md-card-header-text>
          <md-menu>
            <md-button class="md-icon-button md-fab" @click="$router.push(add_route)">
              <md-icon>add</md-icon>
            </md-button>
          </md-menu>
        </md-card-header>
        <div>
          <md-tabs
            class="custom-filter-section"
            md-alignment="centered"
            @md-changed="resetFiltering()"
          >
            <md-tab md-label="Busqueda Simple">
              <div class="tab-content container">
                <div class="md-layout">
                  <div class="md-layout-item md-size-95">
                    <md-field>
                      <label>Buscar...</label>
                      <md-input v-model="pars.query" @keyup.enter="updateResult()"></md-input>
                    </md-field>
                  </div>
                  <div class="md-layout-item md-size-5">
                    <md-button
                      class="md-icon-button md-fab"
                      :data-background-color="theme_color"
                      @click="updateResult()"
                    >
                      <md-icon>search</md-icon>
                    </md-button>
                  </div>
                </div>
              </div>
            </md-tab>
            <md-tab md-label="Busqueda Avanzada" v-if="advanced_filter">
              <div class="tab-content container">
                <slot name="advanced_filter"></slot>
              </div>
            </md-tab>
          </md-tabs>
        </div>
        <md-card-content>
          <md-table
            v-model="data.data"
            md-fixed-header
            :table-header-color="theme_color"
            style="max-height: 325px !important;"
          >
            <md-table-row slot="md-table-row" slot-scope="{ item }">
              <md-table-cell
                v-for="field in fields"
                :md-label="field.label"
              >{{field.first}} {{item[field.column]}} {{field.last}}</md-table-cell>
            </md-table-row>
            <md-table-empty-state
              :md-label="messages.noResTitle"
              :md-description="messages.noResSubtitle"
            >
              <slot name="table_no_results"></slot>
            </md-table-empty-state>
          </md-table>
        </md-card-content>
        <div>
          <base-paginator
            v-if="data.meta.pagination.total > 5"
            :theme_color="theme_color"
            :meta="data.meta"
            :paginator="paginator"
            @updateResult="updateResult"
          ></base-paginator>
        </div>
      </md-card>
    </div>
  </div>
</template>
<script>
import basePaginator from "@/components/Tables/BasePaginator";
export default {
  components: {
    basePaginator
  },
  name: "base-table",
  props: {
    theme_color: {
      type: String,
      default: "red"
    },
    advanced_filter: {
      type: Boolean,
      default: false
    },
    messages: {
      type: Object,
      default: function() {
        return {
          headerTitle: "Titulo por defecto",
          headerSubtitle: null,
          noResTitle: "Titulo por defecto",
          noResSubtitle: "Subtitulo por defecto"
        };
      }
    },
    data: {
      type: Object,
      default: function() {
        return null;
      }
    },
    fields: {
      type: Array,
      default: function() {
        return null;
      }
    },
    pars: {
      type: Object,
      default: function() {
        return null;
      }
    },
    paginator: {
      type: Object,
      default: function() {
        return null;
      }
    },
    add_route:{
      type: String,
      default: ''
    }
  },
  methods: {
    updateResult() {
      this.$emit("updateResult");
    },
    resetFiltering() {
      this.$emit("resetFiltering");
    }
  }
};
</script>
<style lang="scss">
.custom-filter-section {
  margin-top: -50px;
  .md-tabs-navigation {
    background-color: transparent !important;
    padding: 15px !important;
    box-shadow: none !important;
  }
  .tab-content,
  .md-content {
    background-color: transparent !important;
  }
  .tab-content {
    padding-top: 25px;
    padding-bottom: 25px;
    .md-layout {
      width: 100%;
    }
  }
}
.custom-header-section {
  .md-menu {
    margin-top: 10px;
    margin-right: 25px;
    .md-ripple {
      background-color: white;
      i {
        color: black !important;
      }
    }
  }
}
</style>