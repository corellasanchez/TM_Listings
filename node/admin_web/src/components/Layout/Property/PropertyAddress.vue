<template>
  <md-card>
    <md-card-header :data-background-color="dataBackgroundColor">
      <h4 class="title">Dirección de la propiedad</h4>
    </md-card-header>
    <md-card-content>
      <h6 class="category text-gray">CEO / Co-Founder</h6>
      <h4 class="card-title">Alec Thompson</h4>
      <p class="card-description">
        Don't be scared of the truth because we need to restart the human
        foundation in truth And I love you like Kanye loves Kanye I love Rick
        Owens’ bed design but the back is...
      </p>
      <md-field>
        <label>test</label>
        <md-input v-model="propiedad.test" required></md-input>
        <span class="md-error">There is an error</span>
      </md-field>

      <md-button class="md-round md-success">Follow</md-button>
    </md-card-content>
  </md-card>
</template>
<script>
export default {
  name: "property-address",
  props: {
    dataBackgroundColor: {
      type: String,
      default: ""
    },
    propiedad: {}
  },
  data() {
    return {};
  }
};
</script>
<style></style>
