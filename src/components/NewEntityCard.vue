<template>
  <router-link tag="li" :to="{name: `${toLink}`}" class="cursor-pointer flex shadow rounded mx-4 px-2 pt-4 pb-2 w-48 h-64 bg-gray-200">
    <a class="relative w-full h-full">
      <h1 class="text-lg font-semibold">{{ entityTypeUpperCase }}</h1>
      <button class="absolute w-full shadow-md rounded inset-x-0 bottom-0 py-3 bg-blue-500 hover:bg-blue-800 text-white font-bold">Create {{ entityTypeButton }}</button>
    </a>
  </router-link>
</template>

<script lang="ts">
/* tslint:disable:no-console */

import Vue from 'vue';
import { Prop, Component } from 'vue-property-decorator';

@Component({})
export default class NewEntityCard extends Vue {
  @Prop() private toLink!: string;
  @Prop() private entityType!: string;

  private get entityTypeUpperCase() {
    return this.entityType.toUpperCase();
  }

  private get entityTypeButton() {
    if (this.entityType === 'artifact') {
      return `an ${this.entityType}`;
    }
    return `a ${this.entityType}`;
  }
}
</script>

<style scoped>

</style>