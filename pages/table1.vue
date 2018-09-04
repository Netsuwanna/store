<template>
 <div>
  <v-data-table
    :headers="headers"
    :items="desserts"
    class="elevation-1"
  >
    <template slot="items" slot-scope="props">
      <td>{{ props.item.s_c }}</td>
       <td class="text-xs-center">{{props.item.s_id }}</td>
      <td class="text-xs-center">{{props.item.s_code }}</td>
      <td class="text-xs-center">{{ props.item.s_name }}</td>
    </template>
    <template slot="pageText" slot-scope="props">
      Lignes {{ props.pageStart }} - {{ props.pageStop }} de {{ props.itemsLength }}
    </template>
  </v-data-table>
  <div>
    <v-btn color="success">ตกลง</v-btn>
    <v-btn color="error">แก้ไข</v-btn>
    <v-btn color="warning">ชำระเงิน</v-btn>
    <v-btn color="info">ที่อยู่</v-btn>
  </div>
   </div>
</template>
<script>
  export default {
    data () {
      return {
        headers: [
          {
            text: 's_id',
            align: 'center',
            sortable: false,
            value: 'name'
          },
          { text: 's_code', value: 'calories' },
          { text: 's_name', value: 'fat' },
          { text: 's_class', value: 'carbs' },
        ],
        desserts: [],
      }
    },
    async created() {
    this.getstudent()
  }, 
methods: {
    async getstudent() {
      let res = await this.$http.get('http://127.0.0.1/php-api/list-manu.php')
      this.desserts = res.data.student
    },
},
  }
</script>