import Vue from 'vue';
import Router from 'vue-router';
// import Configuration from './views/Configuration.vue';
import Home from '@/views/Home.vue';
import Worlds from '@/views/Worlds.vue';
// import Locations from './views/Locations.vue';
// import Characters from './views/Characters.vue';
// import Artifacts from './views/Artifacts.vue';
import New from '@/views/New.vue';
import WorldNew from '@/components/WorldNew.vue';
import WorldProfile from '@/components/WorldProfile.vue';
// import Search from './views/Search.vue';

Vue.use(Router);

export default new Router({
  routes: [
    {
      path: '/',
      name: 'configuration',
      component: require('@/views/Configuration.vue').default,
    },
    {
      path: '/home',
      name: 'home',
      component: Home,
    },
    {
      path: '/worlds',
      name: 'worlds',
      component: Worlds,
    },
    {
      path: '/worlds/:Id',
      name: 'world-profile',
      component: WorldProfile,
      props: (route) => {
        const Id = Number.parseInt(route.params.Id, 10);
        return {
          Id,
        };
      },
    },
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
    {
      path: '/new',
      name: 'new',
      component: New,
    },
    {
      path: '/new/world',
      name: 'new-world',
      component: WorldNew,
    },
    // {
    //   path: '/search',
    //   name: 'search',
    //   component: Search,
    // },
  ],
});
