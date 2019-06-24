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
import WorldEdit from '@/components/WorldEdit.vue';
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
      path: '/worlds/:id',
      name: 'world-profile',
      component: WorldProfile,
    },
    {
      path: '/worlds/:Id/edit',
      name: 'edit-world',
      component: WorldEdit,
      props: true,
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
