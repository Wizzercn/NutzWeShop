<template>
  <div class="app">
    <we-top></we-top>
    <we-main></we-main>
    <we-cart></we-cart>
  </div>
</template>

<script>
  import WeTop from './components/we-top'
  import WeMain from './components/we-main'
  import WeCart from './components/we-cart'

  export default {
    components: {
      WeTop,
      WeMain,
      WeCart
    }
  }
</script>

<style>
  html, #app {
    height: 100%;
    color: #333;
    font: .373333rem/1.5 Helvetica Neue,Helvetica,PingFang SC,Hiragino Sans GB,Microsoft YaHei,\\5FAE\8F6F\96C5\9ED1,Arial,sans-serif;
  }

  body {
    margin: 0;
    padding: 0;
    position: relative;
    min-height: 100%;
    font-size: 24px;
  }

</style>
