<template>
  <div class="w-full h-full pb-20 text-white bg-smoke-darker">
    <section class="w-full h-full relative">
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
    </section>

    <!-- Name -->
    <div class="z-10 w-full py-20 text-app-secondary absolute bottom-0 bg-smoke-darker">
      <div class="flex items-center justify-center">
        <h1
          v-if="!isNameEditable"
          @click="onEditName"
          class="text-8xl font-bold tracking-widest font-serif cursor-pointer"
        >
          {{ nameComputed }}
        </h1>
        <div v-else>
          <input v-model="Name" type="text" name="Name">
          <button @click="onNameSave">Save</button>
        </div>
      </div>
    </div>

    <!-- Genesis -->
    <section class="w-full mt-40 text-center">
      <div class="flex mb-32 justify-center">
        <h1 class="mx-3 font-serif text-4xl">GENESIS</h1>
        <button @click="onEditCreation" class="focus:outline-none"><font-awesome-icon icon="pen" /></button>
      </div>
      <div v-if="!isCreationEditable">
        <p v-if="creationComputed === 'UNKNOWN'" class="font-serif text-basemx-120">
          Missing data...
        </p>
        <p v-else class="font-serif text-base text-left mx-120">
          {{ creationComputed }}
        </p>
      </div>
      <div v-else>
        <textarea
          v-model="Creation"
          name="Creation"
          cols="100"
          rows="10"
          class="p-2 bg-smoke-dark focus:outline-none shadow-lg resize-none"
        >
        </textarea>
        <button @click="onCreationSave">Save</button>
      </div>
    </section>
  </div>
</template>

<script lang="ts">
/* tslint:disable:no-console */

import Vue from 'vue';
import Component from 'vue-class-component';
import { Prop } from 'vue-property-decorator';
import moment from 'moment';

import { join } from 'path';

import Utils from '@/utils';
import { World } from '@/api';

@Component({})
export default class WorldProfile extends Vue {
  @Prop() private Id!: number;

  private utils: Utils = new Utils();

  private world: World = this.$store.getters.getWorldById(this.Id);

  // world properties
  private Name: string = this.world.getName() || '';
  private ImageUrl: string = this.world.getImageUrl() || '';
  private Age: number = this.world.getAge() || 0;
  private Creation: string = this.world.getCreation() || '';

  // isEditable properties
  private isNameEditable: boolean = false;
  private isImageUrlEditable: boolean = false;
  private isAgeEditable: boolean = false;
  private isCreationEditable: boolean = false;
  private BannerIsHover: boolean = false;

  private destroyed() {
    const filePath: string = join(
      this.utils.getWorldsSubfolderPath(),
      `${this.Id}.json`,
    );
    this.onImageUrlSave();

    this.utils.saveWorld(filePath, this.world);
  }

  // Computed
  private get nameComputed(): string {
    return this.Name.toUpperCase();
  }

  private get createdComputed(): string {
    const timeStamp = this.world.getCreated();
    return moment(timeStamp).calendar();
  }

  private get ageComputed(): number | string {
    return this.Age || 'UNKNOWN';
  }

  private get creationComputed(): string {
    return this.Creation || 'UNKNOWN';
  }

  // onEdit methods
  private onEditName() {
    this.isNameEditable = !this.isNameEditable;
  }

  private onEditImageUrl() {
    this.isImageUrlEditable = !this.isImageUrlEditable;
  }

  private onEditAge() {
    this.isAgeEditable = !this.isAgeEditable;
  }

  private onEditCreation() {
    this.isCreationEditable = !this.isCreationEditable;
  }

  // onSave methods
  private onNameSave() {
    this.world.setName(this.Name);
    this.isNameEditable = !this.isNameEditable;
  }

  private onImageUrlSave() {
    this.world.setImageUrl(this.ImageUrl);
    this.isImageUrlEditable = !this.isImageUrlEditable;
  }

  private onAgeSave() {
    this.world.setAge(this.Age);
    this.isAgeEditable = !this.isAgeEditable;
  }

  private onCreationSave() {
    this.world.setCreation(this.Creation);
    this.isCreationEditable = !this.isCreationEditable;
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