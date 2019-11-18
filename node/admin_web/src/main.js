import Vue from 'vue';
import VueMaterial from "vue-material";
import { directive as vClickOutside } from "vue-clickaway";
import Chartist from "chartist";

import App from './App.vue';
import router from './router';
import store from './store';
import Notifications from "@/plugins/NotificationPlugin";
import SideBar from "@/plugins/SidebarPlugin";
import DropDown from "@/components/Dropdown.vue";

import "vue-material/dist/vue-material.min.css";
import "@/assets/scss/material-dashboard.scss";
import "@/assets/demo.css";

Vue.prototype.$Chartist = Chartist;

Vue.use(VueMaterial);
Vue.component("drop-down", DropDown);
Vue.directive("click-outside", vClickOutside);
Vue.use(SideBar);
Vue.use(Notifications);
Vue.use(require('vue-moment'));

Vue.config.productionTip = false;

new Vue({
  router,
  data: {
    Chartist: Chartist
  },
  store,
  render: (h) => { return h(App) }
}).$mount('#app')
