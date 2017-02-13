import Vue from 'vue';
import Element from 'main/index.js';
import App from './play/index.vue';
// import 'packages/theme-default/src/index.css';
import 'packages/theme-test/lib/index.css';

Vue.use(Element);

new Vue({ // eslint-disable-line
  render: h => h(App)
}).$mount('#app');
