<template>
  <div class="home">
    <div class="container">
      <home-intro></home-intro>
      <home-cards></home-cards>
    </div>
    <home-case></home-case>
    <div class="container">
      <home-supportive-page></home-supportive-page>
    </div>
    <home-utility-page></home-utility-page>
    <home-get-ready></home-get-ready>
  </div>
</template>

<script>
// @ is an alias to /src


import HomeIntro from "@/components/Home/HomeIntro";
import HomeCards from "@/components/Home/HomeCards";
import HomeCase from "@/components/Home/HomeCase";
import HomeSupportivePage from "@/components/Home/HomeSupportivePage";
import HomeUtilityPage from "@/components/Home/HomeUtilityPage";
import HomeGetReady from "@/components/Home/HomeGetReady";

export default {
  name: 'HomeView',
  components: {HomeGetReady, HomeUtilityPage, HomeSupportivePage, HomeCase, HomeCards, HomeIntro}
}
</script>
