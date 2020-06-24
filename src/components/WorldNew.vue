<template>
  <div class="fixed inset-0 w-full h-screen flex items-center justify-center bg-smoke-darker">
    <div v-click-outside.capture="onClose" class="w-1/2 bg-white shadow-lg rounded-lg px-8 pt-8 pb-4">

      <section class="w-full items-center justify-center">
        <div class="">
          <h1 class="font-semibold">WORLD'S NAME*</h1>
          <input v-model="Name" class="w-full border-b-4 p-2 mt-2 mb-4 focus:outline-none focus:border-app-primary" type="text" placeholder="e.g. World X...">
        </div>
        <label
          @mouseover="BannerIsHover = true"
          @mouseleave="BannerIsHover = false"
          class="flex flex-col items-center justify-center px-2 py-4 rounded-lg shadow-lg cursor-pointer opacity-100 hover:opacity-75"
        >
          <font-awesome-icon v-if="BannerIsHover" icon="camera" size="4x" class="absolute text-white opacity-50" />
          <img v-if="ImageUrl" :src="ImageUrl" alt="world banner" class="w-full h-full">
          <img v-else src="@/assets/jan-urschel-gis-ju-deepdive01-d1.jpg" alt="world banner" class="w-full h-full rounded-lg">
          <input @change="onImageChange($event.target.files[0])" type="file" name="Banner" class="hidden">
          <small class="italic">Max resolution: 1920x1080</small>
        </label>
      </section>

      <section class="pt-4 px-2">
        <button @click="onGoBack" class="float-left border-b-4 hover:border-app-primary py-2 px-4 font-normal">
          <ul class="flex">
            <li class="mr-2">
              <font-awesome-icon icon="arrow-left" />
            </li>
            <li>
              <p>Back</p>
            </li>
          </ul>
        </button>
        <button
          @click.prevent="onCreate"
          class="float-right shadow-md rounded py-2 px-4 bg-app-tertiary hover:bg-app-primary text-white font-semibold">
          Create
        </button>
      </section>
    </div>
  </div>
</template>

<script lang="ts">
/* tslint:disable:no-console */

import Vue from 'vue';
import Component from 'vue-class-component';

import moment from 'moment';
import { join } from 'path';
import {
  outputJsonSync,
} from 'fs-extra';
import * as editJsonFile from 'edit-json-file';
import * as vClickOutside from 'v-click-outside-x';

import Utils from '@/utils';
import { World } from '@/api';

@Component({
  directives: {
    clickOutside: vClickOutside.directive,
  },
})
export default class WorldNew extends Vue {
  private defaultBannerPath: string = '@/assets/jan-urschel-gis-ju-deepdive01-d1.jpg';
  private utils: Utils = new Utils();
  private Id: number;
  private Name: string = '';
  private ImageUrl: string = '';
  private Created: number = 0;

  private BannerIsHover: boolean = false;

  constructor() {
    super();

    this.Id = this.$store.getters.getWorldId;
  }

  private created() {
    console.log(this.$route.name);
    console.log(this.$router.currentRoute);
  }

  private onImageChange(file: any) {
    const reader: FileReader = new FileReader();

    reader.onload = (event: any) => {
      this.ImageUrl = event.target.result;
    };
    reader.readAsDataURL(file);
  }

  private onCreate(): void {
    const filePath: string = join(
      this.utils.getWorldsSubfolderPath(),
      `${this.Id}.json`,
    );

    this.Created = moment().valueOf();

    const newWorld: World = new World({
      Id: this.Id,
      ImageUrl: this.ImageUrl,
      Created: this.Created,
      Name: this.Name,
    });

    this.utils.saveWorld(filePath, newWorld);

    const file = editJsonFile(this.utils.getConfigFilePath());

    this.$store.dispatch('incrementWorldId');
    file.set('worldId', this.$store.getters.getWorldId);
    file.save();

    this.$store.dispatch('addWorld', newWorld)
    .then(() => {
      this.$router.replace({
        name: 'world-profile',
        params: {
          Id: this.Id.toString(),
        },
      });
    })
    .catch((err) => {
      throw err;
    });
  }

  private onGoBack() {
    if (window.history.length > 1) {
      this.$router.go(-1);
    }
  }

  private onClose() {
    if (window.history.length > 2) {
      this.$router.go(-2);
    }
  }
}
</script>

<style scoped>

</style>