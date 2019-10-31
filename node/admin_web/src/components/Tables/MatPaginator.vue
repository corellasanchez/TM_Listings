<template>
  <div class="mat-paginator-container" v-if="params">
    <div class="mat-paginator-page-size">
      <span>Registros por pagina:</span>
      <md-field>
        <md-select v-model="params.pageSize">
          <md-option :value="5">5</md-option>
          <md-option :value="10">10</md-option>
          <md-option :value="25">25</md-option>
        </md-select>
      </md-field>
      <span v-if="meta">{{first}} - {{last}} de {{meta.total_pages}}</span>
    </div>
    <div class="mat-paginator-range-actions">
      <md-button class="md-fab" @click="toFirstPage">
        <md-icon>first_page</md-icon>
      </md-button>
      <md-button class="md-fab" @click="previousPage">
        <md-icon>chevron_left</md-icon>
      </md-button>
      <md-button class="md-fab" @click="nextPage">
        <md-icon>chevron_right</md-icon>
      </md-button>
      <md-button class="md-fab" @click="toLastPage">
        <md-icon>last_page</md-icon>
      </md-button>
    </div>
  </div>
</template>
<script>
export default {
  props: ["params", "meta"],
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
        this.params.currentPage === 1
          ? 1
          : (this.params.currentPage - 1) * this.params.pageSize + 1;
      this.last =
        (this.first === 1 ? 0 : this.first - 1) + this.params.pageSize;
    },
    toFirstPage() {
      this.params.currentPage = 1;
    },
    toLastPage() {
      this.params.currentPage = this.meta.total_pages;
    },
    nextPage() {
      let tempScope = this.params.currentPage + 1;
      tempScope > this.meta.total_pages
        ? (this.params.currentPage = this.meta.total_pages)
        : (this.params.currentPage = this.params.currentPage + 1);
    },
    previousPage() {
      let tempScope = this.params.currentPage - 1;
      tempScope < 1
        ? (this.params.currentPage = 1)
        : (this.params.currentPage = this.params.currentPage - 1);
    }
  },
  watch: {
    params: {
      handler() {
        this.loadRange();
      },
      deep: true
    }
  }
};
</script>
<style lang="scss">
.md-select-menu {
  width: 75px;
}
.mat-paginator-container {
  display: flex;
  align-items: center;
  justify-content: flex-end;
  min-height: 56px;
  padding: 0 8px;
  flex-wrap: wrap-reverse;
  width: 100%;

  > * {
    padding: 10px;
  }

  .mat-paginator-page-size {
    > * {
      display: inline-block;
      width: auto;
    }
    .md-select {
      width: 75px;
    }
  }

  .mat-paginator-range-actions {
    .md-ripple {
      padding-left: 0 !important;
      padding-right: 0 !important;
    }
    .md-button:not(.md-just-icon) .md-button-content i {
      font-size: 1.5rem !important;
    }
    .md-button {
      background-color: #ff5252 !important;
    }
  }

  span {
    padding: 10px;
  }
}
</style>