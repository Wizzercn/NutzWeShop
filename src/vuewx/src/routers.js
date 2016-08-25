/**
 * Created by wizzer on 2016/8/25.
 */
module.exports = function (router) {
  router.map({
    '/list': {
      name: 'list',
      component: require('./components/we-list.vue')
    }
  });
  router.afterEach(function (transition) {
    console.log('成功浏览到: ' + transition.to.path)
  });
};
