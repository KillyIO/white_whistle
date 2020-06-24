<template>
  <div class="fixed max-w-full max-h-full bg-white">
    <button
      v-on:click="$emit('close-modal')"
      class="fixed m-4 text-xl z-10 mb-64 text-sm hover:text-app-tertiary focus:outline-none"
    >
      <font-awesome-icon icon="times" />
    </button>
    <div class="fixed inset-0 w-full h-screen flex items-center justify-center bg-smoke-darkest">
      <ul v-show="toggleNav" class="text-center">
        <router-link tag="li" to="/home" class="m-2 text-app-quinary">
          <button v-on:click="$emit('close-modal')" class="focus:outline-none">
            <h1>HOME</h1>
          </button>
        </router-link>
        <router-link tag="li" to="/worlds" class="m-2 text-app-quinary">
          <button v-on:click="$emit('close-modal')" class="focus:outline-none">
            <h1>WORLDS</h1>
          </button>
        </router-link>
        <router-link tag="li" to="/regions" class="m-2 text-app-quinary">
          <button v-on:click="$emit('close-modal')" class="focus:outline-none">
            <h1>REGIONS</h1>
          </button>
        </router-link>
        <router-link tag="li" to="/characters" class="m-2 text-app-quinary">
          <button v-on:click="$emit('close-modal')" class="focus:outline-none">
            <h1>CHARACTERS</h1>
          </button>
        </router-link>
        <router-link tag="li" to="/artifacts" class="m-2 text-app-quinary">
          <a>
            <h1>ARTIFACTS</h1>
          </a>
        </router-link>
        <router-link tag="li" to="/new-entity" class="m-2 text-app-quinary">
          <button v-on:click="$emit('close-modal')" class="focus:outline-none">
            <font-awesome-icon icon="plus" />
          </button>
        </router-link>
        <router-link tag="li" to="/search" class="m-2 text-app-quinary">
          <button v-on:click="$emit('close-modal')" class="focus:outline-none">
            <font-awesome-icon icon="search" />
          </button>
        </router-link>
      </ul>
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
export default class NavModal extends Vue {
  private toggleNav: boolean;

  constructor() {
    super();
    this.toggleNav = true;
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