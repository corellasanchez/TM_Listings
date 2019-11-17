<template>
  <div class="content custom-paginator-style">
    <div class="md-layout" md-align="center">
      <div class="md-layout-item md-size-25 custom-label">
        <md-field>
          <label>Resultados por pagina:</label>
        </md-field>
      </div>
      <div class="md-layout-item md-size-20">
        <md-field>
          <md-select v-model="paginator.pageSize" @md-selected="resetCurrentPage();updateResult()">
            <md-option :value="5">5</md-option>
            <md-option :value="10">10</md-option>
            <md-option :value="25">25</md-option>
          </md-select>
        </md-field>
      </div>
      <div class="md-layout-item md-size-15 custom-label">
        <md-field>
          <label>{{first}} - {{last}} de {{meta.pagination.total_pages}}</label>
        </md-field>
      </div>
      <div class="md-layout-item md-size-30 custom-label custom-navigation">
        <md-field>
          <md-button
            class="md-icon-button md-fab"
            @click="toFirstPage"
            :data-background-color="theme_color"
          >
            <md-icon>first_page</md-icon>
          </md-button>
          <md-button
            class="md-icon-button md-fab"
            @click="previousPage"
            :data-background-color="theme_color"
          >
            <md-icon>chevron_left</md-icon>
          </md-button>
          <md-button
            class="md-icon-button md-fab"
            @click="nextPage"
            :data-background-color="theme_color"
          >
            <md-icon>chevron_right</md-icon>
          </md-button>
          <md-button
            class="md-icon-button md-fab"
            @click="toLastPage"
            :data-background-color="theme_color"
          >
            <md-icon>last_page</md-icon>
          </md-button>
        </md-field>
      </div>
    </div>
  </div>
</template>
<script>
export default {
  name: "base-paginator",
  props: {
    theme_color: {
      type: String,
      default: "red"
    },
    meta: {
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
    }
  },
  data() {
    return {
      first: null,
      last: null
    };
  },
  mounted() {
    this.loadRange();
  },
  methods: {
    loadRange() {
      this.first =
        this.paginator.currentPage === 1
          ? 1
          : (this.paginator.currentPage - 1) * this.paginator.pageSize + 1;
      this.last =
        (this.first === 1 ? 0 : this.first - 1) + this.paginator.pageSize;
    },
    toFirstPage() {
      this.paginator.currentPage = 1;
    },
    toLastPage() {
      this.paginator.currentPage = this.meta.pagination.total_pages;
    },
    nextPage() {
      let tempScope = this.paginator.currentPage + 1;
      tempScope > this.meta.pagination.total_pages
        ? (this.paginator.currentPage = this.meta.pagination.total_pages)
        : (this.paginator.currentPage = this.paginator.currentPage + 1);
    },
    previousPage() {
      let tempScope = this.paginator.currentPage - 1;
      tempScope < 1
        ? (this.paginator.currentPage = 1)
        : (this.paginator.currentPage = this.paginator.currentPage - 1);
    },
    updateResult() {
      this.$emit("updateResult");
    },
    resetCurrentPage() {
      this.paginator.currentPage = 1;
    }
  },
  watch: {
    paginator: {
      handler() {
        this.loadRange();
        this.updateResult();
      },
      deep: true
    }
  }
};
</script>
<style lang="scss">
.custom-paginator-style {
  width: 60%;
  margin: auto;
  .md-layout {
    margin: auto;
  }
}
.custom-label {
  .md-field {
    background-color: transparent !important;
    label {
      color: black;
    }
  }
  .md-field:not(.md-disabled):after {
    background-color: transparent !important;
  }
}
.custom-navigation {
  margin-top: -10px;
}
</style>