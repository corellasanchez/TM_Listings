<template>
  <div class="content">
    <div class="md-layout">
      <div class="md-layout-item md-medium-size-100 md-size-66">
        <property-details data-background-color="green"> </property-details>
      </div>
      <!-- <div class="md-layout-item md-medium-size-100 md-size-33">
        <user-card> </user-card>
      </div> -->
    </div>
  </div>
</template>

<script>
import { PropertyDetails } from "../components/Layout/Property";
import propertyService from "@/services/Property";
import sociedadService from "@/services/Sociedad";



export default {
  components: {
    PropertyDetails
  }
};
</script>
