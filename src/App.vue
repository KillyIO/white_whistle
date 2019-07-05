<template>
  <div id="app" class="min-h-screen bg-app-secondary-darker">
    <AppSidebar />
  </div>
</template>

<script lang="ts">
import Vue from 'vue';
import Component from 'vue-class-component';

import AppSidebar from '@/components/AppSidebar.vue';

@Component({
  components: {
    AppSidebar,
  },
})
export default class App extends Vue {
}
</script>


<style src="./css/main.css">
</style>
