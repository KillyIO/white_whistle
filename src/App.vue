<template>
  <div id="app" class="min-h-screen bg-app-secondary-darker">
    <header class="sticky top-0 z-50">
      <app-title-bar />
    </header>
    <body class="sticky top-0">
      <!-- <app-side-bar class="fixed mt-5" /> -->
      <div class="w-full h-full mt-5">
        <router-view></router-view>
      </div>
    </body>
  </div>
</template>

<script lang="ts">
import Vue from 'vue';
import Component from 'vue-class-component';

// import NavModal from '@/components/NavModal.vue';
import AppTitleBar from '@/components/AppTitleBar.vue';

@Component({
  components: {
    // NavModal,
    AppTitleBar,
  },
})
export default class App extends Vue {
}
</script>


<style src="./css/main.css">
</style>
