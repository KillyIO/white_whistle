
<template>
  <div class="fixed inset-0 w-full h-screen flex items-center justify-center bg-smoke">
    <!-- Put the logo here -->
    <div class="w-full max-w-2xl bg-white shadow-lg rounded-lg p-8 text-center">
      <h2>{{ messageComputed }}</h2>
    </div>
  </div>
</template>

<script lang="ts">
/* tslint:disable:no-console */

import Vue from 'vue';
import Component from 'vue-class-component';

import { ensureDir } from 'fs-extra';

import Utils from '@/utils';

type fn = () => void;

@Component({})
export default class Configuration extends Vue {
  private configMessage: string = '';
  private configMethods: fn[] = [];
  private utils: Utils = new Utils();

  private created() {
    this.configMethods.push(() => {
      this.configMessage = 'Launching application';
    });

    this.configMethods.push(() => {
      this.checkLatestUpdates();
    });

    this.configMethods.push(() => {
      this.checkWhiteWhistleFolder();
    });

    this.configMethods.push(() => {
      this.checkSubfolder();
    });

    this.configMethods.push(() => {
      this.closeConfiguration();
    });
  }

  private mounted() {
    console.log(this.configMethods.length);
    for (const met of this.configMethods) {
      met();
    }
  }

  public get messageComputed(): string {
    return this.configMessage;
  }

  private checkLatestUpdates(): void {
    // implement this later
    this.configMessage = 'Checking for updates';
  }

  private checkWhiteWhistleFolder(): void {
    this.configMessage = 'Checking for app folder';

    const dir = this.utils.getWhiteWhistlePath();
    ensureDir(dir)
    .then(() => {
      this.configMessage = 'App folder\'s checking successful';
    }).catch((err: unknown) => {
      console.error(err);
      this.configMessage = 'A problem occured when checking for app folder';
    });
  }

  private checkSubfolder(): void {
    this.configMessage = 'Checking for app subfolders';

    const worldsDir = this.utils.getWorldsSubfolder();
    const locationDir = this.utils.getLocationsSubfolder();
    const charactersDir = this.utils.getCharactersSubfolder();
    const artifactsDir = this.utils.getArtifactsSubfolder();

    // worlds folder
    ensureDir(worldsDir)
    .then(() => {
      this.configMessage = 'worlds subfolder\'s checking successful';
    })
    .catch((err) => {
      console.error(err);
      this.configMessage = 'A problem occured when checking for worlds\' subfolder';
    });

    // locations folder
    ensureDir(locationDir)
    .then(() => {
      this.configMessage = 'locations subfolder\'s checking successful';
    })
    .catch((err) => {
      console.error(err);
      this.configMessage = 'A problem occured when checking for locations\' subfolder';
    });

    // characters folder
    ensureDir(charactersDir)
    .then(() => {
      this.configMessage = 'characters subfolder\'s checking successful';
    })
    .catch((err) => {
      console.error(err);
      this.configMessage = 'A problem occured when checking for characters\' subfolder';
    });

    // artifacts folder
    ensureDir(artifactsDir)
    .then(() => {
      this.configMessage = 'artifacts subfolder\'s checking successful';
    })
    .catch((err) => {
      console.error(err);
      this.configMessage = 'A problem occured when checking for artifacts\' subfolder';
    });
  }

  private closeConfiguration() {
    this.$router.replace({
      name: 'home',
    });
  }
}
</script>

<style scoped>

</style>