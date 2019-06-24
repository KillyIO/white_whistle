import Vue from 'vue';
import Vuex from 'vuex';

import { World } from '@/api';

Vue.use(Vuex);

export default new Vuex.Store({
  state: {
    worldId: 1,
    worlds: Array<World>(),
  },
  mutations: {
    setWorldId(state, Id: number) {
      state.worldId = Id;
    },
    incrementWorldId(state) {
      state.worldId++;
    },
    addWorld(state, world: World) {
      state.worlds.push(world);
    },
  },
  actions: {
    setWorldId(context, Id: number) {
      context.commit('setWorldId', Id);
    },
    incrementWorldId(context) {
      context.commit('incrementWorldId');
    },
    addWorld(context, world: World) {
      return new Promise((resolve, reject) => {
        context.commit('addWorld', world);
        resolve();
      });
    },
  },
  getters: {
    getWorldId: (state) => state.worldId,
    getWorlds: (state) => state.worlds,
    getWorldById: (state) => (Id: number) => {
      return state.worlds.find((item) => item.getId() === Id);
    },
  },
});
