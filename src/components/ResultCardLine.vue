<script setup lang="ts">
import { ref, computed } from 'vue'
import { supabase } from '../lib/supabaseClient'
const props = defineProps<{
  playerId: number
}>()
const seed: (string | number)[] = [...Array(32).keys(), 'unseeded']
const result = ['1R', '2R', '3R', '4R', 'QF', 'SF', 'F', 'W']
const seeding = computed(() => {
  return seed[Math.floor(Math.random() * 32 + 1)]
})

const players = ref()
supabase
  .from('players')
  .select()
  .eq('id', props.playerId)
  .then((res) => {
    const data = res.data
    players.value = data
  })
</script>

<template>
  <tr v-for="player in players" :key="player.id">
    <td>{{ player.firstname }} {{ player.lastname }}</td>
    <td class="right-align">{{ seeding }}</td>
    <td class="right-align">{{ result[3] }}</td>
    <hr />
  </tr>
</template>

<style scoped>
td {
  color: #363837;
  font-size: 12px;
  text-align: left;
  border-bottom: 1px solid #5db67e;
  padding: 8px;
}
.right-align {
  text-align: right;
}
</style>
