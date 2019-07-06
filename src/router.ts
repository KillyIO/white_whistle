import Vue from 'vue';
import Router from 'vue-router';

import Home from '@/views/Home.vue';
import Worlds from '@/views/Worlds.vue';
import Regions from '@/views/Regions.vue';
import Characters from '@/views/Characters.vue';
// import Artifacts from './views/Artifacts.vue';
import NewEntity from '@/views/NewEntity.vue';
import WorldNew from '@/components/WorldNew.vue';
import RegionNew from '@/components/RegionNew.vue';
import CharacterNew from '@/components/CharacterNew.vue';
import WorldProfile from '@/components/WorldProfile.vue';
import RegionProfile from '@/components/RegionProfile.vue';
import CharacterProfile from '@/components/CharacterProfile.vue';
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
      path: '/world/:Id',
      name: 'world-profile',
      component: WorldProfile,
      props: (route) => {
        const Id = Number.parseInt(route.params.Id, 10);
        return {
          Id,
        };
      },
    },
    {
      path: '/regions',
      name: 'regions',
      component: Regions,
    },
    {
      path: '/region/:Id',
      name: 'region-profile',
      component: RegionProfile,
      props: (route) => {
        const Id = Number.parseInt(route.params.Id, 10);
        return {
          Id,
        };
      },
    },
    {
      path: '/characters',
      name: 'characters',
      component: Characters,
    },
    {
      path: '/character/:Id',
      name: 'character-profile',
      component: CharacterProfile,
      props: (route) => {
        const Id = Number.parseInt(route.params.Id, 10);
        return {
          Id,
        };
      },
    },
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
      path: '/new-entity/region',
      name: 'new-region',
      component: RegionNew,
    },
    {
      path: '/new-entity/character',
      name: 'new-character',
      component: CharacterNew,
    },
    {
      path: '/search',
      name: 'search',
      component: Search,
    },
  ],
});
