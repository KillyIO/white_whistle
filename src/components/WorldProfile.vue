<template>
  <div>
    <h1>NAME: {{ nameComputed }}</h1>
    <button @click="onEditName">Edit</button>
    <div v-if="isNameEditable">
      <input v-model="Name" type="text" name="Name">
      <button @click="onNameSave">Save</button>
    </div>
    <img @click="onEditImageUrl" :src="ImageUrl" alt="World profile picture">
    <div v-if="isImageUrlEditable">
      <input @change="onImageUrlChange($event.target.files[0])" type="file" name="Image">
      <button @click="onImageUrlSave">Save</button>
    </div>
    <small>CREATED: {{ createdComputed }}</small>

    <h1>GENESIS</h1>
    <h2>AGE: {{ ageComputed }}</h2>
    <button @click="onEditAge">Edit</button>
    <div v-if="isAgeEditable">
      <input v-model="Age" name="Age" type="number" step="1"/>
      <button @click="onAgeSave">Save</button>
    </div>
    <h2>CREATION: {{ creationComputed }}</h2>
    <button @click="onEditCreation">Edit</button>
    <div v-if="isCreationEditable">
      <textarea v-model="Creation" name="Creation" cols="100" rows="10" />
      <button @click="onCreationSave">Save</button>
    </div>
  </div>
</template>

<script lang="ts">
/* tslint:disable:no-console */

import Vue from 'vue';
import Component from 'vue-class-component';
import { Prop } from 'vue-property-decorator';
import moment from 'moment';

import { join } from 'path';

import Utils from '@/utils';
import { World } from '@/api';

@Component({})
export default class WorldProfile extends Vue {
  @Prop() private Id!: number;

  private utils: Utils = new Utils();

  private world: World = this.$store.getters.getWorldById(this.Id);

  // world properties
  private Name: string = this.world.getName() || '';
  private ImageUrl: string = this.world.getImageUrl() || '';
  private Age: number = this.world.getAge() || 0;
  private Creation: string = this.world.getCreation() || '';

  // isEditable properties
  private isNameEditable: boolean = false;
  private isImageUrlEditable: boolean = false;
  private isAgeEditable: boolean = false;
  private isCreationEditable: boolean = false;

  private destroyed() {
    const filePath: string = join(
      this.utils.getWorldsSubfolderPath(),
      `${this.Id}.json`,
    );

    this.utils.saveWorld(filePath, this.world);
  }

  // Computed
  private get nameComputed(): string {
    return this.Name.toUpperCase();
  }

  private get createdComputed(): string {
    const timeStamp = this.world.getCreated();
    return moment(timeStamp).calendar();
  }

  private get ageComputed(): number | string {
    return this.Age || 'UNKNOWN';
  }

  private get creationComputed(): string {
    return this.Creation || 'UNKNOWN';
  }

  // onEdit methods
  private onEditName() {
    this.isNameEditable = !this.isNameEditable;
  }

  private onEditImageUrl() {
    this.isImageUrlEditable = !this.isImageUrlEditable;
  }

  private onEditAge() {
    this.isAgeEditable = !this.isAgeEditable;
  }

  private onEditCreation() {
    this.isCreationEditable = !this.isCreationEditable;
  }

  // onSave methods
  private onNameSave() {
    this.world.setName(this.Name);
    this.isNameEditable = !this.isNameEditable;
  }

  private onImageUrlSave() {
    this.world.setImageUrl(this.ImageUrl);
    this.isImageUrlEditable = !this.isImageUrlEditable;
  }

  private onAgeSave() {
    this.world.setAge(this.Age);
    this.isAgeEditable = !this.isAgeEditable;
  }

  private onCreationSave() {
    this.world.setCreation(this.Creation);
    this.isCreationEditable = !this.isCreationEditable;
  }

  // onChange
  private onImageUrlChange(file: any) {
    const reader: FileReader = new FileReader();

    reader.onload = (event: any) => {
      this.ImageUrl = event.target.result;
    };
    reader.readAsDataURL(file);
  }
}
</script>

<style scoped>

</style>