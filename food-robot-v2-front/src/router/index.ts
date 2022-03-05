import Vue from 'vue'
import VueRouter, { RouteConfig } from 'vue-router'
import Home from '../views/Home.vue'
import LoggedIn from '../views/LoggedIn.vue';

Vue.use(VueRouter)

const routes: Array<RouteConfig> = [
  {
    path: '/',
    name: 'LoggedIn',
    component: LoggedIn,
    children: [
      {
        path: '/',
        name: 'Home',
        component: Home

      },
      {
        path: '/takeshifts',
        name: 'TakeShifts',
        component: () => import(/* webpackChunkName: "take-shifts" */ '../views/TakeShifts.vue')
      },
      {
        path: '/yourshifts',
        name: 'YourShifts',
        component: () => import(/* webpackChunkName: "your-shifts" */ '../views/YourShifts.vue')
      },
      {
        path: '/volunteers',
        name: 'Volunteers',
        component: () => import(/* webpackChunkName: "volunteers" */ '../views/Volunteers.vue')
      }
    ]
  },
  {
    path: '/login',
    name: 'Login',
    component: () => import(/* webpackChunkName: "login" */ '../views/Login.vue')
  },

]

const router = new VueRouter({
  mode: 'history',
  base: process.env.BASE_URL,
  routes
})

export default router
