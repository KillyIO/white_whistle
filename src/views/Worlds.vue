<template>
  <div class="px-4 py-8">
    <h1 class="text-6xl font-extrabold border-b-2 border-gray-500 mb-8">Worlds</h1>
    <ul class="flex">
      <li
        v-for="world in worldsComputed"
        :key="world.getId()"
        class="w-1/4 m-4">
        <div class="w-full h-full block relative">
          <div
            class="w-full h-full flex flex-col items-center bg-white shadow-lg rounded-lg align-middle cursor-pointer opacity-75 hover:opacity-100">
            <img
              :src="world.getImageUrl()"
              alt="world banner"
              class="flex w-full h-full bg-no-repeat bg-cover m-0 p-0 relative items-center justify-around rounded-lg" />
            <h1
              class="m-0 text-2xl font-bold text-white p-4 absolute bottom-0">
              {{ world.getName() }}
            </h1>
          </div>
        </div>
      </li>
    </ul>
  </div>
</template>

<script lang="ts">
/* tslint:disable:no-console */

import Vue from 'vue';
import Component from 'vue-class-component';
import { World } from '@/api';

@Component({})
export default class Worlds extends Vue {
  private worlds: World[];

  constructor() {
    super();
    this.worlds = this.$store.getters.getWorlds;
  }

  private created() {
    console.log(this.$route.name);
  }

  private get worldsComputed(): World[] {
    return this.worlds;
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