import Vue, { VNode } from 'vue';
import App from './App.vue';
import router from './router';
import store from './store';
import './registerServiceWorker';


import { library } from '@fortawesome/fontawesome-svg-core';
import {
  faArrowLeft,
  faGlobe,
  faHome,
  faMapMarkedAlt,
  faPlus,
  faScroll,
  faSearch,
  faTimes,
  faUsers,
} from '@fortawesome/free-solid-svg-icons';
import { FontAwesomeIcon } from '@fortawesome/vue-fontawesome';
import { webFrame } from 'electron';
import { DirectiveBinding } from 'vue/types/options';

webFrame.setZoomFactor(1.0);
webFrame.setVisualZoomLevelLimits(1, 1);

library.add(
  faArrowLeft,
  faGlobe,
  faHome,
  faMapMarkedAlt,
  faPlus,
  faScroll,
  faSearch,
  faTimes,
  faUsers,
);

Vue.component('font-awesome-icon', FontAwesomeIcon);
// Vue.directive('click-outside', {
//   bind(el: any, binding: any, vnode: any) {
//     console.log('bind called');
//     window.event = (event: any) => {
//       if (!(el == event.target || el.contains(event.target))) {
//         vnode.context[binding.expression](event);
//       }
//     };
//     document.body.addEventListener('click', window.event);
//   },
//   unbind(el: any) {
//     console.log('unbind called');
//     document.body.removeEventListener('click', window.event);
//   },
// });

Vue.config.productionTip = false;

new Vue({
  router,
  store,
  render: (h) => h(App),
}).$mount('#app');
