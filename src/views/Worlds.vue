<template>
  <div class="h-screen text-app-quinary force-overflow-main">
    <div class="container mx-auto px-2 py-8">
      <h1
        class="text-6xl text-center font-semibold border-b-2 border-app-quinary mx-2 mt-12 mb-8"
      >Worlds</h1>
      <p v-if="isWorldsListEmptyComputed" class="text-center text-2xl mt-20">Data missing...</p>
      <ul v-else class="masonry-grid">
        <world-card
          v-for="world in filteredWorldsComputed"
          :key="world.Id"
          v-bind:Id="world.Id"
          v-bind:Name="world.Name"
          v-bind:ImageUrl="world.ImageUrl"
          class="w-1/4 p-2"
        ></world-card>
      </ul>
    </div>
  </div>
</template>

<script lang="ts">
/* tslint:disable:no-console */

import Vue from 'vue';
import Component from 'vue-class-component';
import Macy from 'macy';

import { World } from '@/api';
import WorldCard from '@/components/WorldCard.vue';

@Component({
  components: {
    WorldCard,
  },
})
export default class Worlds extends Vue {
  private filteredWorlds: object[];
  private isWorldsListEmpty: boolean;
  private macyGrid: any;

  constructor() {
    super();
    this.filteredWorlds = this.$store.getters.getWorldCardFields;
    this.isWorldsListEmpty = false;
    console.log(this.filteredWorlds);
  }

  private created() {
    console.log(this.$route.name);
  }

  private mounted() {
    this.macyGrid = Macy({
      container: '.masonry-grid',
      trueOrder: false,
      waitForImages: true,
      margin: 0,
      columns: 4,
    });
  }

  private get filteredWorldsComputed(): object[] {
    return this.filteredWorlds;
  }

  private get isWorldsListEmptyComputed(): boolean {
    return (this.isWorldsListEmpty =
      this.filteredWorlds.length === 0 || this.filteredWorlds === undefined);
  }
}
</script>

<style scoped>
</style>