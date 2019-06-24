<template>
  <div class="fixed inset-0 w-full h-screen flex items-center justify-center bg-smoke-darker">
    <div class="w-full max-w-3xl bg-white shadow-lg rounded-lg p-8 text-center">
      <h1>Hey, something new in mind, huh?</h1>
      <ul class="flex">
        <router-link tag="li" :to="{name: 'new-world'}" class="flex-1 mr-2">
          <a>
            <h1>World</h1>
            <button >Create a world</button>
          </a>
        </router-link>
        <router-link tag="li" to="" class="flex-1 mr-2">
          <a>
            <h1>Location</h1>
            <button>Create a location</button>
          </a>
        </router-link>
        <router-link tag="li" to="" class="flex-1 mr-2">
          <a>
            <h1>Character</h1>
            <button>Create a character</button>
          </a>
        </router-link>
        <router-link tag="li" to="" class="flex-1 mr-2">
          <a>
            <h1>Artifact</h1>
            <button>Create a artifact</button>
          </a>
        </router-link>
      </ul>
    </div>
    <router-view/>>
  </div>
</template>

<script lang="ts">
/* tslint:disable:no-console */

import Vue from 'vue';
import Component from 'vue-class-component';

@Component({})
export default class New extends Vue {
  private created() {
    console.log(this.$route.name);
  }

  private close() {
    this.$emit('close');
  }
}
</script>

<style scoped>

</style>