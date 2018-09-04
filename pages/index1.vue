<template>
  <div>
    <nuxt-link to="/tabled">Hello Kubtuntha->click.</nuxt-link><br>
    <router-link :to="{ path: '/student1'}" replace>Register</router-link><br>
    <router-link :to="{ path: '/student1'}" push>Register</router-link><br>
  </div>
</template>
<script>
export default {
   layout : "default1",
  data() {
    return {
      id: 1,
    }
  },
}
</script>