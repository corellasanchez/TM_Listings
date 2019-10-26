<template>
  <div class="content">
    <div class="md-layout">
      <div class="md-layout-item md-medium-size-100 md-size-66">
        <property-details
          v-bind:data-background-color="headerBackground"
          v-bind:propiedad="propiedad">
        </property-details>
      </div>
      <div class="md-layout-item md-medium-size-100 md-size-33">
        <property-address
          v-bind:data-background-color="headerBackground"
          v-bind:propiedad="propiedad">
        </property-address>
      </div>
      <pre>{{propiedad}}</pre>
    </div>
  </div>
</template>

<script>
import {
  PropertyDetails,
  PropertyAddress
} from "../components/Layout/Property";

export default {
  data() {
    return {
      propiedad: {
        direccion: {}
      },
      headerBackground: "green"
    };
  },
  components: {
    PropertyDetails,
    PropertyAddress
  }
};
</script>
