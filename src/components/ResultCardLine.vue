<script setup lang="ts">
import { ref } from 'vue'
import { supabase } from '../lib/supabaseClient'
const props = defineProps<{
  playerId: number
}>()
const seed: (string | number)[] = [...Array(32), 'unseeded']
const result = ['1R', '2R', '3R', '4R', 'QF', 'SF', 'F', 'W']

const player = ref()
supabase
  .from('players')
  .select()
  .eq('id', props.playerId)
  .then((res) => {
    const data = res.data
    player.value = data
  })
</script>

<template>
  <tr>
    <td>{{ player.firstName }} {{ player.lastName }}</td>
    <td>{{ seed[3] }}</td>
    <td>{{ result[3] }}</td>
  </tr>
</template>
