<template>
  <div class="container">
      <header class="navbar">
        <div class="navbar-logo">
          <img src="https://assets.website-files.com/6218605145a2e6339ee94d62/6246c7b9b0a24176983435fd_UIUxer-brand-logo.svg" alt="logo">
        </div>
        <nav class="navbar-menu">
          <ul class="navbar-item" v-show="!mobile">
            <li class="navbar__li"  v-for="(menu, index) in navbarList " :key="index">
              <router-link class="navbar_link" aria-current="page" :to="menu.path">
                {{ menu.name }}
              </router-link>
            </li>
          </ul>
          <div class="navbar-icon">
              <i :class="{'icon-active': mobileNav}" style="cursor: pointer;" @click="toggleMobileNav" v-show="mobile" class="material-icons menu">menu</i>
          </div>
          <transition name="mobile-nav">
            <ul class="navbar-dropdown" v-show="mobileNav">
              <li class="navbar__li"  v-for="(menu, index) in navbarList " :key="index">
                <router-link class="navbar_link" aria-current="page" :to="menu.path">
                  {{ menu.name }}
                </router-link>
              </li>
            </ul>
          </transition>
        </nav>
      </header>
  </div>
</template>

<script>
import {headerNavbarList} from "@/Constants/headerNavbarList";

export default {
  data() {
    return {
      navbarList: headerNavbarList,
      scrollPosition: null,
      mobile: true,
      mobileNav: null,
      windowWidth: null
    }
  },
  created() {
    window.addEventListener('resize', this.checkScreen)
    this.checkScreen()

  },
  methods: {
    toggleMobileNav() {
      this.mobileNav = !this.mobileNav
    },
    checkScreen() {
      this.windowWidth = window.innerWidth
      if(this.windowWidth <= 1030){
        this.mobile = true
        return
      }
      this.mobile = false
      this.mobileNav = false
      return;
    }
  }
}
</script>



