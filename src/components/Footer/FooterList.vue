<template>
  <footer class="footer" style="padding-bottom: 30px">
    <footer-intro></footer-intro>
    <div class="footer-hr"></div>
    <div class="container">
      <footer-main-page></footer-main-page>
    </div>
    <div class="footer-hr"></div>
    <div class="container">
      <footer-u></footer-u>
    </div>
  </footer>
</template>
<script>
import FooterIntro from "@/components/Footer/FooterIntro";
import FooterMainPage from "@/components/Footer/FooterMainPage";
import FooterU from "@/components/Footer/FooterU";

export default {
  components: {FooterU, FooterMainPage, FooterIntro}
}
</script>