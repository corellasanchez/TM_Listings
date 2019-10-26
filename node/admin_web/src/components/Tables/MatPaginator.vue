<template>
  <div class="mat-paginator-container" v-if="params">
    <div class="mat-paginator-page-size">
      <span>Items per page:</span>
      <md-field>
        <md-select v-model="params.pageSize">
          <md-option :value="5">5</md-option>
          <md-option :value="25">25</md-option>
          <md-option :value="50">50</md-option>
        </md-select>
      </md-field>
      <span>1 - 4 of {{totalPages}}</span>
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
  props: ["params"],
  data() {
    return {
      totalPages: null
    };
  },
  methods: {
    toFirstPage() {
      //   this.params.currentPage = 1;
      console.log(this.params.totalPages);
    },
    toLastPage() {
      this.params.currentPage = this.params.totalPages;
    },
    nextPage() {
      let tempScope = this.params.currentPage + 1;
      tempScope > this.params.totalPages
        ? (this.params.currentPage = this.params.totalPages)
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
      handler(val, oldVal) {
        //   console.log(val);
        //   console.log(oldVal);
        //   this.totalPages = this.params.totalPages;
        //   console.log(this.totalPages);
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