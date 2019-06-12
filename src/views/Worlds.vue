<template>
  <div>
  </div>
</template>

<script lang="ts">
/* tslint:disable:no-console */

import Vue from 'vue';

export default Vue.extend({
  created() {
    const currentUrl = window.location.pathname;
    console.log(currentUrl);
  },
});
</script>

<style scoped>

</style>