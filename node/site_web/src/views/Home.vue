<template>
  <div class="home">
    <div
      class="hero-wrap ftco-degree-bg"
      :style="{'background-image': 'url(' + imageUrl + ')'}"
      data-stellar-background-ratio="0.5"
    >
      <div class="overlay"></div>
      <div class="container">
        <div class="row no-gutters slider-text justify-content-center align-items-center">
          <div class="col-lg-8 col-md-6 d-flex align-items-end">
            <div class="text text-center">
              <h1 class="mb-4">
                Encuentra tu hogar soñado
                <br />Facíl y rápido.
              </h1>

              <form action="#" class="search-location mt-md-5">
                <div class="row justify-content-center">
                  <div class="col-lg-10 align-items-end">
                    <div class="form-group">
                      <div class="form-field">
                        <input type="text" class="form-control" placeholder="Buscar por Ubicación" />
                        <button>
                          <SearchIcon w="35" h="35" />
                        </button>
                      </div>
                    </div>
                  </div>
                </div>
              </form>
            </div>
          </div>
        </div>
      </div>
    </div>
    <section class="ftco-section ftco-no-pb">
      <div class="container">
        <div class="row justify-content-center">
          <div class="col-md-12 heading-section text-center mb-5">
            <span class="subheading">Nuestros Servicios</span>
            <h2 class="mb-2">La forma inteligente de comprar casa</h2>
          </div>
        </div>
        <div class="row d-flex">
          <div class="col-md-3 d-flex align-self-stretch">
            <div class="media block-6 services d-block text-center">
              <div class="icon d-flex justify-content-center align-items-center">
               <Heart class="main-icon" w="70" h="70" />
              </div>
              <div class="media-body py-md-4">
                <h3>Sin pago inicial</h3>
                <p>Lorem ipsum dolor sit amet consectetur adipiscing elit, felis taciti class malesuada proin tellus. </p>
              </div>
            </div>
          </div>
          <div class="col-md-3 d-flex align-self-stretch">
            <div class="media block-6 services d-block text-center">
              <div class="icon d-flex justify-content-center align-items-center">
                <Cash class="main-icon" w="70" h="70" />
              </div>
              <div class="media-body py-md-4">
                <h3>Oferta en efectivo</h3>
                <p>Wugiat sed ultrices quisque aptent ligula potenti cras justo, ad urna erat inceptos sollicitudin dignissim nullam.</p>
              </div>
            </div>
          </div>
          <div class="col-md-3 d-flex align-self-stretch">
            <div class="media block-6 services d-block text-center">
              <div class="icon d-flex justify-content-center align-items-center">
                 <Expert class="main-icon" w="70" h="70" />
              </div>
              <div class="media-body py-md-4">
                <h3>Asesorado por expertos</h3>
                <p>Ultrices quisque aptent ligula potenti cras justo, ad urna erat inceptos sollicitudin dignissim nullam. .</p>
              </div>
            </div>
          </div>
          <div class="col-md-3 d-flex align-self-stretch">
            <div class="media block-6 services d-block text-center">
              <div class="icon d-flex justify-content-center align-items-center">
                 <Price class="main-icon" w="70" h="70" />
              </div>
              <div class="media-body py-md-4">
                <h3>El mejor precio</h3>
                <p>Vel tristique molestie sem venenatis id pellentesque quam dapibus aptent dictumst primis, nisi neque aliquet et .</p>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
  </div>
</template>

<script>
// @ is an alias to /src
import HelloWorld from "@/components/HelloWorld.vue";
import SearchIcon from "vue-ionicons/dist/ios-search.vue";
import Heart from "vue-ionicons/dist/ios-heart-empty";
import Cash from "vue-ionicons/dist/ios-cash";
import Expert from "vue-ionicons/dist/ios-school";
import Price from "vue-ionicons/dist/ios-pricetag"
export default {
  name: "home",
  components: {
    HelloWorld,
    SearchIcon,
    Heart,
    Cash,
    Expert,
    Price
  },
  data() {
    return {
      imageUrl: require("@/assets/images/bg_2.jpg")
    };
  },
  mounted() {
    // this.imageUrl = require("@/assets/images/bg_1.jpg");
  }
};
</script>
