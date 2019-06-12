<template>
  <div class="my-8">
    <button @click="printHomePath">
      Toggle Home Path
    </button>
  </div>
</template>

<script lang="ts">
/* tslint:disable:no-console */

import { Component, Vue } from 'vue-property-decorator';
import Utils from '@/utils/index.ts';

@Component({
  components: {
  },
})
export default class Home extends Vue {
  private utils: Utils = new Utils();

  // Remove this method on production
  private printHomePath() {
    console.log(`HOMEPATH: ${this.utils.get_user_homepath() + '\\'}`);
  }
}
</script>
