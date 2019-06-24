<template>
  <div>
    <h1>NAME: {{ nameComputed }}</h1>
    <img :src="imageUrlComputed" alt="">
    <small>CREATED: {{ createdComputed }}</small>

    <h1>GENESIS</h1>
    <h2>AGE: {{ ageComputed }}</h2>
    <h2>CREATION: {{ creationComputed }}</h2>
  </div>
</template>

<script lang="ts">
/* tslint:disable:no-console */

import Vue from 'vue';
import Component from 'vue-class-component';
import { Prop } from 'vue-property-decorator';

import moment from 'moment';

import { World } from '@/api';

@Component({})
export default class WorldEdit extends Vue {
  @Prop() private Id!: number;

  private world: World;

  constructor() {
    super();
    this.world = this.$store.getters.getWorldById(this.Id);
    console.log(this.world);
  }

  private get nameComputed(): string | unknown {
    return this.world.getName();
  }

  private get imageUrlComputed(): string | unknown {
    return this.world.getImageUrl();
  }

  private get createdComputed(): string | unknown {
    const timeStamp = this.world.getCreated();
    return moment(timeStamp).calendar();
  }

  private get ageComputed(): number | string | unknown {
    return this.world.getAge() || 'UNKNOWN';
  }

  private get creationComputed(): string | unknown {
    return this.world.getCreation() || 'UNKNOWN';
  }
}
</script>

<style scoped>

</style>