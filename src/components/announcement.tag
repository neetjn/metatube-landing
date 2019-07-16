<announcement>
  <div class={ `p-5 bg-yellow-500 text-slate-dark font-bold opacity-0 ${ !state.visible ? 'hidden' : '' }` }>
    <div class="flex flex-grow">
      <div class="w-full md:w-1/2">
        <h1 class="text-sm">
          <i class="fa fa-thumbtack"></i> This website uses cookies to ensure you get the best experience on our website.
        </h1>
      </div>
      <div class="w-full md:w-1/2">
        <button class="btn btn-default btn-sm float-right" onclick={ onOkay }>
          Got it <i class="fa fa-thumbs-o-up">
        </button>
      </div>
    </div>
  </div>
  <script>
    import anime from 'animejs/lib/anime.es.js'

    export default {
      onBeforeMount() {
        const isViewed = window.localStorage.getItem('cookieStatement')
        this.state = {
          visible: !isViewed
        }
      },
      onMounted() {
        if (this.state.visible) {
          const container = this.$('announcement div')
          anime({
            targets: container,
            opacity: 0.75,
            duration: 1500,
            easing: 'easeInQuad'
          })
        }
      }
      onOkay(e) {
        window.localStorage.setItem('cookieStatement', true)
        const container = this.$('announcement div')
        anime({
          targets: container,
          opacity: 0,
          duration: 1500,
          easing: 'easeOutQuad'
        })
      }
    }
  </script>
</announcement>
