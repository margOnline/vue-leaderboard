<script setup lang="ts">
import { computed } from 'vue'
const props = defineProps<{
  player: {
    firstname: string
    lastname: string
  }
}>()
const seed: (string | number)[] = [...Array(32).keys(), 'unseeded']
const result = ['1R', '2R', '3R', '4R', 'QF', 'SF', 'F', 'W']
const seeding = computed(() => {
  return seed[Math.floor(Math.random() * 32 + 1)]
})
</script>

<template>
  <tr>
    <td>{{ props.player.firstname }} {{ props.player.lastname }}</td>
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
