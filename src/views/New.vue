<template>
<!-- fixed inset-0 w-full h-screen flex items-center justify-center bg-smoke-darker -->
  <div class="fixed inset-0 w-full h-screen flex items-center justify-center bg-smoke-darkest">
    <!-- w-full max-w-3xl bg-white shadow-lg rounded-lg p-8 text-center -->
    <div class="w-11/12 bg-white shadow-lg rounded-lg p-8 text-center">
      <h1 class="text-lg font-bold pb-8">HEY, SOMETHING NEW IN MIND, HUH?</h1>
      <ul class="flex justify-around">
        <!-- make a compenent for new 'something' card -->
        <new-entity-card v-for="entity in entities" :key="entity.id" :toLink="entity.toLink" :entityType="entity.entityType">
        </new-entity-card>
      </ul>
    </div>
    <router-view/>
  </div>
</template>

<script lang="ts">
/* tslint:disable:no-console */

import Vue from 'vue';
import Component from 'vue-class-component';

import NewEntityCard from '@/components/NewEntityCard.vue';

interface EntityCard {
  toLink: string;
  entityType: string;
}

@Component({
  components: {
    NewEntityCard,
  },
})
export default class New extends Vue {
  private worldBackgroundUrl: string = require('@/assets/stephane-wootha-richard-l-autre-bout-du-monde.jpg');
  private entities: EntityCard[] = [
    { toLink: 'new-world', entityType: 'world' },
    { toLink: 'new-region', entityType: 'region' },
    { toLink: 'new-character', entityType: 'character' },
    { toLink: 'new-artifact', entityType: 'artifact' }];

  private created() {
    console.log(this.$route.name);
  }

  private close() {
    this.$emit('close');
  }
}
</script>

<style scoped>

</style>