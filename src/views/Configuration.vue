
<template>
  <div class="fixed inset-0 w-full h-screen flex items-center justify-center bg-smoke-darker">
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
import store from '@/store';

import { remote } from 'electron';
import { join } from 'path';
import {
  ensureDir,
  ensureFile,
  pathExists,
  readdir,
  readJson,
  outputJson,
  pathExistsSync,
  outputJsonSync,
  readJsonSync,
  ensureDirSync,
  readdirSync,
} from 'fs-extra';

import { World } from '@/api';
import Utils from '@/utils';

type fn = () => void;

@Component({})
export default class Configuration extends Vue {
  private configMessage: string = '';
  private configMethods: fn[] = [];
  private utils: Utils = new Utils();
  private worlds: World[] = [];

  private created() {
    const mainScreen: Electron.Display = remote.screen.getPrimaryDisplay();
    console.log(mainScreen);
    // console.log(`${dimensions.width}, ${dimensions.height}`);
    this.configMethods.push(() => {
      this.configMessage = 'Launching application';
    });

    this.configMethods.push(() => {
      this.checkLatestUpdates();
    });

    this.configMethods.push(() => {
      this.checkConfigFile();
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
    for (const met of this.configMethods) {
      met();
    }
  }

  private get messageComputed(): string {
    return this.configMessage;
  }

  private checkLatestUpdates(): void {
    // implement this later
    this.configMessage = 'Checking for updates';
  }

  private checkConfigFile(): void {
    this.configMessage = 'Checking configuration file';

    const configPath = this.utils.getConfigFilePath();

    const configExists = pathExistsSync(configPath);

    if (configExists) {
      const data = readJsonSync(configPath);
      this.$store
      .dispatch('setWorldId', data.worldId)
      .then(() => {
        this.configMessage = 'App\'s configuration checking successful';
      }).catch((err) => {
        throw err;
      });
    } else {
      outputJsonSync(configPath, {
        worldId: 1,
      });
      const data = readJsonSync(configPath);
      console.log(data);
    }
  }

  private checkWhiteWhistleFolder(): void {
    this.configMessage = 'Checking for app folder';

    const dir = this.utils.getWhiteWhistlePath();

    ensureDirSync(dir);
    this.configMessage = 'App folder\'s checking successful';
  }

  private checkWorldsSubfolder(): void {
    const worldsDir = this.utils.getWorldsSubfolderPath();

    ensureDirSync(worldsDir);
    this.configMessage = 'worlds subfolder\'s checking successful';

    this.configMessage = 'Retrieving worlds\' data';

    const dirList = readdirSync(worldsDir);
    dirList.forEach((el) => {
      const filePath: string = join(worldsDir, el);

      const data: object = readJsonSync(filePath);
      const world: World = new World(data);

      this.$store
      .dispatch('addWorld', world)
      .then(() => {
        this.configMessage = `${this.utils.convertName(el)} retrieved`;
      })
      .catch((err) => {
        throw err;
      });
    });
  }

  private checkLocationsSubfolder(): void {
    const locationsDir = this.utils.getLocationsSubfolderPath();

    ensureDirSync(locationsDir);
    this.configMessage = 'locations subfolder\'s checking successful';
  }

  private checkCharactersSubfolder(): void {
    const charactersDir = this.utils.getCharactersSubfolderPath();

    ensureDirSync(charactersDir);
    this.configMessage = 'characters subfolder\'s checking successful';
  }

  private checkArtifactsSubfolder(): void {
    const artifactsDir = this.utils.getArtifactsSubfolderPath();

    ensureDirSync(artifactsDir);
    this.configMessage = 'artifacts subfolder\'s checking successful';
  }

  private checkSubfolder(): void {
    this.configMessage = 'Checking for app subfolders';

    this.checkWorldsSubfolder();
    this.checkLocationsSubfolder();
    this.checkCharactersSubfolder();
    this.checkArtifactsSubfolder();
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