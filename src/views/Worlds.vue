<template>
  <div>
    <ul>
      <li v-for="world in worldsComputed" :key="world.getId()">
        <img :src="world.getImageUrl()" alt="altText"/>
        <h1>{{ world.getName() }}</h1>
        <button @click.prevent="onClickEdit(world.getId())">
          Edit
        </button>
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