<template>
  <!-- <transition enter-active-class="animated zoomIn" leave-active-class="animated zoomOut faster"> -->
    <div class="fixed inset-0 w-full h-screen flex items-center justify-center bg-smoke-darker">
      <div v-click-outside.capture="onClose" class="w-auto bg-white shadow-lg rounded-lg py-8 px-4 text-center">
        <h1 class="text-lg font-bold pb-8">HEY, SOMETHING NEW IN MIND, HUH?</h1>
        <ul class="flex justify-around">
          <new-entity-card
            v-for="entity in entities"
            :key="entity.id"
            :toLink="entity.toLink"
            :entityType="entity.entityType">
          </new-entity-card>
        </ul>
      </div>
      <router-view/>
    </div>
  <!-- </transition> -->
</template>

<script lang="ts">
/* tslint:disable:no-console */

import Vue from 'vue';
import Component from 'vue-class-component';
import * as vClickOutside from 'v-click-outside-x';

import NewEntityCard from '@/components/NewEntityCard.vue';
import { Watch } from 'vue-property-decorator';

interface EntityCard {
  toLink: string;
  entityType: string;
}

@Component({
  components: {
    NewEntityCard,
  },
  directives: {
    clickOutside: vClickOutside.directive,
  },
})
export default class NewEntity extends Vue {
  private worldBackgroundUrl: string = require('@/assets/stephane-wootha-richard-l-autre-bout-du-monde.jpg');
  private entities: EntityCard[] = [
    { toLink: 'new-world', entityType: 'world' },
    { toLink: 'new-region', entityType: 'region' },
    { toLink: 'new-character', entityType: 'character' },
    { toLink: 'new-artifact', entityType: 'artifact' }];

  private created() {
    console.log(this.$route.name);
  }

  private onClose(event: any) {
    if (window.history.length > 1) {
      this.$router.go(-1);
    }
  }
}
</script>

<style scoped>

</style>