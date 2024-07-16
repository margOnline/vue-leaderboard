<script setup lang="ts">
import router from '@/router'
</script>

<template>
  <div class="navbar-container">
    <ul class="nav">
      <li class="nav__item"><RouterLink :to="{ name: '/results' }">Results</RouterLink></li>
      <li class="nav__item">Current tournament</li>
      <li class="nav__item">Next tournament</li>
      <li class="nav__item">Rules</li>
    </ul>
    <button @click="router.push('/signUp')">Sign up</button>
  </div>
</template>

<style scoped>
.navbar-container {
  background-color: #f7f7f7;
  overflow: hidden;
  margin-right: -10px;
  display: flex;
  align-items: center;
  justify-content: space-between;
}
.nav {
  padding: 5px 0;
  color: #5db67e;
  font-size: 10px;
  margin-left: 10px;
  li {
    display: inline;
    list-style-type: none;
    border: none;
    padding-left: 10px;
    text-transform: uppercase;
    font-weight: bold;
    color: #575a59;
    padding: 0 10px;
    background-position: left center;
    :hover,
    :active {
      color: #13b56f;
    }
    a {
      text-decoration: none;
      color: #575a59;
    }
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
