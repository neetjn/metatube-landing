<landing>
  <div class="flex-1 mx-auto w-full h-full">
    <banner class="block w-full"></banner>
    <about class="block w-full"></about>
    <adopters class="block w-full"></adopters>
    <contact class="block w-full"></contact>
  </div>
  <sticky-footer class="w-full"></sticky-footer>
  <script>
    import Banner from '../components/banner.tag'
    import About from '../components/about.tag'
    import Adopters from '../components/adopters.tag'
    import Contact from '../components/contact.tag'
    import StickyFooter from '../components/sticky-footer.tag'

    export default {
      components: {
        Banner,
        About,
        Adopters,
        Contact,
        StickyFooter
      },
      onMounted() {
        // do something
      }
    }
  </script>
</landing>
