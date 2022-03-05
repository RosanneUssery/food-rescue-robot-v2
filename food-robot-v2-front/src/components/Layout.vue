<template>
    <div class="LayoutComponent max-w-7xl mx-auto mt-8 ">
        <slot></slot>
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


</style>