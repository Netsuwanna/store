<template>
 <div>
  <v-data-table
    :headers="headers"
    :items="desserts"
    class="elevation-1"
  >
    <template slot="items" slot-scope="props">
      <td>{{ props.item.s_c }}</td>
       <td class="text-xs-lelt">{{props.item.s_id }}</td>
      <td class="text-xs-lelt">{{props.item.s_code }}</td>
      <td class="text-xs-lelt">{{ props.item.s_name }}</td>
       <td class="text-xs-lelt">{{ props.item.s_class }}</td>
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
            text: 'ลำดับ',
            align: 'left',
            sortable: false,
            value: 'name'
          },
          { text: 'รหัส', value: 'fat' },
          { text: 'ชื่อ', value: 'carbs' },
          { text: 'จำนวน', value: 'protein' },
        ],
        desserts: [],
      }
    },
    async created() {
    this.getstudent()
  }, 
methods: {
    async getstudent() {
      let res = await this.$http.get('http://127.0.0.1/php-api/list-student.php')
      this.desserts = res.data.student
    },
},
  }
</script>