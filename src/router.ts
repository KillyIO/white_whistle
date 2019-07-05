import Vue from 'vue';
import Router from 'vue-router';

import Home from '@/views/Home.vue';
import Worlds from '@/views/Worlds.vue';
// import Locations from './views/Locations.vue';
// import Characters from './views/Characters.vue';
// import Artifacts from './views/Artifacts.vue';
import NewEntity from '@/views/NewEntity.vue';
import WorldNew from '@/components/WorldNew.vue';
import WorldProfile from '@/components/WorldProfile.vue';
import Search from './views/Search.vue';

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
      path: '/new-entity',
      name: 'new-entity',
      component: NewEntity,
    },
    {
      path: '/new-entity/world',
      name: 'new-world',
      component: WorldNew,
    },
    {
      path: '/search',
      name: 'search',
      component: Search,
    },
  ],
});
