<script setup lang="ts">
import { supabase } from '@/lib/supabaseClient'
import { ref } from 'vue'
import TournamentLogo from '@/components/TournamentLogo.vue'
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
  <div class="tournament-container">
    <div v-for="tournament in storedTournaments" :key="tournament.name" class="tournament">
      <h3>{{ tournament.name }}</h3>
      <TournamentLogo :imageFileName="tournament.logo" :tournamentName="tournament.name" />
      <div class="results">
        <ResultCard :title="'Men'" :playerIds="menPlayerIds" />
        <ResultCard :title="'Women'" :playerIds="womenPlayerIds" />
      </div>
    </div>
  </div>
</template>

<style scoped>
.tournament-container {
  display: flex;
  flex-direction: row;
  justify-content: center;
  align-items: center;
  margin-top: 3rem;
  font-family: Arial, Helvetica, sans-serif;
  color: #2d2b2b;
  column-gap: 20px;
}
.tournament {
  text-align: center;
}
</style>
