<template>
  <div id="titlebar" class="fixed w-full h-5 text-app-quinary bg-app-secondary-lighter shadow-lg overflow-y-hidden">
    <section class="float-left mx-2">
      <h1 class="text-sm font-semibold">White Whistle</h1>
    </section>
    <section class="float-right mx-1">
      <button
        @click="close"
        class="float-right px-2 text-sm hover:bg-app-tertiary focus:outline-none"
      >
        <font-awesome-icon icon="times" />
      </button>
      <button
        @click="maximize"
        class="float-right px-2 text-sm hover:bg-app-tertiary focus:outline-none"
      >
        <font-awesome-icon icon="window-maximize" />
      </button>
      <button
        @click="minimize"
        class="float-right px-2 text-sm hover:bg-app-tertiary focus:outline-none"
      >
        <font-awesome-icon icon="window-minimize" />
      </button>
    </section>
  </div>
</template>

<script lang="ts">
import Vue from 'vue';
import Component from 'vue-class-component';

import { remote } from 'electron';

@Component({})
export default class AppTitleBar extends Vue {
  private currentWindow: Electron.BrowserWindow;

  constructor() {
    super();
    this.currentWindow = remote.getCurrentWindow();
  }

  private minimize(): void {
    this.currentWindow.minimize();
  }

  private maximize(): void {
    if (this.currentWindow.isMaximized()) {
      this.currentWindow.unmaximize();
    } else {
      this.currentWindow.maximize();
    }
  }

  private close(): void {
    this.currentWindow.close();
  }
}
</script>

<style scoped>

</style>