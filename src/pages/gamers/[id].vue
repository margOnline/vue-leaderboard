<script setup lang="ts">
import { useRoute } from 'vue-router'
import { ref } from 'vue'
import { supabase } from '@/lib/supabaseClient'

const gamers = ref()
const route = useRoute()
const gamerId = route.params?.id
supabase
  .from('gamers')
  .select()
  .eq('id', gamerId)
  .then((res) => {
    const data = res.data
    gamers.value = data
  })
</script>

<template>
  <div v-for="gamer in gamers" :key="gamer.id" class="profile-card">
    <p class="title">{{ gamer.username }}</p>
    <p class="text-lead">{{ gamer.email }}</p>
  </div>
</template>
