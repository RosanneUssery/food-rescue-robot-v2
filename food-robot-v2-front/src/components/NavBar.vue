<template>
    <nav class="border-b-2">
        <div class="max-w-7xl mx-auto px-2 sm:px-6 lg:px-8">
            <div class="relative flex items-center justify-between h-16">
                <div class="absolute inset-y-0 left-0 flex items-center sm:hidden">
                    <button type="button" class="inline-flex items-center justify-center p-2 rounded-md text-gray-400 hover:text-white hover:bg-gray-700 focus:outline-none focus:ring-2 focus:ring-inset focus:ring-white" aria-controls="mobile-menu" aria-expanded="false" @click="handleMenuClick">
                        <span class="sr-only">Open main menu</span>
                        <svg :class="['h-6', 'w-6', MobileMenuOpen ? 'hidden' : 'block']" xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke="currentColor" aria-hidden="true">
                            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M4 6h16M4 12h16M4 18h16" />
                        </svg>
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
                      <div class="absolute inset-y-0 right-0 flex items-center pr-2 sm:static sm:inset-auto sm:ml-6 sm:pr-0">


                        <!-- Profile dropdown -->
                        <div class="ml-3 relative">
                            <div>
                                <button type="button" class="bg-gray-800 flex text-sm rounded-full" id="user-menu-button" aria-expanded="false" aria-haspopup="true" @click="handleProfileMenuClick">
                                <span class="sr-only">Open user menu</span>
                                <img class="h-8 w-8 rounded-full" src="../assets/saleck.jpg" alt="">
                                </button>
                            </div>
                            <div class="origin-top-right absolute right-0 mt-2 w-48 rounded-md shadow-lg py-1 bg-white ring-1 ring-black ring-opacity-5 focus:outline-none" role="menu" aria-orientation="vertical" aria-labelledby="user-menu-button" tabindex="-1" v-if="ProfileMenuOpen">
                                <!-- Active: "bg-gray-100", Not Active: "" -->
                                <a href="#" class="block px-4 py-2 text-sm text-gray-700" role="menuitem" tabindex="-1" id="user-menu-item-0">Your Profile</a>
                                <a href="#" class="block px-4 py-2 text-sm text-gray-700" role="menuitem" tabindex="-1" id="user-menu-item-1">Settings</a>
                                <a href="#" class="block px-4 py-2 text-sm text-gray-700" role="menuitem" tabindex="-1" id="user-menu-item-2">Sign out</a>
                            </div>
                        </div>
                    </div>
            </div>
            <div class="sm:hidden" id="mobile-menu" v-if="MobileMenuOpen">
                <div class="px-2 pt-2 pb-3 space-y-1">

                <router-link to="/" class="bg-blue-500 text-white block px-3 py-2 rounded-md text-base font-medium" aria-current="page">Home</router-link>

                <router-link to="/takeshifts" class="text-gray-800 hover:bg-gray-200 block px-3 py-2 rounded-md text-base font-medium">Take Shifts</router-link>

                <router-link to="/yourshifts" class="text-gray-800 hover:bg-gray-200 block px-3 py-2 rounded-md text-base font-medium">Your Shifts</router-link>

                <router-link to="/volunteers" class="text-gray-800 hover:bg-gray-200 block px-3 py-2 rounded-md text-base font-medium">Volunteers</router-link>
                </div>
            </div>
        </div> 
    </nav>
</template>

<script lang="ts">
  import Vue, { VNode } from 'vue';
  import { Component } from 'vue-property-decorator';

  interface HTMLElement {
      clickOutsideEvent: () => void;
  }

    Vue.directive('click-outside', {
        bind: function (el: any, binding: DirectiveBinding, vnode: VNode) {
            el.clickOutsideEvent = function (event: Event) {
                // here I check that click was outside the el and his childrens
                if (!(el == event.target || el.contains(event.target))) {
                    // and if it did, call method provided in attribute value
                    vnode.context[binding.expression](event);
                }
            };
            document.body.addEventListener('click', el.clickOutsideEvent)
        },
        unbind: function (el: any) {
            document.body.removeEventListener('click', el.clickOutsideEvent)
        },
    });

  @Component
  export default class extends Vue {

      MobileMenuOpen = false;
      ProfileMenuOpen = false;

      handleMenuClick() {
          this.MobileMenuOpen = !this.MobileMenuOpen;
      }

      handleProfileMenuClick() {
          this.ProfileMenuOpen = !this.ProfileMenuOpen;
      }


  }
</script>

<style>

  .NavbarComponent {

}

</style>