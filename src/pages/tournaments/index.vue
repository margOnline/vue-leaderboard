<script setup lang="ts">
import { supabase } from '@/lib/supabaseClient'
import { ref } from 'vue'
import Logo from '@/components/Logo.vue'
import ResultCard from '@/components/ResultCard.vue'

const storedTournaments = ref()
const menPlayerIds = [1, 2, 3, 4]
const womenPlayerIds = [5, 6, 7, 8]

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
  <div class="results">
    <ResultCard :title="'Men'" :playerIds="menPlayerIds" />
    <ResultCard :title="'Women'" :playerIds="womenPlayerIds" />
  </div>
</template>

<style scoped>
.tournament {
  margin-right: 50px;
}
</style>
