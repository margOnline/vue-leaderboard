<script setup lang="ts">
import router from '@/router'
</script>

<template>
  <div>
    <h1>Home Page</h1>
    <button @click="router.push('/signUp')">Sign up</button>
  </div>
</template>

<style scoped>
button {
  border-radius: 15px;
  font-size: 1.2rem;
  padding: 10px;
}
</style>
