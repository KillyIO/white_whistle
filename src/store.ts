import Vue from 'vue';
import Vuex from 'vuex';

import { World, Region, Character } from '@/api';

Vue.use(Vuex);

export default new Vuex.Store({
  state: {
    worldId: 1,
    worlds: Array<World>(),
    regionId: 1,
    regions: Array<Region>(),
    characterId: 1,
    characters: Array<Character>(),
  },
  mutations: {
    setWorldId(state, Id: number) {
      state.worldId = Id;
    },
    setRegionId(state, Id: number) {
      state.regionId = Id;
    },
    setCharacterId(state, Id: number) {
      state.characterId = Id;
    },
    incrementWorldId(state) {
      state.worldId++;
    },
    incrementRegionId(state) {
      state.regionId++;
    },
    incrementCharacterId(state) {
      state.characterId++;
    },
    addWorld(state, world: World) {
      state.worlds.push(world);
    },
    addRegion(state, region: Region) {
      state.regions.push(region);
    },
    addCharacter(state, character: Character) {
      state.characters.push(character);
    },
  },
  actions: {
    setWorldId(context, Id: number) {
      context.commit('setWorldId', Id);
    },
    setRegionId(context, Id: number) {
      context.commit('setRegionId', Id);
    },
    setCharacterId(context, Id: number) {
      context.commit('setCharacterId', Id);
    },
    incrementWorldId(context) {
      context.commit('incrementWorldId');
    },
    incrementRegionId(context) {
      context.commit('incrementRegionId');
    },
    incrementCharacterId(context) {
      context.commit('incrementCharacterId');
    },
    addWorld(context, world: World) {
      return new Promise((resolve, reject) => {
        context.commit('addWorld', world);
        resolve();
      });
    },
    addRegion(context, region: Region) {
      return new Promise((resolve, reject) => {
        context.commit('addRegion', region);
        resolve();
      });
    },
    addCharacter(context, character: Character) {
      return new Promise((resolve, reject) => {
        context.commit('addCharacter', character);
        resolve();
      });
    },
  },
  getters: {
    getWorldId: (state) => state.worldId,
    getRegionId: (state) => state.regionId,
    getCharacterId: (state) => state.characterId,
    getWorlds: (state) => state.worlds,
    getRegions: (state) => state.regions,
    getCharacters: (state) => state.characters,
    getWorldsName: (state) => state.worlds.map((el: World) => {
      return ({ Id: el.getId(), Name: el.getName() });
    }),
    getRegionsName: (state) => state.regions.map((el: Region) => {
      return ({ Id: el.getId(), Name: el.getName() });
    }),
    getCharactersName: (state) => state.characters.map((el: Character) => {
      return ({
        Id: el.getId(), Name: el.getName(),
        Firstname: el.getFirstname(), Middlename: el.getMiddlename(), Lastname: el.getLastname(),
      });
    }),
    getWorldCardFields: (state) => state.worlds.map((el: World) => {
      return ({
        Id: el.getId(),
        Name: el.getName(),
        ImageUrl: el.getImageUrl(),
      });
    }),
    getRegionCardFields: (state) => state.regions.map((el: Region) => {
      return ({
        Id: el.getId(),
        Name: el.getName(),
        ImageUrl: el.getImageUrl(),
      });
    }),
    getCharacterCardFields: (state) => state.characters.map((el: Character) => {
      return ({
        Id: el.getId(),
        Name: el.getName(),
        ImageUrl: el.getImageUrl(),
        Firstname: el.getFirstname(),
        Middlename: el.getMiddlename(),
        Lastname: el.getLastname(),
      });
    }),
    getWorldById: (state, getters) => (Id: number) => {
      return getters.getWorlds.find((item: World) => item.getId() === Id);
    },
    getRegionById: (state, getters) => (Id: number) => {
      return getters.getRegions.find((item: Region) => item.getId() === Id);
    },
    getCharacterById: (state, getters) => (Id: number) => {
      return getters.getCharacters.find((item: Character) => item.getId() === Id);
    },
  },
});
