<template>
  <div class="hello">
    <h1>{{ msg }}</h1>
    <form>
      <input type="text" name="username" v-model="userName"><br>
      <input type="text" name="age" v-model="age"><br>
      <input type="submit" @click.prevent="addUser">
    </form>
  </div>
</template>

<script>
export default {
  name: 'hello',
  data () {
    return {
      msg: 'Welcome to your vue.js app',
      userName: '',
      age: ''
    }
  },
  methods: {
    addUser () {
      let name = this.userName
      let age = this.age
      this.$http.post('/api/user/addUser', {
        username: name,
        age: age
      }).then(function (response) {
        console.log(response)
      }).catch(function (error) {
        console.log(error)
      })
    }
  }
}
</script>
