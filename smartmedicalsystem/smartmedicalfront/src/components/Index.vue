<template>
  <div>
    <h1>主页面</h1>
  </div>
</template>

<script>
export default {
  name: "Index",
  created() {
    this.$router.push("/login");
  }
}
</script>

<style scoped>

</style>
