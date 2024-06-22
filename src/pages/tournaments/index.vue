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
  <div v-for="tournament in storedTournaments" :key="tournament.name" class="tournament">
    <p>{{ tournament.name }}</p>
    <Logo :imageFileName="tournament.logo" :tournamentName="tournament.name" />
  </div>
</template>

<style scoped>
.tournament {
  margin-right: 50px;
}
</style>
