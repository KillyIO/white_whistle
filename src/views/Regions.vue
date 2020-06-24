<template>
  <div class="h-screen text-app-quinary force-overflow-main">
    <div class="container mx-auto px-2 py-8">
      <h1
        class="text-6xl text-center font-semibold border-b-2 border-app-quinary mx-2 mt-12 mb-8"
      >Regions</h1>
      <p v-if="isRegionsListEmptyComputed" class="text-center text-2xl mt-20">Data missing...</p>
      <ul v-else class="masonry-grid">
        <region-card
          v-for="region in filteredRegionsComputed"
          :key="region.Id"
          v-bind:Id="region.Id"
          v-bind:Name="region.Name"
          v-bind:ImageUrl="region.ImageUrl"
          class="w-1/4 p-2"
        ></region-card>
      </ul>
    </div>
  </div>
</template>

<script lang="ts">
/* tslint:disable:no-console */

import Vue from 'vue';
import Component from 'vue-class-component';
import Macy from 'macy';

import RegionCard from '@/components/RegionCard.vue';

@Component({
  components: {
    RegionCard,
  },
})
export default class Regions extends Vue {
  private filteredRegions: object[];
  private isRegionsListEmpty: boolean;
  private macyGrid: any;

  constructor() {
    super();
    this.filteredRegions = this.$store.getters.getRegionCardFields;
    this.isRegionsListEmpty = false;
    console.log(this.filteredRegions);
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

  private get filteredRegionsComputed(): object[] {
    return this.filteredRegions;
  }

  private get isRegionsListEmptyComputed(): boolean {
    return (this.isRegionsListEmpty =
      this.filteredRegions.length === 0 || this.filteredRegions === undefined);
  }
}
</script>

<style scoped>
</style>