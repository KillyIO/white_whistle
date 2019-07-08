<template>
  <div id="app" class="min-h-screen bg-app-secondary-darker">
    <header class="sticky top-0 z-50">
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
    </header>
    <body class="sticky top-0">
      <AppSidebar class="fixed mt-5" />
      <div class="w-full h-full mt-5">
        <router-view></router-view>
      </div>
    </body>
  </div>
</template>

<script lang="ts">
import Vue from 'vue';
import Component from 'vue-class-component';

import AppSidebar from '@/components/AppSidebar.vue';
import { remote } from 'electron';

@Component({
  components: {
    AppSidebar,
  },
})
export default class App extends Vue {
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


<style src="./css/main.css">
</style>
