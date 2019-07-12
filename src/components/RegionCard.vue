<template>
  <router-link
    tag="li"
    :to="{ name: 'region-profile', params: { Id } }"
  >
    <div class="max-w-full relative">
      <div class="max-w-full overflow-hidden flex flex-col items-center bg-app-primary shadow-lg rounded-lg align-middle cursor-pointer opacity-75 hover:opacity-100">
        <img
          v-if="ImageUrl"
          :src="ImageUrl"
          alt="world banner"
          class="flex max-w-full relative bg-no-repeat bg-cover m-0 p-0 items-center justify-around rounded-lg" />
        <img v-else src="@/assets/jan-urschel-gis-ju-deepdive01-d1.jpg" alt="derfault world banner">
        <h1
          class="w-full text-center text-2xl font-semibold text-white bg-smoke p-1 absolute bottom-0 rounded-lg">
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
export default class RegionCard extends Vue {
  @Prop() private Id!: number;
  @Prop() private ImageUrl!: string;
  @Prop() private Name!: string;
}
</script>

<style scoped>

</style>