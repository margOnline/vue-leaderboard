<script setup lang="ts">
import ResultCardLine from './ResultCardLine.vue'
const props = defineProps<{
  title: 'Women' | 'Men'
  playerIds: number[]
}>()
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
        <ResultCardLine v-for="id in props.playerIds" :playerId="id" :key="id" />
      </tbody>
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
  text-align: left;
  padding: 5px;
}
.results-card {
  margin-top: 20px;
  background-color: #d3f8e6;
  border: 1px solid #5db67e;
}
</style>
