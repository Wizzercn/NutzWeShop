<template>
  <div id="top">
    <div :style="styleObject"></div>
  </div>
</template>
<script>
  export default {
    data(){
      return {
        styleObject:{
          dispaly:'none'
        }
      }
    },
    ready:function(){
      this.getLogo()
    },
    methods:{
      getLogo:function(){
        this.$http.get("/api/public/wx/cms/logo").then((res) => {
          var d=res.data;
          console.log(d)
          this.$set('styleObject', '{dispaly:"block",height:"180px",background-image:'+d.data+',background-size:"100%"}')
        })
      .catch(function(response) {
          console.log(response)
        })
      }
    }
  }
</script>
<style>
  #top{
    float: left;
    width: 100%;
    max-height: 120px;
    background-color: #F5F5F5;
    font-family: 'Raleway', sans-serif;
    font-weight: 400;
  }
</style>
