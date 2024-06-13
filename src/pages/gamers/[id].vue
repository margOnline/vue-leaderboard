<script setup lang="ts">
// import { useRoute } from 'vue-router'
// import { supabase } from '../../lib/supabaseClient'
// import { ref } from 'vue'

// const route = useRoute()
// let data: any | null
// const gamerId = route.params?.id
const gamer = {
  firstname: 'Jane',
  lastname: 'Doe',
  email: 'janedoe@gmail.com',
  website: 'janedoe.co.uk'
}
// data = await supabase.from('gamers').select().eq('id', gamerId)

// const gamer = data.data[0]
// console.log(gamer)
</script>

<template>
  <div v-if="gamer" class="profile-card">
    <p class="title">{{ gamer.firstname }}</p>
    <p class="text-lead">{{ gamer.lastname }}</p>
    <p class="text-justify">No bio specified</p>
    <span class="online">{{ gamer.firstname }} is online</span>

    <hr />
    <p v-if="gamer.website" class="text-large text-center">
      <i class="fa fa-globe"></i>
      <a :href="gamer.website">{{ gamer.website }}</a>
    </p>
  </div>
  <div v-else>No gamer matches that id</div>
</template>

<style scoped></style>
