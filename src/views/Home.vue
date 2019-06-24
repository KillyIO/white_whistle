<template>
  <div>
    <h1>Latest entities created</h1>
    <ul>
      <!-- <li v-for="item in items" :key="item.id">
        {{ item }}
      </li> -->
    </ul>

    <h1>Recently modified</h1>
    <ul>
      <!-- <li v-for="item in items" :key="item.id">
        {{ item }}
      </li> -->
    </ul>

    <h1>Archived</h1>
    <ul>
      <!-- <li v-for="item in items" :key="item.id">
        {{ item }}
      </li> -->
    </ul>
  </div>
</template>

<script lang="ts">
/* tslint:disable:no-console */

import { Component, Vue } from 'vue-property-decorator';
import Utils from '@/utils/index.ts';
import { World } from '../api';

@Component({
  components: {
  },
})
export default class Home extends Vue {
  private utils: Utils;
  private entities: World[];

  constructor() {
    super();
    this.utils = new Utils();
    this.entities = [];
  }

  private created() {
    console.log(this.$route.name);
  }

  public get entitiesComputed(): World[] {
    return this.entities;
  }

  // Remove this method on production
  private printHomePath() {
    console.log(`HOMEPATH: ${this.utils.getUserHomePath() + '\\'}`);
  }
}
</script>
