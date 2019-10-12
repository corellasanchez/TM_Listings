import Vue from 'vue';
import Router from 'vue-router';
import Login from './views/Login.vue';
import Dashboard from './views/Dashboard.vue';
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
        }
      ]
    }
  ]
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