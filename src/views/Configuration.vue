
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
  pathExistsSync,
  outputJsonSync,
  readJsonSync,
  ensureDirSync,
  readdirSync,
} from 'fs-extra';
import rsvp, { Promise } from 'rsvp';

import { World, Region, Character } from '@/api';
import Utils from '@/utils';

type fn = () => any;

@Component({})
export default class Configuration extends Vue {
  private configMessage: string = '';
  private configMethods: fn[] = [];
  private utils: Utils = new Utils();
  private worlds: World[] = [];

  private dir = this.utils.getWhiteWhistlePath();
  private configPath = this.utils.getConfigFilePath();
  private worldsDir = this.utils.getWorldsSubfolderPath();
  private regionsDir = this.utils.getRegionsSubfolderPath();
  private charactersDir = this.utils.getCharactersSubfolderPath();
  private artifactsDir = this.utils.getArtifactsSubfolderPath();

  private options = {
    mode: 0o2775,
  };

  constructor() {
    super();
  }

  private mounted() {
    this.checkLatestUpdates();
    this.ensureWhiteWhistleFolder(this.dir);

    const ensureConfig: boolean = this.ensureConfigFile(this.configPath);
    const configData: object = this.readConfigFile(this.configPath, ensureConfig);
    this.loadConfigData(configData);

    this.ensureWorldsSubfolder(this.worldsDir);
    const worldsFiles: string[] = this.readWorldsSubFolder(this.worldsDir);
    const worldsData: object[] = this.readWorldsSubFolderFiles(this.worldsDir, worldsFiles);
    this.loadWorldsData(worldsData);

    this.ensureRegionsSubfolder(this.regionsDir);
    const regionsFiles: string[] = this.readRegionsSubFolder(this.regionsDir);
    const regionsData: object[] = this.readRegionsSubFolderFiles(this.regionsDir, regionsFiles);
    this.loadRegionsData(regionsData);

    this.ensureCharactersSubfolder(this.charactersDir);
    const charactersFiles: string[] = this.readCharactersSubFolder(this.charactersDir);
    const charactersData: object[] = this.readCharactersSubFolderFiles(this.charactersDir, charactersFiles);
    this.loadCharactersData(charactersData);

    this.ensureArtifactsSubfolder(this.artifactsDir);

    this.closeConfig();
  }

  private get messageComputed(): string {
    return this.configMessage;
  }

  private checkLatestUpdates(): void {
    // implement this later
    this.configMessage = 'Checking for updates';
    console.log(this.configMessage);
    this.configMessage = '';
  }

  private ensureWhiteWhistleFolder(dir: string): void {
    this.configMessage = 'Ensuring app folder exists';

    ensureDirSync(dir, this.options);
    this.configMessage = 'App folder\'s found or created';
  }

  // NOTE Configuration file functions

  private ensureConfigFile(configPath: string): boolean {
    this.configMessage = 'Ensuring configuration file exists';
    return pathExistsSync(configPath);
  }

  private readConfigFile(configPath: string, fileExists: boolean): object {
    const data: object = new Object();

    if (!fileExists) {
      outputJsonSync(configPath, {
        worldId: 1,
        regionId: 1,
        characterId: 1,
      });
    }
    return readJsonSync(configPath);
  }

  private loadConfigData(configData: any): void {
    this.configMessage = 'Loading configuration\' data';

    this.$store.dispatch('setWorldId', configData.worldId);
    this.$store.dispatch('setRegionId', configData.regionId);
    this.$store.dispatch('setCharacterId', configData.characterId);
  }

  // NOTE Worlds folders functions

  private ensureWorldsSubfolder(worldsDir: string): void {
    this.configMessage = 'Ensuring worlds subfolder exists';
    console.log(this.configMessage);

    ensureDirSync(worldsDir, this.options);
    this.configMessage = 'worlds subfolder\'s found or created';
  }

  private readWorldsSubFolder(worldsDir: string): string[] {
    this.configMessage = 'Reading worlds subfolder';
    console.log(this.configMessage);

    return readdirSync(worldsDir);
  }

  private readWorldsSubFolderFiles(worldsDir: string, worldsFiles: string[]): object[] {
    this.configMessage = 'Reading worlds subfolder\'s files';
    console.log(this.configMessage);

    return worldsFiles.map((el) => readJsonSync(join(worldsDir, el)));
  }

  private loadWorldsData(worldsData: object[]): void {
    this.configMessage = 'Loading worlds\' data';
    console.log(this.configMessage);

    worldsData.map((el) => this.$store.dispatch('addWorld', new World(el)));
  }

  // NOTE Regions folder functions

  private ensureRegionsSubfolder(regionsDir: string): void {
    this.configMessage = 'Ensuring regions subfolder exists';
    console.log(this.configMessage);

    ensureDirSync(regionsDir, this.options);
    this.configMessage = 'regions subfolder\'s found or created';
  }

  private readRegionsSubFolder(regionsDir: string): string[] {
    this.configMessage = 'Reading regions subfolder';
    console.log(this.configMessage);

    return readdirSync(regionsDir);
  }

  private readRegionsSubFolderFiles(regionsDir: string, regionsFiles: string[]): object[] {
    this.configMessage = 'Reading regions subfolder\'s files';
    console.log(this.configMessage);

    return regionsFiles.map((el) => readJsonSync(join(regionsDir, el)));
  }

  private loadRegionsData(regionsData: object[]): void {
    this.configMessage = 'Loading regions\' data';
    console.log(this.configMessage);

    regionsData.map((el) => this.$store.dispatch('addRegion', new Region(el)));
  }

  // NOTE Characters folder functions

  private ensureCharactersSubfolder(charactersDir: string): void {
    this.configMessage = 'Ensuring characters subfolder exists';
    console.log(this.configMessage);

    ensureDirSync(charactersDir);
    this.configMessage = 'characters subfolder\'s found or created';
  }

  private readCharactersSubFolder(charactersDir: string): string[] {
    this.configMessage = 'Reading characters subfolder';
    console.log(this.configMessage);

    return readdirSync(charactersDir);
  }

  private readCharactersSubFolderFiles(charactersDir: string, charactersFiles: string[]): object[] {
    this.configMessage = 'Reading characters subfolder\'s files';
    console.log(this.configMessage);

    return charactersFiles.map((el) => readJsonSync(join(charactersDir, el)));
  }

  private loadCharactersData(charactersData: object[]): void {
    this.configMessage = 'Loading characters\' data';
    console.log(this.configMessage);

    charactersData.map((el) => this.$store.dispatch('addCharacter', new Character(el)));
  }

  // NOTE Artifacts folder functions

  private ensureArtifactsSubfolder(artifactsDir: string): void {
    this.configMessage = 'Ensuring artifacts subfolder exists';
    console.log(this.configMessage);

    ensureDirSync(artifactsDir);
    this.configMessage = 'artifacts subfolder\'s found or created';
  }

  // NOTE Close configuration functions

  private closeConfig(): void {
    this.$router.replace({ name: 'home' });
  }
}
</script>

<style scoped>

</style>