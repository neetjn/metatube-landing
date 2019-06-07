<landing>
  <div class="flex-1 mx-auto w-full h-full">
    <banner class="block w-full"></banner>
    <about class="block w-full"></about>
  </div>
  <sticky-footer class="w-full"></sticky-footer>
  <script>
    import Banner from '../components/banner.tag'

    import About from '../components/about.tag'
    import StickyFooter from '../components/sticky-footer.tag'

    console.log(StickyFooter)

    export default {
      components: {
        Banner,
        About,
        StickyFooter
      },
      onMounted() {
        console.log('Landing mounted')
      }
    }
  </script>
</landing>
