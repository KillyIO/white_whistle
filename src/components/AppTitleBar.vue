<template>
  <div id="titlebar" class="fixed w-full h-8 text-app-quinary bg-app-secondary-darker shadow-xl overflow-y-hidden">
    <section class="float-left mx-2 align-middle flex h-full items-center">
      <button
        @click="onToggleNavModal"
        class="text-lg mx-2 hover:text-app-tertiary focus:outline-none"
      >
        <font-awesome-icon icon="bars" />
      </button>
      <h1 class="text-base mx-2  font-semibold">WHITE WHISTLE</h1>
    </section>
    <section class="float-right mx-2 align-middle flex h-full">
      <button
        @click="minimize"
        class="text-base float-right mx-2 text-sm hover:text-app-tertiary focus:outline-none"
      >
        <font-awesome-icon icon="window-minimize" />
      </button>
      <button
        @click="maximize"
        class="text-base float-right mx-2 text-sm hover:text-app-tertiary focus:outline-none"
      >
        <font-awesome-icon icon="window-maximize" />
      </button>
      <button
        @click="close"
        class="text-xl float-right mx-2 text-sm hover:text-app-tertiary focus:outline-none"
      >
        <font-awesome-icon icon="times" />
      </button>
    </section>
    <app-nav-modal
      v-on:close-modal="onToggleNavModal"
      v-show="toggleNavModal"
    >
    </app-nav-modal>
  </div>
</template>

<script lang="ts">
import Vue from 'vue';
import Component from 'vue-class-component';

import { remote } from 'electron';

import NavModal from '@/components/NavModal.vue';

@Component({
  components: {
    'app-nav-modal': NavModal,
  },
})
export default class AppTitleBar extends Vue {
  private currentWindow: Electron.BrowserWindow;
  private toggleNavModal: boolean;

  constructor() {
    super();
    this.currentWindow = remote.getCurrentWindow();
    this.toggleNavModal = false;
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

  private onToggleNavModal(): void {
    this.toggleNavModal = !this.toggleNavModal;
  }
}
</script>

<style scoped>

</style>
