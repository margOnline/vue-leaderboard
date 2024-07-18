<script setup lang="ts">
import router from '@/router'
import TopNavbarLinks from './TopNavbarLinks.vue'

const links = [
  {
    title: 'Results',
    to: '/results'
  },
  {
    title: 'Current tournament',
    to: '/'
  },
  {
    title: 'Next tournament',
    to: '/'
  },
  {
    title: 'Rules',
    to: '/'
  }
]
</script>

<template>
  <nav class="h-16 border-b bg-muted/40 flex gap-2 justify-between px-6 items-center">
    <ul class="nav">
      <TopNavbarLinks :links="links" />
    </ul>
    <button @click="router.push('/signUp')">Sign up</button>
  </nav>
</template>

<style scoped>
.nav {
  padding: 5px 0;
  font-size: 10px;
  margin-left: 10px;
}
button {
  color: white;
  font-size: 10px;
  text-transform: uppercase;
  padding: 10px 20px;
  margin-right: 30px;
  border: 1px #34dbeb;
  border-radius: 15px;
  background: linear-gradient(90deg, #13b56f, #34dbeb);
  vertical-align: middle;
}
</style>
