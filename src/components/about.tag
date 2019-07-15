<about>
  <div class="flex text-white">
    <div class="w-1/3 bg-gray-800 h-128">
      <div class="container">
        <h1 class="text-center text-6xl text-yellow-300 mt-5 mb-5">
          <i class="fa fa-ship p-5 rounded-full bg-gray-900 box-shadow"></i>
        </h1>
        <div class="p-5 md:p-12 md:pt-5">
          <h1 class="text-2xl md:text-4xl mb-5">A New Experience</h1>
          <p>{ ipsum.paragraph() }</p>
        </div>
      </div>
    </div>
    <div class="w-1/3 bg-gray-900 h-128">
      <div class="container">
        <h1 class="text-center text-6xl text-yellow-300 mt-5 mb-5">
          <i class="fa fa-bolt p-5 rounded-full bg-gray-800 box-shadow"></i>
        </h1>
        <div class="p-5 md:p-12 md:pt-5">
          <h1 class="text-2xl md:text-4xl mb-5">Our Goal</h1>
          <p>{ ipsum.paragraph() }</p>
        </div>
      </div>
    </div>
    <div class="w-1/3 bg-gray-800 h-128">
      <div class="container">
        <h1 class="text-center text-6xl text-yellow-300 mt-5 mb-5">
          <i class="fa fa-users p-5 rounded-full bg-gray-900 box-shadow"></i>
        </h1>
        <div class="p-5 md:p-12 md:pt-5">
          <h1 class="text-2xl md:text-4xl mb-5">Human Centered</h1>
          <p>{ ipsum.paragraph() }</p>
        </div>
      </div>
    </div>
  </div>
  <script>
    import anime from 'animejs/lib/anime.es.js'

    export default {
      onMounted() {
        const aboutIcons = this.$$('about .container h1 i')
        const toggle = anime({
          targets: aboutIcons,
          scale: 1.2,
          direction: 'alternate',
          loop: true,
          delay: function(el, i, l) {
            return i * 1000;
          },
          endDelay: function(el, i, l) {
            return (l - i) * 250;
          }
        })
      }
    }
  </script>
</about>
