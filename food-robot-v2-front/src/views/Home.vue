<template>
  <div class="home">
    <HelloWorld msg="this is my vue component"/>
  </div>
</template>

<script lang="ts">
  import Vue from 'vue';
  import { Component } from 'vue-property-decorator';
  import HelloWorld from '../components/HelloWorld.vue'

  @Component({
    components: {
      HelloWorld
    }
  })
  export default class extends Vue {
  }
</script>
