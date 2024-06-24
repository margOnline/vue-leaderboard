<script setup lang="ts">
import ResultCardLine from './ResultCardLine.vue'
const props = defineProps<{
  title: 'Women' | 'Men'
  playerIds: number[]
}>()
</script>

<template>
  <div>
    <table>
      <thead>
        <tr>
          <td>{{ props.title }}</td>
        </tr>
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
<style scoped></style>
