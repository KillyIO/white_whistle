<template>
  <div class="fixed inset-0 w-full h-screen flex items-center justify-center bg-smoke-darker">
    <div class="w-full max-w-xl bg-white shadow-lg rounded-lg p-8">

      <div class="flex">
        <section >
          <label for="">Name</label>
          <div class="shadow flex">
          <input  v-model="Name" class="w-full rounded p-2" type="text" placeholder="e.g. Earth X">
          </div>
        </section>
        <section>
          <div class="shadow flex">
            <input @change="onFileChange" type="file" name="" class="w-full rounded p-2">
          </div>
          <div>
            <img v-if="ImageUrl" :src="ImageUrl" alt="world profile pic" class="w-40 h-40">
          </div>
        </section>
      </div>


      <div class="bg-red-100">
        <button @click="goBack" class="float-left">
          <ul class="flex">
            <li>
              <font-awesome-icon icon="arrow-left" />
            </li>
            <li>
              <p>Back</p>
            </li>
          </ul>
        </button>
        <button @click.prevent="onCreate" class="float-right">
          Create
        </button>
      </div>
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
  outputJson,
  readJson,
  outputJsonSync,
} from 'fs-extra';

import Utils from '@/utils';
import { World } from '@/api';

@Component({})
export default class WorldNew extends Vue {
  private utils: Utils;
  private Id: number;
  private Name: string;
  private ImageUrl: string;
  private Created: number;

  constructor() {
    super();
    this.utils = new Utils();
    this.Id = this.$store.getters.getWorldId;

    // modify world Id in configuration file
    this.$store.dispatch('incrementWorldId');
    outputJsonSync(this.utils.getConfigFilePath(), {
      worldId: this.$store.getters.getWorldId,
    });

    this.ImageUrl = '';
    this.Created = 0;
    this.Name = '';
  }

  private created() {
    console.log(this.$route.name);
    console.log(this.$router.currentRoute);
  }

  private onFileChange(e: any) {
    const file = e.target.files[0];
    this.ImageUrl = URL.createObjectURL(file);
    console.log(this.ImageUrl);
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

    this.$store.dispatch('addWorld', newWorld)
    .then(() => {
      this.$router.replace({
        name: 'edit-world',
        params: {
          Id: this.Id.toString(),
        },
      });
    })
    .catch((err) => {
      throw err;
    });
  }

  private goBack() {
    if (window.history.length > 1) {
      this.$router.go(-1);
    }
  }
}
</script>

<style scoped>

</style>