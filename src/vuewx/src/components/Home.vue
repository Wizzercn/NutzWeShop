<template>
  <div class="container">
    <div class="top">

    </div>
    <div class="main">
      <div class="slider">

      </div>
      <div class="right">
                {{ msg }}
      </div>
    </div>
  </div>
</template>

<script>
export default {
  data () {
    return {
      // note: changing this line won't causes changes
      // with hot-reload because the reloaded component
      // preserves its current state and we are modifying
      // its initial state.
      msg: 'Hello World!'
    }
  }
}
</script>
