<template>
  <div class="w-full py-20 px-10">
    <!-- Quotes, Overview, Banner -->
    <div class="flex w-full h-full">
      <section class="w-2/3 text-app-quinary">
        <h1 class="text-4xl">Quotes</h1>
        <h1 class="text-4xl">Overview</h1>
      </section>
      <section class="w-1/2 h-full relative">
        <label
          @click="onEditImageUrl"
          @mouseover="BannerIsHover = true"
          @mouseleave="BannerIsHover = false"
          class="w-full h-screen flex flex-col items-center justify-center bg-app-primary shadow-lg rounded-lg cursor-pointer opacity-100 hover:opacity-75"
        >
          <img
            :src="ImageUrl"
            alt="World profile picture"
            class="flex w-full h-full relative bg-no-repeat bg-cover m-0 p-0 items-center justify-around rounded">
          <input @change="onImageUrlChange($event.target.files[0])" type="file" name="Image" class="hidden">
          <font-awesome-icon v-if="BannerIsHover" icon="camera" size="8x" class="absolute opacity-50" />
        </label>

        <!-- Name -->
        <div class="z-10 w-full py-20 text-white absolute bottom-0 bg-smoke-darker text-center">
          <div
            @mouseover="NameIsHover = true"
            @mouseleave="NameIsHover = false"
            v-if="!isNameEditable" class="flex justify-center"
          >
            <h1 class="text-2xl mx-4 font-semibold tracking-widest">
              {{ nameComputed }}
            </h1>
            <button
              v-show="NameIsHover"
              :disabled="isNameEditable"
              @click="onEditName"
              class="focus:outline-none"
            >
              <font-awesome-icon icon="pen" />
            </button>
          </div>
          <div v-else class="">
            <div class="flex flex-col items-center mb-4">
              <input v-model="Firstname" type="text" class="w-64 text-lg bg-smoke-lightest border-b-4 p-2 mt-2 mb-4 focus:outline-none focus:border-app-tertiary" />
              <input v-model="Middlename" type="text" class="w-64 text-lg bg-smoke-lightest border-b-4 p-2 mt-2 mb-4 focus:outline-none focus:border-app-tertiary" />
              <input v-model="Lastname" type="text" class="w-64 text-lg bg-smoke-lightest border-b-4 p-2 mt-2 mb-4 focus:outline-none focus:border-app-tertiary" />
            </div>
            <div>
              <button
                @click="isNameEditable = false"
                class="shadow-md rounded mx-4 py-2 px-6 bg-app-tertiary hover:bg-app-primary font-semibold text-white"
              >
                Cancel
              </button>
              <button
                @click="onNameSave"
                class="shadow-md rounded mx-4 py-2 px-6 bg-app-tertiary hover:bg-app-primary font-semibold text-white"
              >
                Save
              </button>
            </div>
          </div>
        </div>
      </section>
    </div>
  </div>
</template>

<script lang="ts">
/* tslint:disable:no-console */

import Vue from 'vue';
import Component from 'vue-class-component';
import { Prop } from 'vue-property-decorator';

import Utils from '@/utils';
import { Character, AffiliatedRegion } from '@/api';

@Component({})
export default class CharacterProfile extends Vue {
  @Prop() private Id!: number;

  private utils: Utils = new Utils();

  private character: Character = this.$store.getters.getCharacterById(this.Id);

  // region properties
  private Name: string = this.character.getName() || '';
  private ImageUrl: string = this.character.getImageUrl() || '';
  private Region: AffiliatedRegion = this.character.getAffiliatedRegion() || undefined;
  private Firstname: string = this.character.getFirstname() || '';
  private Middlename: string = this.character.getMiddlename() || '';
  private Lastname: string = this.character.getLastname() || '';

  // isEditable properties
  private isNameEditable: boolean = false;
  private isImageUrlEditable: boolean = false;
  private isFirstnameEditable: boolean = false;
  private isMiddleEditable: boolean = false;
  private isLastnameEditable: boolean = false;
  private BannerIsHover: boolean = false;
  private NameIsHover: boolean = false;

  // Computed
  private get nameComputed(): string {
    return this.Name.toUpperCase();
  }

  // onEdit methods
  private onEditName() {
    this.isNameEditable = !this.isNameEditable;
  }

  private onEditImageUrl() {
    this.isImageUrlEditable = !this.isImageUrlEditable;
  }

  // onSave methods
  private onNameSave() {
    this.Name = `${this.Firstname} ${this.Middlename} ${this.Lastname}`;
    this.character.setName(this.Name);
    this.character.setFirstname(this.Firstname);
    this.character.setMiddlename(this.Middlename);
    this.character.setLastname(this.Lastname);
    this.isNameEditable = !this.isNameEditable;
  }

  // onChange
  private onImageUrlChange(file: any) {
    const reader: FileReader = new FileReader();

    reader.onload = (event: any) => {
      this.ImageUrl = event.target.result;
    };
    reader.readAsDataURL(file);
  }
}
</script>

<style scoped>

</style>