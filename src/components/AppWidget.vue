<script setup lang="ts">
import VueCountdown from '@chenfengyuan/vue-countdown'
import { ref } from 'vue'
import router from './../router'

const time = ref(4 * 24 * 60 * 60 * 1000)
</script>

<template>
  <div class="timer-container">
    <span class="timer-icon">
      <svg xmlns="http://www.w3.org/2000/svg" width="15" height="15" viewBox="0 0 21 21">
        <path
          fill="#13B56F"
          d="M10.127182,0 C4.52347464,0 0,4.52347464 0,10.127182 C0,15.730889 4.52347464,20.2543639 10.127182,20.2543639 C15.730889,20.2543639 20.2543639,15.730889 20.2543639,10.127182 C20.2543639,4.52347464 15.730889,0 10.127182,0 Z M10.127182,2.02543639 C14.6506569,2.02543639 18.2289275,5.60370732 18.2289275,10.127182 C18.2289275,14.6506569 14.6506569,18.2289275 10.127182,18.2289275 C5.60370732,18.2289275 2.02543639,14.6506569 2.02543639,10.127182 C2.02543639,5.60370732 5.60370732,2.02543639 10.127182,2.02543639 Z M9.11446376,5.06359098 L9.11446376,10.127182 L9.11446376,10.5385987 L9.39929076,10.8550732 L12.4374453,13.8932278 L13.8932278,12.4374453 L11.1399002,9.68411775 L11.1399002,5.06359098 L9.11446376,5.06359098 Z"
        />
      </svg>
    </span>
    <vue-countdown class="timer" :time="time" v-slot="{ days, hours, minutes }">
      {{ 24 * days + hours }} : {{ minutes }}
    </vue-countdown>
    <span class="label">hrs.left</span>
  </div>
  <div class="button-container">
    <button @click="router.push('/submit-entry')">submit entry</button>
    <div class="button-icon">
      <svg xmlns="http://www.w3.org/2000/svg" width="15" height="9" viewBox="0 0 15 9">
        <polygon
          fill="#FFFFFF"
          points="4.048 .167 .483 3.732 .056 4.159 .483 4.586 4.048 8.151 4.883 7.297 2.339 4.753 14.259 4.753 14.259 3.565 2.339 3.565 4.883 1.021"
          transform="rotate(180 7.5 4.5)"
        />
      </svg>
    </div>
  </div>
</template>

<style scoped>
.timer-container {
  position: relative;
  margin-top: 30px;
  margin-bottom: 20px;
}
.timer {
  margin-left: 30px;
  color: #969696;
  font-size: 24px;
}
.timer-icon {
  position: absolute;
  top: 12px;
  left: 10px;
}
.label {
  color: #d3d3d3;
  margin-left: 6px;
  font-size: 12px;
}
.button-container {
  position: relative;
}
button {
  color: white;
  font-size: 10px;
  font-weight: bold;
  text-transform: uppercase;
  padding: 10px 34px;
  border: 1px #34dbeb;
  margin-left: 14px;
  border-radius: 15px;
  background: linear-gradient(90deg, #13b56f, #34dbeb);
  vertical-align: middle;
}
.button-icon {
  position: absolute;
  top: 13px;
  right: 28px;
}
</style>
