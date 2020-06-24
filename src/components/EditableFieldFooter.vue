<template>
  <div>
    <button
      v-on:click="$emit('update-editable-state')"
      class="shadow-md rounded mx-4 py-2 px-6 bg-app-tertiary hover:bg-app-primary font-semibold text-white focus:outline-none"
    >
      Cancel
    </button>
    <button
      v-on:click="$emit('save')"
      class="shadow-md rounded mx-4 py-2 px-6 bg-app-tertiary hover:bg-app-primary font-semibold text-white focus:outline-none"
    >
      Save
    </button>
  </div>
</template>

<script lang="ts">
import Vue from 'vue';
import { Prop } from 'vue-property-decorator';

export default class EditableFieldFooter extends Vue {
}
</script>

<style scoped>

</style>