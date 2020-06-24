<template>
  <div class="">
    <profile-back-button @click.native="onGoBack" class="" />
    <div class="w-full max-h-screen py-20 px-10 force-overflow-main">
      <!-- Quotes, Overview, Banner -->
      <div class="flex w-full">
        <section class="w-1/2 text-app-quinary">
          <div
            @mouseover="QuotesIsHover = true"
            @mouseleave="QuotesIsHover = false"
            class="flex"
          >
            <h1 class="text-4xl mr-4">Quotes</h1>
            <button
              v-show="QuotesIsHover"
              :disabled="isQuotesEditable"
              @click="onEditQuotes"
              class="focus:outline-none mt-2"
            >
              <font-awesome-icon icon="pen" />
            </button>
          </div>
          <div v-show="isQuotesEditable" class="my-4">
            <textarea
              cols="50"
              rows="5"
              class="p-2 bg-app-secondary-light focus:outline-none shadow-lg resize-none force-overflow-content"
            />
            <!-- <input type="text" class="w-64 text-lg bg-smoke-lightest border-b-4 p-2 mt-2 mb-4 focus:outline-none focus:border-app-tertiary"> about {{ Firstname }}
            <br/>
            {{ Firstname }} to <input type="text" class="w-64 text-lg bg-smoke-lightest border-b-4 p-2 mt-2 mb-4 focus:outline-none focus:border-app-tertiary"> -->
            <editable-field-footer
              v-on:update-editable-state="isQuotesEditable = false"
              v-on:save="onQuoteSave"
              class=""/>
          </div>
          <h1 class="text-4xl">Overview</h1>
        </section>
        <section class="w-1/2">
          <div class="relative">
            <label
              @click="onEditImageUrl"
              @mouseover="BannerIsHover = true"
              @mouseleave="BannerIsHover = false"
              class="w-full flex flex-col items-center justify-center bg-app-primary shadow-lg rounded-lg cursor-pointer opacity-100 hover:opacity-75"
            >
              <img
                :src="ImageUrl"
                alt="World profile picture"
                class="flex w-full overflow-hidden relative bg-no-repeat bg-cover m-0 p-0 items-center justify-around rounded-t">
              <input @change="onImageUrlChange($event.target.files[0])" type="file" name="Image" class="hidden">
              <font-awesome-icon v-if="BannerIsHover" icon="camera" size="8x" class="absolute opacity-50" />
            </label>

            <!-- Name -->
            <div class="z-10 w-full py-10 text-white bottom-0 absolute bg-smoke text-center">
              <div
                @mouseover="NameIsHover = true"
                @mouseleave="NameIsHover = false"
                v-if="!isNameEditable" class="flex justify-center"
              >
                <h1 class="text-2xl mx-4 font-semibold tracking-widest">
                  {{ nameComputed }}
                </h1>
                <button
                  v-show="NameIsHover"
                  :disabled="isNameEditable"
                  @click="onEditName"
                  class="focus:outline-none"
                >
                  <font-awesome-icon icon="pen" />
                </button>
              </div>
              <div v-else class="">
                <div class="flex flex-col items-center mb-4">
                  <input v-model="Firstname" type="text" class="w-64 text-lg bg-smoke-lightest border-b-4 p-2 mt-2 mb-4 focus:outline-none focus:border-app-tertiary" />
                  <input v-model="Middlename" type="text" class="w-64 text-lg bg-smoke-lightest border-b-4 p-2 mt-2 mb-4 focus:outline-none focus:border-app-tertiary" />
                  <input v-model="Lastname" type="text" class="w-64 text-lg bg-smoke-lightest border-b-4 p-2 mt-2 mb-4 focus:outline-none focus:border-app-tertiary" />
                </div>
                <editable-field-footer
                  v-on:update-editable-state="isNameEditable = false"
                  v-on:save="onNameSave" />
              </div>
              <h2 class="text-2xl mt-2 text-app-quinary">{{ Region.Name }}</h2>
            </div>
          </div>
          <div class="w-full rounded-b bg-app-secondary-light text-center text-app-quinary py-4">
            <h1 class="text-2xl">Profile</h1>
            <div class="flex w-full mx-10 my-2">
              <p class="font-bold">Alias</p>
              <ul class="">
              </ul>
              <p>Date of birth</p>
              <p>Age</p>
            </div>
          </div>
        </section>
      </div>
    </div>
  </div>
</template>

<script lang="ts">
/* tslint:disable:no-console */

import Vue from 'vue';
import Component from 'vue-class-component';
import { Prop } from 'vue-property-decorator';

import Utils from '@/utils';
import { Character, AffiliatedRegion, Quote } from '@/api';

import ProfileBackButton from '@/components/ProfileBackButton.vue';
import EditableFieldFooter from '@/components/EditableFieldFooter.vue';

@Component({
  components: {
    ProfileBackButton,
    EditableFieldFooter,
  },
})
export default class CharacterProfile extends Vue {
  @Prop() private Id!: number;

  private utils: Utils = new Utils();

  private character: Character = this.$store.getters.getCharacterById(this.Id);

  // region properties
  private Name: string = this.character.getName() || '';
  private ImageUrl: string = this.character.getImageUrl() || '';
  private Region: AffiliatedRegion = this.character.getAffiliatedRegion() || undefined;
  private Firstname: string = this.character.getFirstname() || '';
  private Middlename: string = this.character.getMiddlename() || '';
  private Lastname: string = this.character.getLastname() || '';
  private Quotes: Quote[] = this.character.getQuotes();

  // isEditable properties
  private isNameEditable: boolean = false;
  private isImageUrlEditable: boolean = false;
  private isFirstnameEditable: boolean = false;
  private isMiddleEditable: boolean = false;
  private isLastnameEditable: boolean = false;
  private isQuotesEditable: boolean = false;

  // hover properties
  private NameIsHover: boolean = false;
  private BannerIsHover: boolean = false;
  private QuotesIsHover: boolean = false;

  // Computed
  private get nameComputed(): string {
    return this.Name.toUpperCase();
  }

  // onEdit methods
  private onEditName() {
    this.isNameEditable = !this.isNameEditable;
  }

  private onEditImageUrl() {
    this.isImageUrlEditable = !this.isImageUrlEditable;
  }

  private onEditQuotes() {
    this.isQuotesEditable = !this.isQuotesEditable;
  }

  // onSave methods
  private onNameSave() {
    this.Name = `${this.Firstname} ${this.Middlename} ${this.Lastname}`;
    this.character.setName(this.Name);
    this.character.setFirstname(this.Firstname);
    this.character.setMiddlename(this.Middlename);
    this.character.setLastname(this.Lastname);
    this.isNameEditable = !this.isNameEditable;
  }

  private onQuoteSave() {
    console.log('quote saved');
  }

  // onChange
  private onImageUrlChange(file: any) {
    const reader: FileReader = new FileReader();

    reader.onload = (event: any) => {
      this.ImageUrl = event.target.result;
    };
    reader.readAsDataURL(file);
  }

  private onGoBack() {
    if (window.history.length > 1) {
      this.$router.go(-1);
    }
  }
}
</script>

<style scoped>

</style>