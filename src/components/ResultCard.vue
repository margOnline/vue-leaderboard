<script setup lang="ts">
import { ref } from 'vue'
import ResultCardLine from './ResultCardLine.vue'
import ResultCardFooter from './ResultCardFooter.vue'
import { supabase } from '@/lib/supabaseClient'
const props = defineProps<{
  title: 'Women' | 'Men'
  playerIds: number[]
}>()

const players = ref()

;(async () => {
  const { data, error } = await supabase.from('players').select().in('id', props.playerIds)
  if (error) console.error(error)

  players.value = data
})()
</script>

<template>
  <div class="results-card">
    <h4>{{ props.title }}s</h4>
    <table>
      <thead>
        <tr>
          <td>Player</td>
          <td>Seeding</td>
          <td>Result</td>
        </tr>
      </thead>
      <tbody>
        <ResultCardLine v-for="player in players" :player="player" :key="player.id" />
      </tbody>
      <tfoot>
        <ResultCardFooter />
      </tfoot>
    </table>
  </div>
</template>

<style scoped>
h4 {
  font-size: 14px;
  margin-left: 10px;
  text-align: left;
}
table {
  border-collapse: collapse;
}
thead {
  font-size: 10px;
  color: #969696;
  border-bottom: 1px solid #5db67e;
}
td {
  font-size: 12px;
  text-align: left;
  padding: 5px;
}
tfoot {
  font-weight: bold;
}
.event-score {
  text-align: right;
}
.results-card {
  margin-top: 20px;
  background-color: #d3f8e6;
  border: 1px solid #5db67e;
}
</style>
