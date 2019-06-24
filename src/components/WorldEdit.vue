<template>
  <div>
    <h1>This world Id is: {{ Id }}</h1>
  </div>
</template>

<script lang="ts">
/* tslint:disable:no-console */

import Vue from 'vue';
import Component from 'vue-class-component';
import { Prop } from 'vue-property-decorator';

@Component({})
export default class WorldEdit extends Vue {
  @Prop() private Id!: number;
}
</script>

<style scoped>

</style>