<template>
  <div id="app">
    <router-view/>
  </div>
</template>

<script lang="ts">

  import Vue from 'vue';
  import { Component } from 'vue-property-decorator';

  @Component
  export default class extends Vue {

}

</script>

<style>

  #app {
    -webkit-font-smoothing: antialiased;
    -moz-osx-font-smoothing: grayscale;
  }

</style>
