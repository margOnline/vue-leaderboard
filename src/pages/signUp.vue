<script setup lang="ts">
import { ref } from 'vue'
import { useForm } from 'vee-validate'
import * as yup from 'yup'
import { supabase } from '@/lib/supabaseClient'
import router from '@/router'

const { values, errors, defineField, meta, handleSubmit } = useForm({
  validationSchema: yup.object({
    email: yup.string().email().required(),
    username: yup.string().required(),
    password: yup.string().required().min(8)
  })
})
const [username, usernameAttrs] = defineField('username')
const [email, emailAttrs] = defineField('email')
const [password, passwordAttrs] = defineField('password')
const dbError = ref()

const onSubmit = handleSubmit(async (values) => {
  try {
    const { data, error } = await supabase
      .from('gamers')
      .insert({
        username: values.username,
        email: values.email,
        password: values.password
      })
      .select()

    if (error) throw error
    else {
      router.push({ path: `/gamers/${data[0].id}` })
    }
  } catch (error) {
    if (error.code === '23505') dbError.value = 'This email address is not available'
    else {
      dbError.value = error.details
    }
  }
})
</script>

<template>
  <form @submit="onSubmit" class="form-container">
    <div class="form-field">
      <label class="form-label" for="username">Username</label>
      <input class="form-input" v-model="username" v-bind="usernameAttrs" />
      <div v-if="errors.username && meta.touched" class="error">{{ errors.username }}</div>
    </div>
    <div class="form-field">
      <label class="form-label" for="name">Email</label>
      <input class="form-input" v-model="email" v-bind="emailAttrs" />
      <div v-if="(errors.email || dbError) && meta.touched" class="error">
        {{ errors.email || dbError }}
      </div>
    </div>
    <div class="form-field">
      <label class="form-label" for="name">Password</label>
      <input type="password" class="form-input" v-model="password" v-bind="passwordAttrs" />
      <div v-if="errors.password && meta.touched" class="error">{{ errors.password }}</div>
    </div>
    <button :disabled="!meta.valid">Sign up</button>
  </form>
</template>

<style scoped>
.form-container {
  background-color: #d3f8e6;
  border: 1px solid #5db67e;
  padding: 20px;
  margin-right: 20px;
}
.form-field {
  margin-bottom: 15px;
  display: grid;
}
.form-label {
  margin-right: 10px;
}
.form-input {
  font-size: 16px;
  border-radius: 10px;
  padding: 5px;
}
.error {
  color: rgb(109, 41, 41);
}
button {
  color: #5db67e;
  background-color: white;
  border-radius: 15px;
  border: 1px solid #5db67e;
  padding: 5px 10px;
  font-size: 9px;
  text-align: center;
  text-transform: uppercase;
}
</style>
