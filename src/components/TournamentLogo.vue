<script setup lang="ts">
import { supabase } from '@/lib/supabaseClient'
const props = defineProps<{ imageFileName: string; tournamentName: string }>()
const imageAltTag: string = `${props.tournamentName} logo`
const image = supabase.storage.from('logos').getPublicUrl(props.imageFileName)
const imageURL = image.data.publicUrl
</script>

<template>
  <div class="logo">
    <img :src="imageURL" :alt="imageAltTag" />
  </div>
</template>
<style scoped>
.logo {
  margin: auto;
}
.logo img {
  width: auto;
  max-height: 50px;
}
</style>
