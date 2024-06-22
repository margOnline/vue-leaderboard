<script setup lang="ts">
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

const onSubmit = handleSubmit(async (values) => {
  const { data, error } = await supabase
    .from('gamers')
    .insert({
      username: values.username,
      email: values.email,
      password: values.password
    })
    .select()

  if (!error) {
    router.push({ path: `/gamers/${data[0].id}` })
  }
})
</script>

<template>
  <form @submit="onSubmit">
    <div class="form-field">
      <label class="form-label" for="username">Username</label>
      <input class="form-input" v-model="username" v-bind="usernameAttrs" />
      <div v-if="errors.username && meta.touched" class="error">{{ errors.username }}</div>
    </div>
    <div class="form-field">
      <label class="form-label" for="name">Email</label>
      <input class="form-input" v-model="email" v-bind="emailAttrs" />
      <div v-if="errors.email && meta.touched" class="error">{{ errors.email }}</div>
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
.form-field {
  margin-bottom: 15px;
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
</style>
