<template>
  <div class="w-full h-full">
    <div class="fixed flex z-50 items-center justify-center bg-smoke rounded-br-lg">
      <button v-click-outside.capture="closeNav" @click="onToggleNav" class="m-2 text-white outline-none">
        <font-awesome-icon v-if="toggleNav" icon="times" size="2x" />
        <font-awesome-icon v-else icon="bars" size="2x" />
      </button>
      <ul v-show="toggleNav" class="flex text-center">
        <router-link tag="li" to="/home" class="m-2 text-app-primary">
          <a class="">
            <font-awesome-icon icon="home" size="2x" />
          </a>
        </router-link>
        <router-link tag="li" to="/worlds" class="m-2 text-app-primary">
          <a>
            <font-awesome-icon icon="globe" size="2x" />
          </a>
        </router-link>
        <router-link tag="li" to="/locations" class="m-2 text-app-primary">
          <a>
            <font-awesome-icon icon="map-marked-alt" size="2x" />
          </a>
        </router-link>
        <router-link tag="li" to="/characters" class="m-2 text-app-primary">
          <a>
            <font-awesome-icon icon="users" size="2x" />
          </a>
        </router-link>
        <router-link tag="li" to="/artifacts" class="m-2 text-app-primary">
          <a>
            <font-awesome-icon icon="scroll" size="2x" />
          </a>
        </router-link>
        <router-link tag="li" to="/new-entity" class="m-2 text-app-primary">
          <a>
            <font-awesome-icon icon="plus" size="2x" />
          </a>
        </router-link>
        <router-link tag="li" to="/search" class="m-2 text-app-primary">
          <a>
            <font-awesome-icon icon="search" size="2x" />
          </a>
        </router-link>
      </ul>
    </div>

    <div class="w-full h-full">
      <router-view></router-view>
    </div>
  </div>
</template>

<script lang="ts">
import Vue from 'vue';
import Component from 'vue-class-component';
import * as vClickOutside from 'v-click-outside-x';

@Component({
  directives: {
    clickOutside: vClickOutside.directive,
  },
})
export default class AppSidebar extends Vue {
  private toggleNav: boolean;

  constructor() {
    super();
    this.toggleNav = false;
  }

  private onToggleNav(): void {
    this.toggleNav = !this.toggleNav;
  }

  private closeNav(): void {
    this.toggleNav = false;
  }
}
</script>

<style scoped>

</style>