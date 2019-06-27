<template>
  <div class="flex h-screen">
    <div class="w-24 fixed h-screen flex items-center justify-center bg-app-primary">
      <ul class="text-center">
        <router-link
          tag="li"
          to="/home"
          class="p-4 mb-2 shadow rounded-full hover:rounded-lg text-app-primary bg-app-secondary hover:bg-app-tertiary cursor-pointer"
        >
          <a class="">
            <small class="">HOME</small>
            <!-- <font-awesome-icon icon="home" /> -->
          </a>
        </router-link>
        <router-link tag="li" to="/worlds" class="p-4 mb-2 text-app-primary">
          <a>
            <small>WORLDS</small>
            <!-- <font-awesome-icon icon="globe" /> -->
          </a>
        </router-link>
        <router-link tag="li" to="/locations" class="p-4 mb-2 text-app-primary">
          <a>
            <small>REGIONS</small>
            <!-- <font-awesome-icon icon="map-marked-alt" /> -->
          </a>
        </router-link>
        <router-link tag="li" to="/characters" class="p-4 mb-2 text-app-primary">
          <a>
            <small>CHARACTERS</small>
            <!-- <font-awesome-icon icon="users" /> -->
          </a>
        </router-link>
        <router-link tag="li" to="/artifacts" class="p-4 mb-2 text-app-primary">
          <a>
            <small>ARTIFACTS</small>
            <!-- <font-awesome-icon icon="scroll" /> -->
          </a>
        </router-link>
        <router-link tag="li" to="/new-entity" class="p-4 mb-2 text-app-primary">
          <a>
            <small>NEW</small>
            <!-- <font-awesome-icon icon="plus" /> -->
          </a>
        </router-link>
        <router-link tag="li" to="/search" class="p-4 text-app-primary">
          <a>
            <small>SEARCH</small>
            <!-- <font-awesome-icon icon="search" /> -->
          </a>
        </router-link>
      </ul>
    </div>

    <div class="w-full h-screen ml-24 bg-app-secondary">
      <div class="container mx-auto">
        <router-view></router-view>
      </div>
    </div>
  </div>
</template>

<script lang="ts">
import Vue from 'vue';
import Component from 'vue-class-component';
import VueRouter from 'vue-router';

Component.registerHooks([
  'beforeRouteEnter',
  'beforeRouteLeave',
  'beforeRouteUpdate',
]);

@Component({})
export default class AppSidebar extends Vue {
  // private beforeRouteEnter(to: VueRouter, from: VueRouter, next: any) {
  //   console.log('beforeRouteEnter');
  //   next();
  // }

  // private beforeRouteLeave(to: VueRouter, from: VueRouter, next: any) {
  //   console.log('beforeRouteLeave');
  //   next();
  // }
}
</script>

<style scoped>

</style>