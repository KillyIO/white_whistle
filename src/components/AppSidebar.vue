<template>
  <div class="flex z-40 items-center justify-center bg-smoke rounded-br-lg">
    <button
      v-click-outside.capture="closeNav"
      @click="onToggleNav"
      class="m-2 mt-2 text-app-quinary focus:outline-none"
    >
      <font-awesome-icon v-if="toggleNav" icon="times" />
      <font-awesome-icon v-else icon="bars" />
    </button>
    <ul v-show="toggleNav" class="flex text-center">
      <router-link tag="li" to="/home" class="m-2 text-app-quinary">
        <a class="">
          <font-awesome-icon icon="home" />
        </a>
      </router-link>
      <router-link tag="li" to="/worlds" class="m-2 text-app-quinary">
        <a>
          <font-awesome-icon icon="globe" />
        </a>
      </router-link>
      <router-link tag="li" to="/regions" class="m-2 text-app-quinary">
        <a>
          <font-awesome-icon icon="map-marked-alt" />
        </a>
      </router-link>
      <router-link tag="li" to="/characters" class="m-2 text-app-quinary">
        <a>
          <font-awesome-icon icon="users" />
        </a>
      </router-link>
      <router-link tag="li" to="/artifacts" class="m-2 text-app-quinary">
        <a>
          <font-awesome-icon icon="scroll" />
        </a>
      </router-link>
      <router-link tag="li" to="/new-entity" class="m-2 text-app-quinary">
        <a>
          <font-awesome-icon icon="plus" />
        </a>
      </router-link>
      <router-link tag="li" to="/search" class="m-2 text-app-quinary">
        <a>
          <font-awesome-icon icon="search" />
        </a>
      </router-link>
    </ul>
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
export default class AppSideBar extends Vue {
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