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

  #main {
    top: 180px;
    float: left;
    width: 300px;
    height: 100%;
    background-color: #F5F5F5;
    font-family: 'Raleway', sans-serif;
    font-weight: 400;
  }

  #main .container {
    height: calc(100% - 180px);
    max-height: calc(100% - 180px);
    overflow: auto;
    width: 100%;
    padding: 0;
  }

  #main .container .list-group-item {
    border: 0;
    border-radius: 0;
  }

  .list-group-item-heading {
    font-weight: 300;
    font-size: 15px;
  }

</style>
