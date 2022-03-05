<template>
    <nav class="border-b-2">
        <div class="max-w-7xl mx-auto px-2 sm:px-6 lg:px-8">
            <div class="relative flex items-center justify-between h-16">
                <div class="absolute inset-y-0 left-0 flex items-center sm:hidden">
                    <!-- Mobile menu button-->
                    <button type="button" class="inline-flex items-center justify-center p-2 rounded-md text-gray-400 hover:text-white hover:bg-gray-700 focus:outline-none focus:ring-2 focus:ring-inset focus:ring-white" aria-controls="mobile-menu" aria-expanded="false" @click="handleMenuClick">
                    <span class="sr-only">Open main menu</span>
                    <!--
                        Icon when menu is closed.

                        Menu open: "hidden", Menu closed: "block"
                    -->
                    <svg :class="['h-6', 'w-6', MobileMenuOpen ? 'hidden' : 'block']" xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke="currentColor" aria-hidden="true">
                        <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M4 6h16M4 12h16M4 18h16" />
                    </svg>
                    <!--
                        Icon when menu is open.

                        Menu open: "block", Menu closed: "hidden"
                    -->
                    <svg :class="['h-6', 'w-6', MobileMenuOpen ? 'block' : 'hidden']" xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke="currentColor" aria-hidden="true">
                        <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M6 18L18 6M6 6l12 12" />
                    </svg>
                    </button>
                </div>
                <div class="flex-1 flex items-center justify-center sm:items-stretch sm:justify-start">
                    <div class="flex-shrink-0 flex items-center">
                        <img class="h-8 w-auto" src="../assets/dfr_logo_homepage_150px.png" alt="">
                    </div>
                    <div class="hidden sm:block sm:ml-6">
                        <div class="flex space-x-4">
                            <router-link to="/" class="bg-blue-500 text-white px-3 py-2 rounded-md text-sm font-medium" aria-current="page">Home</router-link>
                            
                            <router-link to="/takeshifts" class="text-gray-800 hover:bg-gray-200 px-3 py-2 rounded-md text-sm font-medium">Take Shifts</router-link>

                            <router-link to="/yourshifts" class="text-gray-800 hover:bg-gray-200 px-3 py-2 rounded-md text-sm font-medium">Your Shifts</router-link>

                            <router-link to="/volunteers" class="text-gray-800 hover:bg-gray-200 px-3 py-2 rounded-md text-sm font-medium">Volunteers</router-link>
                        </div>
                    </div>
                </div>
            </div>
        </div> 
          <!-- Mobile menu, show/hide based on menu state. -->
        <div class="sm:hidden" id="mobile-menu" v-if="MobileMenuOpen">
            <div class="px-2 pt-2 pb-3 space-y-1">

            <router-link to="/" class="bg-blue-500 text-white block px-3 py-2 rounded-md text-base font-medium" aria-current="page">Home</router-link>

            <router-link to="/takeshifts" class="text-gray-800 hover:bg-gray-200 block px-3 py-2 rounded-md text-base font-medium">Take Shifts</router-link>

            <router-link to="/yourshifts" class="text-gray-800 hover:bg-gray-200 block px-3 py-2 rounded-md text-base font-medium">Your Shifts</router-link>

            <router-link to="/volunteers" class="text-gray-800 hover:bg-gray-200 block px-3 py-2 rounded-md text-base font-medium">Volunteers</router-link>
            </div>
        </div>
    </nav>
</template>

<script lang="ts">
  import Vue from 'vue';
  import { Component } from 'vue-property-decorator';

  @Component
  export default class extends Vue {

      MobileMenuOpen = false;

      handleMenuClick() {
          this.MobileMenuOpen = !this.MobileMenuOpen;
      }


  }
</script>

<style>

  .NavbarComponent {

}

</style>