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
  height: 100vh;
  background-color: #f7f7f7;
  width: 300px;
  border-right: 1px solid #ededed;
}
</style>
