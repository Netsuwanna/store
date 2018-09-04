
<template>
<v-app>
  <div>
      <v-carousel>
    <v-carousel-item v-for="(item,i) in items" :src="item.src" :key="i"></v-carousel-item>
  </v-carousel>
    <nuxt-link to="/login"><center><div class="text-xs-center">
          <div>
             <div>
            <v-btn color="warning" dark large>เข้าสู่ระบบ</v-btn>
          </div>
          </div>
          </div></center></nuxt-link><br>

    <nuxt-link to="/search"><center><div class="text-xs-center">
          <div>
             <div>
             <v-btn color="success">ค้นหา</v-btn>

          </div>
          </div>
          </div></center></nuxt-link><br>
    </div>
    </v-app>
</template>
<script>
  export default {
     layout : "public",
    data () {
      return {
        items: [
          {
            src: '/pix/f.png'
          },
          {
            src: '/pix/r.PNG'
          },
          {
            src: '/pix/t.png'
          },
        ]
      }
    }
  }
  
</script>
