<script setup lang="ts">
interface linkProp {
  title: string
  to: string
}

defineProps<{
  links: linkProp[]
}>()
</script>

<template>
  <li v-for="link in links" :key="link.title">
    <RouterLink :to="link.to">{{ link.title }}</RouterLink>
  </li>
</template>

<style scoped>
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
</style>
