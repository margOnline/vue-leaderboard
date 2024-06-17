<script setup lang="ts">
import { supabase } from '@/lib/supabaseClient'
const props = defineProps<{ imageFileName: string; tournamentName: string }>()
const imageAltTag: string = `${props.tournamentName} logo`
const image = supabase.storage.from('logos').getPublicUrl(props.imageFileName)
const imageURL = image.data.publicUrl
</script>

<template>
  <div>
    <img :src="imageURL" :alt="imageAltTag" height="50px" width="50px" />
  </div>
</template>
<style scoped></style>
