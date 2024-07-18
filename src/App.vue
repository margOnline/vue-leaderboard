<script setup lang="ts">
import AppSidebar from '@/components/AppSidebar.vue'
import AppNavbar from '@/components/AppNavbar.vue'
</script>

<template>
  <main class="main-container">
    <AppSidebar />
    <div class="main-content">
      <AppNavbar />
      <RouterView />
    </div>
  </main>
</template>

<style>
body {
  height: 100vh;
  font-family: Arial, Helvetica, sans-serif;
}
.main-container {
  display: flex;
  align-items: center;
}
.main-content {
  width: 100%;
  max-width: 960px;
}
</style>
