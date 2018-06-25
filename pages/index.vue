
<template>
  <div>
      <v-carousel>
    <v-carousel-item v-for="(item,i) in items" :src="item.src" :key="i"></v-carousel-item>
  </v-carousel>
  
    <nuxt-link to="/tabled">Hello Kubtuntha->click.</nuxt-link><br>
    <router-link :to="{ path: '/student1'}" replace>Register</router-link><br>
    <router-link :to="{ path: '/student1'}" push>Register</router-link><br>
  </div>
</template>
<script>
  export default {
    data () {
      return {
        items: [
          {
            src: '/pix/dss.jpg'
          },
          {
            src: '/pix/fg.jpg'
          },
          {
            src: 'pix/red.jpg'
          },
          {
            src: '/pix/rr.jpg'
          }
        ]
      }
    }
  }
</script>
<script>
export default {
  data() {
    return {
      id: 1,
    }
  },
}
</script>