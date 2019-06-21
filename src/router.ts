import Vue from 'vue';
import Router from 'vue-router';
import Configuration from './views/Configuration.vue';
import Home from './views/Home.vue';
// import Worlds from './views/Worlds.vue';
// import Locations from './views/Locations.vue';
// import Characters from './views/Characters.vue';
// import Artifacts from './views/Artifacts.vue';
// import Search from './views/Search.vue';

Vue.use(Router);

export default new Router({
  routes: [
    {
      path: '/',
      name: 'configuration',
      component: Configuration,
    },
    {
      path: '/home',
      name: 'home',
      component: Home,
    },
    // {
    //   path: '/worlds',
    //   name: 'worlds',
    //   component: Worlds,
    // },
    // {
    //   path: '/locations',
    //   name: 'locations',
    //   component: Locations,
    // },
    // {
    //   path: '/characters',
    //   name: 'characters',
    //   component: Characters,
    // },
    // {
    //   path: '/artifacts',
    //   name: 'artifacts',
    //   component: Artifacts,
    // },
    // {
    //   path: '/search',
    //   name: 'search',
    //   component: Search,
    // },
  ],
});
