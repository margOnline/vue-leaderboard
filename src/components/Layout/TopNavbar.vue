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
    <div class="auth-links">
      <span class="icon">
        <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 16 16">
          <path
            fill="#13B56F"
            d="M8,0 C5.790861,0 4,1.790861 4,4 C4,6.209139 5.790861,8 8,8 C10.209139,8 12,6.209139 12,4 C12,1.790861 10.209139,0 8,0 Z M8,10 C1.9,10 0,14 0,14 L0,16 L16,16 L16,14 C16,14 14.1,10 8,10 Z"
          />
        </svg>
      </span>
      <span>login</span>
      <button @click="router.push('/signUp')">Sign up</button>
    </div>
  </nav>
</template>

<style scoped>
.nav {
  padding: 5px 0;
  font-size: 10px;
  margin-left: 10px;
}
.auth-links {
  position: relative;
  .icon {
    position: absolute;
    top: 9px;
    left: -25px;
  }
  span {
    font-size: 12px;
    color: #13b56f;
    text-transform: uppercase;
    font-weight: bold;
    margin-right: 20px;
  }
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
