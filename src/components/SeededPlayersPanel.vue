<script setup lang="ts">
import { Tabs, Tab } from 'vue3-tabs-component'

const femalePlayers = [
  {
    name: 'Iga Swiatek',
    seed: 1
  },
  {
    name: 'Aryanka Sabaleta',
    seed: 2
  },
  {
    name: 'Coco Gauff',
    seed: 3
  },
  {
    name: 'Jasmine Paolini',
    seed: 4
  },
  {
    name: 'Katie Boulter',
    seed: 5
  },
  {
    name: 'Emma Raducanu',
    seed: 6
  }
]

const malePlayers = [
  {
    name: 'Carlos Alcaraz',
    seed: 1
  },
  {
    name: 'Jannik Sinner',
    seed: 2
  },
  {
    name: 'Alex Popyrin',
    seed: 3
  },
  {
    name: 'Taylor Dent',
    seed: 4
  },
  {
    name: 'Cameron Norrie',
    seed: 5
  },
  {
    name: 'Jack Draper',
    seed: 6
  }
]

const tabClicked = () => {
  console.log('clicked')
}

const tabChanged = () => {
  console.log('changed')
}
</script>
<template>
  <div class="mx-10 mt-5 mb-10">
    <h3 class="text-xl mb-4 font-light">Seeded Players</h3>
    <div class="mx-auto">
      <div class="panel">
        <tabs>
          <tab name="Men">
            <dl v-for="player in malePlayers" :key="player.seed">
              <dt>{{ player.name }}</dt>
              <dd>{{ player.seed }}</dd>
            </dl>
          </tab>
          <tab name="Women">
            <dl v-for="player in femalePlayers" :key="player.seed">
              <dt>{{ player.name }}</dt>
              <dd>{{ player.seed }}</dd>
            </dl>
          </tab>
        </tabs>
      </div>
    </div>
  </div>
</template>

<style>
.tabs-component-tabs {
  display: flex;
  justify-content: space-evenly;
}
.tabs-component-tab {
  width: 100%;
  padding-left: 15px;
  padding-top: 10px;
  padding-bottom: 5px;
}
.is-active {
  background-color: #d3f8e6;
  border-left: 1px solid #5db67e;
  border-top: 1px solid #5db67e;
  border-right: 1px solid #5db67e;
  a {
    border: none;
  }
}
.is-inactive {
  background-color: #eeeded;
}
.tabs-component-panels {
  border-left: 1px solid #5db67e;
  border-bottom: 1px solid #5db67e;
  border-right: 1px solid #5db67e;
}
.tabs-component-panel {
  background-color: #d3f8e6;
  padding: 20px;
  dl {
    display: flex;
    justify-content: space-between;
    margin-bottom: 10px;
    border-bottom: 1px solid #5db67e;
    padding-bottom: 5px;
  }
}
</style>
