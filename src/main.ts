import Vue, { VNode } from 'vue';
import App from './App.vue';
import router from './router';
import store from './store';
import './registerServiceWorker';

import { library } from '@fortawesome/fontawesome-svg-core';
import {
  faAngleDown,
  faArrowLeft,
  faBars,
  faCamera,
  faGlobe,
  faHome,
  faMapMarkedAlt,
  faPen,
  faPenAlt,
  faPenFancy,
  faPlus,
  faScroll,
  faSearch,
  faTimes,
  faUsers,
} from '@fortawesome/free-solid-svg-icons';
import { FontAwesomeIcon } from '@fortawesome/vue-fontawesome';
import { webFrame } from 'electron';

webFrame.setZoomFactor(1.0);
webFrame.setVisualZoomLevelLimits(1, 1);

library.add(
  faAngleDown,
  faArrowLeft,
  faBars,
  faCamera,
  faGlobe,
  faHome,
  faMapMarkedAlt,
  faPen,
  faPenAlt,
  faPenFancy,
  faPlus,
  faScroll,
  faSearch,
  faTimes,
  faUsers,
);

Vue.component('font-awesome-icon', FontAwesomeIcon);

Vue.config.productionTip = false;

new Vue({
  router,
  store,
  render: (h) => h(App),
}).$mount('#app');
