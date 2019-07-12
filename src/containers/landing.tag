<landing>
  <navigation class="absolute z-10 x-0 y-0 block w-full"></navigation>
  <div class="flex-1 mx-auto w-full h-full">
    <banner class="block w-full"></banner>
    <about class="block w-full"></about>
    <adopters class="block w-full"></adopters>
    <contact class="block w-full"></contact>
  </div>
  <sticky-footer class="w-full"></sticky-footer>
  <script>
    import Navigation from '../components/navigation.tag'
    import Banner from '../components/banner.tag'
    import About from '../components/about.tag'
    // import Adopters from '../components/adopters.tag'
    import Adopters from '../components/adopters/adopters-v2.tag'
    import Contact from '../components/contact.tag'
    import StickyFooter from '../components/sticky-footer.tag'

    export default {
      components: {
        Navigation,
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
