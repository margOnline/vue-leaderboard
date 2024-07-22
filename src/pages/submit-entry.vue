<script setup lang="ts">
import PageTitle from '@/components/PageTitle.vue'
import SeededPlayersPanel from '@/components/SeededPlayersPanel.vue'
import { ref } from 'vue'

const femalePlayer1 = ref()
const femalePlayer2 = ref()
const femalePlayer3 = ref()
const femalePlayer4 = ref()
const malePlayer1 = ref()
const malePlayer2 = ref()
const malePlayer3 = ref()
const malePlayer4 = ref()

const isFormValid = ref<boolean>(false)

const onSubmit = () => {
  console.log('femalePlayer1: ', femalePlayer1.value)
}
</script>

<template>
  <div>
    <PageTitle :iconFile="'submit.svg'" :title="'Submit Entry'" />
    <div class="flex gap-4 pl-5">
      <div class="w-2/3 p-4 rounded-sm bg-paleGreen border border-solid border-green">
        <form @submit="onSubmit" class="flex">
          <div class="w-1/2">
            <h4 class="font-bold text-sm">Women</h4>
            <div class="form-field">
              <label class="form-label" :for="femalePlayer1">1.</label>
              <input type="text" v-model="femalePlayer1" />
            </div>
            <div class="form-field">
              <label class="form-label" :for="femalePlayer2">2.</label>
              <input type="text" v-model="femalePlayer2" />
            </div>
            <div class="form-field">
              <label class="form-label" :for="femalePlayer3">3.</label>
              <input type="text" v-model="femalePlayer3" />
            </div>
            <div class="form-field">
              <label class="form-label" :for="femalePlayer4">4.</label>
              <input type="text" v-model="femalePlayer4" />
            </div>
          </div>
          <div class="w-1/2">
            <h4 class="font-bold text-sm">Men</h4>
            <div class="form-field">
              <label class="form-label" :for="malePlayer1">1.</label>
              <input type="text" v-model="malePlayer1" />
            </div>
            <div class="form-field">
              <label class="form-label" :for="malePlayer2">2.</label>
              <input type="text" v-model="malePlayer2" />
            </div>
            <div class="form-field">
              <label class="form-label" :for="malePlayer3">3.</label>
              <input class="selection:border-gray-400" type="text" v-model="malePlayer3" />
            </div>
            <div class="form-field">
              <label class="form-label" :for="malePlayer4">4.</label>
              <input type="text" v-model="malePlayer4" />
            </div>
            <button :disabled="!isFormValid">Submit</button>
          </div>
        </form>
      </div>
      <div class="mr-4 w-1/3 bg-paleGrey border border-solid border-grey">
        <SeededPlayersPanel />
      </div>
    </div>
  </div>
</template>

<style scoped>
input {
  border: 1px solid #ededed;
  border-radius: 5px;
  margin: 10px 10px;
  font-size: 16px;
  width: 80%;
}
input:focus {
  outline: 1px solid #969696;
}
button {
  float: right;
  margin-right: 10px;
  margin-top: 5px;
  color: #5db67e;
  background-color: white;
  border-radius: 15px;
  border: 1px solid #5db67e;
  padding: 5px 15px;
  font-size: 9px;
  text-align: center;
  text-transform: uppercase;
}
</style>
