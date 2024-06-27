<script setup lang="ts">
import { supabase } from '@/lib/supabaseClient'
import { ref } from 'vue'
import Logo from '@/components/Logo.vue'
import ResultCard from '@/components/ResultCard.vue'

const storedTournaments = ref()
const menPlayerIds = [1, 2, 3, 4]
const womenPlayerIds = [5, 6, 7, 8]

;(async () => {
  const { data, error } = await supabase.from('tournaments').select()
  if (error) console.error(error)

  storedTournaments.value = data
})()
</script>

<template>
  <div v-for="tournament in storedTournaments" :key="tournament.name" class="tournament">
    <h3>{{ tournament.name }}</h3>
    <Logo :imageFileName="tournament.logo" :tournamentName="tournament.name" />

    <div class="results">
      <ResultCard :title="'Men'" :playerIds="menPlayerIds" />
      <ResultCard :title="'Women'" :playerIds="womenPlayerIds" />
    </div>
  </div>
</template>

<style scoped>
.main {
  column-count: 4;
  column-gap: 10%;
  border: 1px solid green;
}
.tournament {
  text-align: center;
}
</style>
