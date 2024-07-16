<script setup lang="ts">
import router from '@/router'
</script>

<template>
  <div class="navbar-container">
    <ul class="nav">
      <li class="nav__item"><RouterLink :to="{ name: '/results' }">Results</RouterLink></li>
      <li class="nav__item">
        <RouterLink :to="{ name: '/' }">Current tournament</RouterLink>
      </li>
      <li class="nav__item"><RouterLink :to="{ name: '/' }">Next tournament</RouterLink></li>
      <li class="nav__item"><RouterLink :to="{ name: '/' }">Rules</RouterLink></li>
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
  font-size: 10px;
  margin-left: 10px;
  li {
    display: inline;
    list-style-type: none;
    border: none;
    padding-left: 10px;
    text-transform: uppercase;
    font-weight: bold;
    padding: 0 10px;
    background-position: left center;
    :hover,
    :active {
      color: #13b56f;
    }
    a {
      color: #969696;
      text-decoration: none;
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
