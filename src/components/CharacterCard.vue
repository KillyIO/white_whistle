<template>
  <router-link
    tag="li"
    :to="{ name: 'character-profile', params: { Id } }"
  >
  <div class="max-w-full relative">
    <div class="max-w-full overflow-hidden flex flex-col items-center bg-app-primary shadow-lg rounded-lg align-middle cursor-pointer opacity-75 hover:opacity-100">
      <img
        v-if="ImageUrl"
        :src="ImageUrl"
        alt="world banner"
        class="flex max-w-full relative bg-no-repeat bg-cover m-0 p-0 items-center justify-around rounded-lg" />
      <img v-else src="@/assets/-erwerwe-e.jpg" alt="derfault world banner" class="flex w-full relative bg-no-repeat bg-cover m-0 p-0 items-center justify-around rounded-lg">
    </div>
    <div class="w-full text-center text-2xl font-semibold text-white bg-smoke py-2 px-4 absolute bottom-0 rounded-b-lg">
      <h1>{{ Name }}</h1>
    </div>
  </div>
  </router-link>
</template>

<script lang="ts">
import Vue from 'vue';
import Component from 'vue-class-component';
import { Prop } from 'vue-property-decorator';

@Component({})
export default class CharacterCard extends Vue {
  @Prop() private Id!: number;
  @Prop() private ImageUrl!: string;
  @Prop() private Name!: string;
  @Prop() private Firstname!: string;
  @Prop() private Middlename!: string;
  @Prop() private Lastname!: string;
}
</script>

<style scoped>

</style>