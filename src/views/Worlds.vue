<template>
  <div class="container mx-auto px-2 py-8" :class="modifyHeightClass">
    <h1
      class="text-6xl font-extrabold font-serif text-app-primary border-b-2 border-gray-500 mx-2 mb-8"
    >
      Worlds
    </h1>
    <ul class="flex flex-wrap w-full">
      <entity-card
        v-for="world in worldsComputed"
        :key="world.getId()"
        v-bind:Id="world.getId()"
        v-bind:ImageUrl="world.getImageUrl()"
        v-bind:Name="world.getName()"
        class="w-1/4 p-2"
      ></entity-card>
    </ul>
  </div>
</template>

<script lang="ts">
/* tslint:disable:no-console */

import Vue from 'vue';
import Component from 'vue-class-component';
import { World } from '@/api';

import EntityCard from '@/components/EntityCard.vue';

@Component({
  components: {
    EntityCard,
  },
})
export default class Worlds extends Vue {
  private worlds: World[];
  private screenHeight: string;

  constructor() {
    super();
    this.worlds = this.$store.getters.getWorlds;
    this.screenHeight = 'h-screen';
    console.log(this.worlds);
  }

  private created() {
    console.log(this.$route.name);
  }

  private get worldsComputed(): World[] {
    return this.worlds;
  }

  private get modifyHeightClass(): string {
    return this.worlds.length > 12 ? 'h-full' : 'h-screen';
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