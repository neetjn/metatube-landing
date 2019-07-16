<about>
  <div class="flex flex-grow flex-wrap text-white p-10 bg-slate-medium">
    <div class="w-full md:w-1/3 bg-slate-dark h-128">
      <div class="container">
        <h1 class="text-center text-6xl text-yellow-300 mt-10 mb-5">
          <i class="fa fa-ship p-4 rounded-full bg-slate-medium box-shadow"></i>
        </h1>
        <div class="p-5 md:p-12 md:pt-5">
          <h1 class="text-2xl md:text-4xl mb-5 text-center">New Experience</h1>
          <p class="text-sm">{ ipsum.paragraph() }</p>
        </div>
      </div>
    </div>
    <div class="w-full md:w-1/3 bg-slate-medium h-128">
      <div class="container">
        <h1 class="text-center text-6xl text-yellow-300 mt-10 mb-5">
          <i class="fa fa-bolt p-4 rounded-full bg-slate-dark box-shadow"></i>
        </h1>
        <div class="p-5 md:p-12 md:pt-5">
          <h1 class="text-2xl md:text-4xl mb-5 text-center">Our Goal</h1>
          <p class="text-sm">{ ipsum.paragraph() }</p>
        </div>
      </div>
    </div>
    <div class="w-full md:w-1/3 bg-slate-dark h-128">
      <div class="container">
        <h1 class="text-center text-6xl text-yellow-300 mt-10 mb-5">
          <i class="fa fa-users p-4 rounded-full bg-slate-medium box-shadow"></i>
        </h1>
        <div class="p-5 md:p-12 md:pt-5">
          <h1 class="text-2xl md:text-4xl mb-5 text-center">Human Centered</h1>
          <p class="text-sm">{ ipsum.paragraph() }</p>
        </div>
      </div>
    </div>
  </div>
  <style>
    about {
      margin-top: -1px;
    }
  </style>
  <script>
    import anime from 'animejs/lib/anime.es.js'

    export default {
      onMounted() {
        const aboutIcons = this.$$('about .container h1 i')
        const toggle = anime({
          targets: aboutIcons,
          scale: 1.1,
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
