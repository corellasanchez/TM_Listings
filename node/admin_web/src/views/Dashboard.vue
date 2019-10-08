<template>
  <div>
    DENTRO
    <br />
    <button @click="logOff">LOG OFF</button>
  </div>
</template>
<script>
export default {
  mounted() {},
  methods: {
    logOff() {
        this.$router.push(`/`);
        window.localStorage.clear();
    }
  }
};
</script>