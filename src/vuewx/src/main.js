import Vue from 'vue'
import App from './App'
import Home from './components/HelloFromVux'
import VueRouter from 'vue-router'

const FastClick = require('fastclick')
FastClick.attach(document.body)

Vue.use(VueRouter)

const router = new VueRouter()

router.map({
  '/': {
    component: Home
  }
})

router.start(App, '#app')

