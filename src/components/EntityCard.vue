<template>
  <router-link
    tag="li"
    :to="{ name: 'world-profile', params: { Id } }"
  >
    <div class="w-full h-full block relative">
      <div
        class="w-full h-full flex flex-col items-center bg-app=primary shadow-lg rounded-lg align-middle cursor-pointer opacity-75 hover:opacity-100">
        <img
          v-if="ImageUrl"
          :src="ImageUrl"
          alt="world banner"
          class="flex w-full h-full bg-no-repeat bg-cover m-0 p-0 relative items-center justify-around rounded" />
        <img v-else src="@/assets/jan-urschel-gis-ju-deepdive01-d1.jpg" alt="derfault world banner">
        <h1
          class="m-0 text-2xl font-bold text-app-secondary p-4 absolute bottom-0">
          {{ Name }}
        </h1>
      </div>
    </div>
  </router-link>
</template>

<script lang="ts">
import Vue from 'vue';
import Component from 'vue-class-component';
import { Prop } from 'vue-property-decorator';

@Component({})
export default class EntityCard extends Vue {
  @Prop() private Id!: number;
  @Prop() private ImageUrl!: string;
  @Prop() private Name!: string;
}
</script>

<style scoped>

</style>