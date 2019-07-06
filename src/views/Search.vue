<template>
  <div class="w-full">
    <section class="h-60 px-10 pt-32 mb-8 text-center">
      <h1 class="text-app-quinary text-4xl font-bold">Search for en entity</h1>
      <div class="container mx-auto py-8">
        <input
          v-model="SearchRegExp"
          class="w-9/12 h-16 text-white bg-app-secondary-darker border-b-4 focus:outline-none border-app-quinary focus:border-app-tertiary text-xl px-8"
          type="search"
          placeholder="Try searching for a character"
        />
      </div>
    </section>

    <section class="px-20">
      <div class="container mx-auto px-2 py-8">
        <h1 class="text-app-quinary mx-2 mb-4 text-4xl border-b-2 border-app-quinary">Worlds</h1>
        <ul class="flex flex-wrap w-full">
          <world-card
            v-for="world in filteredWorldsComputed"
            :key="world.Id"
            v-bind:Id="world.Id"
            v-bind:Name="world.Name"
            v-bind:ImageUrl="world.ImageUrl"
            class="w-1/4 p-2"
          >
          </world-card>
        </ul>
      </div>
      <div class="container mx-auto px-2 py-8">
        <h1 class="text-app-quinary mx-2 mb-4 text-4xl border-b-2 border-app-quinary">Regions</h1>
        <ul class="flex flex-wrap w-full">
          <region-card
            v-for="region in filteredRegionsComputed"
            :key="region.Id"
            v-bind:Id="region.Id"
            v-bind:Name="region.Name"
            v-bind:ImageUrl="region.ImageUrl"
            class="w-1/4 p-2"
          >
          </region-card>
        </ul>
      </div>
      <h1 class="text-app-quinary mx-2 mb-4 text-4xl border-b-2 border-app-quinary">Characters</h1>
      <h1 class="text-app-quinary mx-2 mb-4 text-4xl border-b-2 border-app-quinary">Artifacts</h1>
    </section>
  </div>
</template>

<script lang="ts">
/* tslint:disable:no-console */

import { Component, Vue } from 'vue-property-decorator';

import WorldCard from '@/components/WorldCard.vue';
import RegionCard from '@/components/RegionCard.vue';

@Component({
  components: {
    WorldCard,
    RegionCard,
  },
})
export default class Search extends Vue {
  private SearchRegExp: string = '';
  private filteredWorlds: object[];
  private filteredRegions: object[];

  constructor() {
    super();
    this.filteredWorlds = this.$store.getters.getWorldCardFields;
    this.filteredRegions = this.$store.getters.getRegionCardFields;
    // console.log(this.filteredWorlds);
  }

  private created() {
    console.log(this.$route.name);
  }

  private get filteredWorldsComputed(): object[] {
    const ri = new RegExp(this.SearchRegExp.toLowerCase(), 'i');

    return this.filteredWorlds.filter((el: any) => {
      return ri.test(el.Name.toLowerCase());
    });
  }

  private get filteredRegionsComputed(): object[] {
    const ri = new RegExp(this.SearchRegExp.toLowerCase(), 'i');

    return this.filteredRegions.filter((el: any) => {
      return ri.test(el.Name.toLowerCase());
    });
  }
}
</script>

<style scoped>

</style>