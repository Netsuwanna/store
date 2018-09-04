<template>
  <v-app>
    <v-navigation-drawer v-model="drawer" app right>
      <v-list>
          <v-list-tile v-for="item in items" :key="item.title">
            <v-list-tile-action>
              <v-icon>{{ item.icon }}</v-icon>
            </v-list-tile-action>
            <v-list-tile-content>
              <v-list-tile-title><nuxt-link :to="item.url">{{ item.title }}</nuxt-link></v-list-tile-title>
            </v-list-tile-content>
          </v-list-tile>
        </v-list>
        </v-navigation-drawer>
    <v-toolbar app class="brown lighten-5">
      <v-toolbar-title></v-toolbar-title>
      <v-spacer/>
      <v-toolbar-side-icon @click.stop="drawer = !drawer"/>
    </v-toolbar>
    <v-content>
      <nuxt/>
    </v-content>
  </v-app>
</template>

<script>
export default {
  data() {
    return {
      items: [
        	{ title: 'Home', icon: 'home', url: '/' },
        	{ title: 'Search', icon: 'update', url: '/Search' },
        	{ title: 'Login', icon: 'security', url: '/login' },
          { title: 'table', icon: 'security', url: '/table' },
      	],
    	}
  },
  computed: {
    online: {
      get() {
        return this.$store.state.online
      },
      set(value) {
        this.$store.commit('setOnline', value)
      },
    },
    drawer: {
      get() {
        return this.$store.state.drawer
      },
      set(value) {
        this.$store.commit('setDrawer', value)
      },
    },
  },

  mounted() {
    this.$store.commit('setOnline', window.navigator.onLine)
    window.addEventListener('offline', this.toggleNetworkStatus)
    window.addEventListener('online', this.toggleNetworkStatus)
  },

  beforeDestroyed() {
    window.removeEventListener('offline', this.toggleNetworkStatus)
    window.removeEventListener('online', this.toggleNetworkStatus)
  },

  methods: {
    toggleNetworkStatus({ type }) {
      this.online = type === 'online'
    },
  },
}
</script>
