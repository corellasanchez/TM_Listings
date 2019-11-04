<template>
  <div class="content">
    <div class="md-layout">
      <div class="md-layout-item md-medium-size-100 md-size-66">
        <property-details
          v-bind:data-background-color="headerBackground"
          v-bind:propiedad="propiedad"
        ></property-details>
      </div>
      <div class="md-layout-item md-medium-size-100 md-size-33">
        <property-address
          v-bind:data-background-color="headerBackground"
          v-bind:propiedad="propiedad"
        ></property-address>
      </div>
      <div class="md-layout-item md-medium-size-100 md-size-66">
        <property-adjudication
          v-bind:data-background-color="headerBackground"
          v-bind:propiedad="propiedad"
        ></property-adjudication>
      </div>
      <div class="md-layout-item md-medium-size-100 md-size-33">
        <property-value
          v-bind:data-background-color="headerBackground"
          v-bind:propiedad="propiedad"
        ></property-value>
      </div>

      <div class="md-layout-item md-medium-size-100 md-size-100">
        <image-loader
          title="Fotos de la propiedad"
          v-bind:data-background-color="headerBackground"
          v-bind:images="propiedad.imagenes"
        ></image-loader>
      </div>
      <pre>{{propiedad}}</pre>
    </div>
  </div>
</template>

<script>
import {
  PropertyDetails,
  PropertyAddress,
  PropertyAdjudication,
  PropertyValue,
} from "../components/Layout/Property";

import ImageLoader from "../components/ImageLoader/ImageLoader"

// `fecha_cambio_estado` date DEFAULT NULL, recordar cambiar la fecha al actualizar si cambia
export default {
  data() {
    return {
      propiedad: {
        mostrar: "1",
        direccion: {},
        cliente: {},
        imagenes:[]
      },
      headerBackground: "green"
    };
  },
  components: {
    PropertyDetails,
    PropertyAddress,
    PropertyAdjudication,
    PropertyValue,
    ImageLoader
  }
};
</script>
