<template>
  <div class="app">
    <we-top></we-top>
    <div>
      <we-main></we-main>
      <router-view></router-view>
    </div>
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
  }

  body {
    margin: 0;
    padding: 0;
    border: 0;
    height: 100%;
    max-height: 100%;
    position: relative;
    font-size: 14px;
    color: #666;
  }
</style>
