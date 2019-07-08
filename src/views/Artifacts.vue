<template>
  <div>
  </div>
</template>

<script lang="ts">
/* tslint:disable:no-console */

import Vue from 'vue';
import Component from 'vue-class-component';

@Component({})
export default class Artifacts extends Vue {
  private created() {
    console.log(this.$route.name);
  }
}
</script>

<style scoped>

</style>