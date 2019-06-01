<landing>
  <banner></banner>
  <about></about>
  <adopters></adopters>
  <contact></contact>
  <footer></footer>
  <float-nav></float-nav>
  <script>
    import Banner from '../components/banner.tag'
    import About from '../components/about.tag'

    export default {
      components: {
        Banner,
        About
      },
      onMounted() {
        console.log('Landing mounted')
      }
    }
  </script>
</landing>
