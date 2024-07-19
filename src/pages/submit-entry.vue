<script setup lang="ts">
import PageTitle from '@/components/PageTitle.vue'
import { ref } from 'vue'
</script>

<template>
  <div class="submit-entry-container">
    <PageTitle :iconFile="'submit.svg'" :title="'Submit Entry'" />
    <div class="submit-entry-form-container"></div>
  </div>
</template>
