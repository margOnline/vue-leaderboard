<script setup lang="ts">
import { supabase } from '@/lib/supabaseClient'
import { ref } from 'vue'
import Logo from '@/components/Logo.vue'

const storedTournaments = ref()

supabase
  .from('tournaments')
  .select()
  .then((res) => {
    const data = res.data
    storedTournaments.value = data
  })
</script>

<template>
  <div v-for="tournament in storedTournaments" :key="tournament.name">
    <h1>{{ tournament.name }}</h1>
    <Logo :imageFileName="tournament.logo" :tournamentName="tournament.name" />
  </div>
</template>
