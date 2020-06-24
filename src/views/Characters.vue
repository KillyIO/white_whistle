<template>
  <div class="text-app-quinary force-overflow-main">
    <div class="container mx-auto px-2 py-8">
      <h1
        class="text-6xl text-center font-semibold border-b-2 border-app-quinary mx-2 mt-12 mb-8"
      >Characters</h1>
      <p v-if="isCharactersListEmptyComputed" class="text-center text-2xl mt-20">Data missing...</p>
      <ul v-else class="masonry-grid">
        <character-card
          v-for="character in filteredCharactersComputed"
          :key="character.Id"
          v-bind:Id="character.Id"
          v-bind:ImageUrl="character.ImageUrl"
          v-bind:Name="character.Name"
          v-bind:Firstname="character.Firstname"
          v-bind:Middlename="character.Middlename"
          v-bind:Lastname="character.Lastname"
          class="w-1/4 p-2"
        ></character-card>
      </ul>
    </div>
  </div>
</template>

<script lang="ts">
/* tslint:disable:no-console */

import Vue from 'vue';
import Component from 'vue-class-component';
import Macy from 'macy';

import CharacterCard from '@/components/CharacterCard.vue';

@Component({
  components: {
    CharacterCard,
  },
})
export default class Characters extends Vue {
  private filteredCharacters: object[];
  private isCharactersListEmpty: boolean;
  private macyGrid: any;

  constructor() {
    super();
    this.filteredCharacters = this.$store.getters.getCharacterCardFields;
    this.isCharactersListEmpty = false;
    console.log(this.filteredCharacters);
  }

  private created() {
    console.log(this.$route.name);
  }

  private mounted() {
    this.macyGrid = Macy({
      container: '.masonry-grid',
      trueOrder: false,
      waitForImages: true,
      margin: 0,
      columns: 4,
    });
  }

  private get filteredCharactersComputed(): object[] {
    return this.filteredCharacters;
  }

  private get isCharactersListEmptyComputed(): boolean {
    return (this.isCharactersListEmpty =
      this.filteredCharacters.length === 0 || this.filteredCharacters === undefined);
  }
}
</script>

<style scoped>

</style>