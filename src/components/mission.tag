<mission>
  <div class="p-12 bg-slate-dark text-white box-shadow">
    <h1 class="text-center text-5xl font-extrabold underline uppercase">
      Why Metatube
    </h1>
    <div class="flex flex-grow">
      <div class="w-full md:w-1/2">
        <h1>list here...</h1>
      </div>
      <div class="w-full md:w-1/2">
        <h1>graph here...</h1>
        <svg class="morpher" width="140" height="140" viewBox="0 0 140 140">
          <g fill="none" fill-rule="evenodd">
            <g fill="currentColor" fill-opacity=".15" transform="translate(0 6)">

            </g>
            <polygon class="polymorph" stroke-width="1" stroke="currentColor" points="70 35.94260070554478 118.87149407614443 59.666494076144424 107.87256516241132 128.16858885783364 57.880059238555745 89.68839929445522 15.368600705544779 58.58403554313345"></polygon>
          </g>
        </svg>
      </div>
    </div>
  </div>
  <style>
    mission {
      margin-top: -1px;
    }
  </style>
  <script>
    import anime from 'animejs/lib/anime.es.js'

    export default {
      onMounted() {
        // hack for riot.js unescaped svg
        this.$('svg.morpher g g').innerHTML = `
          <polygon points="70 0 136.574 48.369 111.145 126.631 28.855 126.631 3.426 48.369"></polygon>
          <polygon points="70 18 119.455 53.931 100.565 112.069 39.435 112.069 20.545 53.931"></polygon>
          <polygon points="70 34.86 101.727 57.911 89.609 95.209 50.391 95.209 38.273 57.911"></polygon>
          <polygon points="70 50.898 84.864 61.697 79.186 79.171 60.814 79.171 55.136 61.697"></polygon>
        `
        // animate morpher
        anime({
          targets: 'polygon.polymorph',
          points: [
            { value: [
              '70 24 119.574 60.369 100.145 117.631 50.855 101.631 3.426 54.369',
              '70 41 118.574 59.369 111.145 132.631 60.855 84.631 20.426 60.369']
            },
            { value: '70 6 119.574 60.369 100.145 117.631 39.855 117.631 55.426 68.369' },
            { value: '70 57 136.574 54.369 89.145 100.631 28.855 132.631 38.426 64.369' },
            { value: '70 24 119.574 60.369 100.145 117.631 50.855 101.631 3.426 54.369' }
          ],
          easing: 'easeOutQuad',
          duration: 2000,
          loop: true
        })
      }
    }
  </script>
</mission>
