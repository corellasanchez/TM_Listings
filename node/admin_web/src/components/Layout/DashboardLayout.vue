<template>
  <div class="wrapper" :class="{ 'nav-open': $sidebar.showSidebar }">
    <side-bar>
      <mobile-menu slot="content"></mobile-menu>
      <sidebar-link to="/dashboard">
        <md-icon>dashboard</md-icon>
        <p>Dashboard</p>
      </sidebar-link>

      <sidebar-link to="companias">
        <md-icon>apartment</md-icon>
        <p>Compañias</p>
      </sidebar-link>

      <sidebar-link to="/properties">
        <md-icon>house</md-icon>
        <p>Propiedades</p>
      </sidebar-link>
      <sidebar-link to="/vehicles">
        <md-icon>directions_car</md-icon>
        <p>Vehiculos</p>
      </sidebar-link>

      <sidebar-link to="reports">
        <md-icon>library_books</md-icon>
        <p>Reportes</p>
      </sidebar-link>

    </side-bar>
    <div class="main-panel">
      <top-navbar></top-navbar>
      <router-view />
    </div>
  </div>
</template>
<style lang="scss"></style>
<script>
import TopNavbar from "./TopNavbar.vue";
import MobileMenu from "./MobileMenu.vue";

export default {
  components: {
    TopNavbar,
    MobileMenu
  }
};
</script>
