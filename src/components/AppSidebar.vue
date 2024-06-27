<script setup lang="ts">
import AppLogo from '@/components/AppLogo.vue'
import AppWidget from '@/components/AppWidget.vue'
import Leaderboard from '@/components/Leaderboard.vue'
</script>

<template>
  <div class="sidebar-container">
    <AppLogo />
    <AppWidget />
    <Leaderboard />
  </div>
</template>

<style scoped>
.sidebar-container {
  background-color: #f7f7f7;
}
</style>
