<script setup lang="ts">
defineProps<{
  iconFile: string
  title: string
}>()
</script>

<template>
  <div class="flex gap-2 ml-5 mt-5 mb-5">
    <img :src="`../src/assets/images/icons/${iconFile}`" />
    <h2 class="text-2xl">{{ title }}</h2>
  </div>
</template>
