<template>
  <div>
    <section class="h-60 p-10 text-center bg-gray-600">
      <!-- <h1 class="text-gray-800 text-4xl font-bold">Search for en entity</h1> -->
      <div class="container mx-auto py-8">
        <input class="w-9/12 h-16 px-3 rounded mb-8 focus:outline-none focus:shadow-outline text-xl px-8 shadow-lg" type="search" placeholder="Try searching for a character">
      </div>
    </section>

    <section class="h-screen p-10 bg-gray-200">
      <h1>Latest entities</h1>
    </section>
  </div>
</template>

<script lang="ts">
/* tslint:disable:no-console */

import Vue from 'vue';

export default class Search extends Vue {
  private created() {
    console.log(this.$route.name);
  }
}
</script>

<style scoped>

</style>