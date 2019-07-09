<template>
  <div class="w-full h-screen pb-20 force-overflow-main">
    <section class="w-full h-screen relative">
      <label
        @click="onEditImageUrl"
        @mouseover="BannerIsHover = true"
        @mouseleave="BannerIsHover = false"
        class="w-full h-screen flex flex-col items-center justify-center bg-app-primary shadow-lg rounded-lg cursor-pointer opacity-100 hover:opacity-75"
      >
        <img
          :src="ImageUrl"
          alt="region banner"
          class="flex w-full h-full relative bg-no-repeat bg-cover m-0 p-0 items-center justify-around rounded">
        <input @change="onImageUrlChange($event.target.files[0])" type="file" name="Image" class="hidden">
        <font-awesome-icon v-if="BannerIsHover" icon="camera" size="8x" class="absolute opacity-50" />
      </label>

      <!-- Name -->
      <div class="z-10 w-full py-10 text-white absolute bottom-0 bg-smoke-darker text-center">
        <div
          @mouseover="NameIsHover = true"
          @mouseleave="NameIsHover = false"
          v-if="!isNameEditable" class="flex justify-center"
        >
          <h1 class="text-8xl mx-4 font-semibold tracking-widest">
            {{ nameComputed }}
          </h1>
          <button
            v-show="NameIsHover"
            :disabled="isNameEditable"
            @click="onEditName"
            class="focus:outline-none"
          >
            <font-awesome-icon icon="pen" size="3x" />
          </button>
        </div>
        <div v-else class="">
          <input v-model="Name" type="text" name="Name" class="w-64 text-lg bg-smoke-lightest border-b-4 p-2 mt-2 mb-4 focus:outline-none focus:border-app-tertiary" />
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
        <h2 class="text-3xl text-app-quinary">{{ World.Name }}</h2>
      </div>
    </section>

    <!-- Genesis -->
    <section class="w-full mt-10 text-center text-app-quinary">
      <div
        @mouseover="GenesisIsHover = true"
        @mouseleave="GenesisIsHover = false"
        class="flex mt-40 mb-32 justify-center"
      >
        <h1 class="mx-3 text-4xl">GENESIS</h1>
        <button
          v-show="GenesisIsHover"
          :disabled="isCreationEditable"
          @click="onEditCreation"
          class="focus:outline-none"
        >
          <font-awesome-icon icon="pen" />
        </button>
      </div>
      <div v-if="!isCreationEditable" class="flex items-center justify-center flex-col">
        <p v-if="creationComputed === 'UNKNOWN'" class="font-normal leading-relaxed mx-8 mb-8 max-w-lg text-justify">
          Missing data...
        </p>
        <p v-else class="font-normal leading-relaxed mx-8 mb-8 max-w-lg text-justify">
          {{ creationComputed }}
        </p>
      </div>
      <div v-else class="scrollbar">
        <textarea
          v-model="Creation"
          name="Creation"
          cols="100"
          rows="10"
          class="p-2 bg-app-secondary-light focus:outline-none shadow-lg resize-none force-overflow-content"
        />
        <div class="flex justify-center my-4">
          <button
            @click="isCreationEditable = false"
            class="shadow-md rounded mx-8 py-2 px-6 bg-app-tertiary hover:bg-app-primary font-semibold text-white"
          >
            Cancel
          </button>
          <button
            @click="onCreationSave"
            class="shadow-md rounded mx-8 py-2 px-8 bg-app-tertiary hover:bg-app-primary font-semibold text-white"
          >
            Save
          </button>
        </div>
      </div>
    </section>
  </div>
</template>

<script lang="ts">
import Vue from 'vue';
import Component from 'vue-class-component';
import { Prop } from 'vue-property-decorator';

import Utils from '@/utils';
import { Region, AffiliatedWorld } from '@/api';

@Component({})
export default class WorldProfile extends Vue {
  @Prop() private Id!: number;

  private utils: Utils = new Utils();

  private region: Region = this.$store.getters.getRegionById(this.Id);

  // region properties
  private Name: string = this.region.getName() || '';
  private ImageUrl: string = this.region.getImageUrl() || '';
  private World: AffiliatedWorld = this.region.getAffiliatedWorld() || undefined;
  private Age: number = this.region.getAge() || 0;
  private Creation: string = this.region.getCreation() || '';

  // isEditable properties
  private isNameEditable: boolean = false;
  private isImageUrlEditable: boolean = false;
  private isCreationEditable: boolean = false;
  private BannerIsHover: boolean = false;
  private NameIsHover: boolean = false;
  private GenesisIsHover: boolean = false;

  // Computed
  private get nameComputed(): string {
    return this.Name.toUpperCase();
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

  private onEditCreation() {
    this.isCreationEditable = !this.isCreationEditable;
  }

  // onSave methods
  private onNameSave() {
    this.region.setName(this.Name);
    this.isNameEditable = !this.isNameEditable;
  }

  private onCreationSave() {
    this.region.setCreation(this.Creation);
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