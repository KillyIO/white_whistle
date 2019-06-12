<template>
  <div>

  </div>
</template>

<script lang="ts">
import { Component, Prop, Vue } from 'vue-property-decorator';

export interface Thumbnail {
  title: string;
}

@Component
export default class ThumbnailCard extends Vue {
  @Prop() private thumbnail!: Thumbnail;
}
</script>

<style scoped>

</style>