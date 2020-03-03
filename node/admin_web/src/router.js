import Vue from 'vue';
import Router from 'vue-router';
import Login from './views/Login.vue';
import Dashboard from './views/Dashboard.vue';
import Properties from './views/Properties.vue';
import AddProperty from './views/AddProperty.vue';
import AddVehicle from './views/AddVehicle.vue';
import Vehicles from './views/Vehicles.vue';
import Companias from './views/Companias.vue';
import Reports from './views/Reports.vue';
import Users from './views/Users.vue';
import AddUser from './views/AddUser.vue';
import AddCompany from './views/AddCompany.vue';

import DashboardLayout from "./components/Layout/DashboardLayout.vue";
import authService from "@/services/Auth";

Vue.use(Router);

let router = new Router({
  routes: [
    {
      path: '/login',
      name: 'login',
      component: Login
    },
    {
      path: "/",
      component: DashboardLayout,
      redirect: "/dashboard",
      children: [
        {
          path: "dashboard",
          name: "Dashboard",
          component: Dashboard,
          meta: { logued: true },
        },
        {
          path: "companias",
          name: "Compañias",
          component: Companias,
          meta: { logued: true },
        },
        {
          path: "properties",
          name: "Propiedades",
          component: Properties,
          meta: { logued: true },
        },
        {
          path: "add-property",
          name: "Agregar una propiedad",
          component: AddProperty,
          meta: { logued: true },
        },
        {
          path: "edit-property/:property_id",
          name: "Editar una propiedad",
          component: AddProperty,
          meta: { logued: true },
        },
        {
          path: "vehicles",
          name: "Vehiculos",
          component: Vehicles,
          meta: { logued: true },
        },
        {
          path: "reports",
          name: "Reportes",
          component: Reports,
          meta: { logued: true },
        },
        {
          path: "users",
          name: "Usuarios",
          component: Users,
          meta: { logued: true },
        },
        {
          path: "add-user",
          name: "Agregar un usuario",
          component: AddUser,
          meta: { logued: true }
        },
        {
          path: "add-company",
          name: "Agregar una compañia",
          component: AddCompany,
          meta: { logued: true }
        },
        {
          path: 'add-vehicle',
          name: 'Agregar un Vehiculo',
          component: AddVehicle,
          meta: { logued: true }
        },
        {
          path: "edit-user/:user_id",
          name: "Editar un Usuario",
          component: AddUser,
          meta: { logued: true },
        }
      ]
    }
  ],
  mode: 'history'
})

router.beforeEach(async (to, from, next) => {
  if (to.meta.logued) {
    let response = await authService.loguedCheck();
    if (response.data.error) {
      next({ name: 'login', query: { error: 'unauthorized' } })
    } else {
      next();
    }
  } else {
    next();
  }
});

export default router;