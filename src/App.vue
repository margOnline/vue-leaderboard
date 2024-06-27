<script setup lang="ts">
import AppSidebar from '@/components/AppSidebar.vue'
import AppNavbar from '@/components/AppNavbar.vue'
</script>

<template>
  <main>
    <div class="main-container">
      <AppSidebar />
      <div class="main-content">
        <AppNavbar />
        <RouterView />
      </div>
    </div>
  </main>
</template>

<style>
body {
  margin: 0;
}
main {
  font-family: Arial, Helvetica, sans-serif;
}
.main-container {
  margin-top: 0;
  display: flex;
  flex-direction: row;
  justify-content: left;
  align-items: center;
}
.main-content {
  margin-top: 0;
}
</style>
