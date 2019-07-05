<template>
  <div class="text-app-quinary">
    <div class="container mx-auto px-2 py-8">
      <h1
        class="text-6xl text-center font-semibold border-b-2 border-app-quinary mx-2 mt-12 mb-8"
      >
        Worlds
      </h1>
      <ul class="flex flex-wrap w-full">
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
import { World } from '@/api';

import WorldCard from '@/components/WorldCard.vue';

@Component({
  components: {
    WorldCard,
  },
})
export default class Worlds extends Vue {
  private filteredWorlds: object[];
  private screenHeight: string;

  constructor() {
    super();
    this.filteredWorlds = this.$store.getters.getWorldCardFields;
    this.screenHeight = 'h-screen';
    console.log(this.filteredWorlds);
  }

  private created() {
    console.log(this.$route.name);
  }

  private get filteredWorldsComputed(): object[] {
    return this.filteredWorlds;
  }

  private onClickEdit(worldId: number) {
    this.$router.push({
      name: 'world-profile',
      params: {
        Id: worldId.toString(),
      },
    });
  }
}
</script>

<style scoped>

</style>