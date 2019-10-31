<template>
  <div class="md-layout-item md-medium-size-100 md-xsmall-size-100 md-size-100">
    <md-card>
      <md-card-header :data-background-color="config.header.color">
        <md-card-header-text>
          <div class="md-title">{{config.header.title}}</div>
          <div class="md-subhead">{{config.header.subtitle}}</div>
        </md-card-header-text>
        <md-menu class="add-button">
          <md-button
            class="md-icon-button md-fab md-mini md-seccondary"
            @click="switchAdvancedFilter()"
          >
            <md-icon>filter_list</md-icon>
          </md-button>
          <md-button
            v-if="config.header.create.enable"
            class="md-icon-button md-fab md-mini md-seccondary"
            @click="$router.push(config.header.create.route)"
          >
            <md-icon>add</md-icon>
          </md-button>
        </md-menu>
      </md-card-header>
      <md-card-content class="filters-container">
        <slot></slot>
      </md-card-content>
      <md-card-content>
        <md-table v-model="config.table.data" :table-header-color="config.header.color">
          <md-table-row slot="md-table-row" slot-scope="{ item }">
            <md-table-cell
              v-for="field in config.table.header"
              :md-label="field.label"
            >{{field.first}} {{item[field.column]}} {{field.last}}</md-table-cell>
          </md-table-row>
        </md-table>
        <matPaginator :meta="config.table.meta.pagination" :params="filtering"></matPaginator>
      </md-card-content>
    </md-card>
  </div>
</template>
<script>
import matPaginator from "@/components/Tables/MatPaginator.vue";
export default {
  components: {
    matPaginator
  },
  props: ["config", "filtering"],
  methods: {
    switchAdvancedFilter() {
      this.filtering.advanced = !this.filtering.advanced;
    }
  }
};
</script>