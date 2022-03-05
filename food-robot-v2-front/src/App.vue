<template>
  <div id="app">
    <NavBar />
    <Layout>
      <router-view/>
    </Layout>
  </div>
</template>

<script lang="ts">
  import Vue from 'vue';
  import { Component } from 'vue-property-decorator';
  import NavBar from '@/components/NavBar.vue';
  import Layout from '@/components/Layout.vue';

  @Component({
    components: {
      NavBar,
      Layout
    }
  })
  export default class extends Vue {


  }

</script>

<style>
#app {
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  color: #2c3e50;
}


</style>
