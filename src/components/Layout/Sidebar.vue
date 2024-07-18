<script setup lang="ts">
import AppLogo from '@/components/AppLogo.vue'
import AppWidget from '@/components/AppWidget.vue'
import Leaderboard from '@/components/Leaderboard.vue'
</script>
<template>
  <aside
    class="flex flex-col h-screen gap-2 border-r fixed bg-muted/40 lg:w-52 w-16 transition-[width]"
  >
    <div class="flex h-16 items-center lg:px-4 shrink-0 gap-1 justify-between">
      <div class="flex flex-col justify-between h-full relative">
        <div>
          <AppLogo />
          <AppWidget />
          <Leaderboard />
        </div>
      </div>
    </div>
  </aside>
</template>
