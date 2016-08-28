<template>
  <div id="main">
    <ul>
      <li>aaa</li>
      <li>aaa</li>
    </ul>
    <section class="container menu-list">

    </section>
  </div>
</template>
<style>
  #main {
    margin-top: 180px;
    padding-bottom: 1.28rem;
  }

  #main ul {
    list-style: none;
    padding-left: 0;
    margin: 0;
  }

  #main li {
    position: relative;
    padding: .466667rem .2rem;
    border-bottom: 1px solid #ededed;
    font-size: .346667rem;
    color: #666;
  }

  li .active {
    background-color: #fff;
    border-right-color: #fff;
    font-weight: bolder;
  }

  .container{
    position: relative;
    height: 100%;
  }
  .menu-list{
    flex: 1;
    display: block;
    width: 0;
    height: 100%;
  }
</style>
