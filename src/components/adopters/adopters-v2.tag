<adopters>
  <div class="p-12 bg-slate-dark text-white box-shadow">
    <div class="flex flex-grow">
      <div class="w-full md:w-1/2">
        <h1 class="text-center text-4xl font-extrabold">
          Join the Meta
        </h1>
        <form class="mt-2 p-4 p-5 bg-slate-medium flex flex-grow flex-wrap">
          <div class="w-full lg:w-1/2">
            <label class="block mb-2">
              <span class="block font-bold uppercase">Email Address</span>
              <input type="email"
                     class="w-full lg:w-auto color-slate-dark p-2"
                     name="userEmail"
                     placeholder="name@example.com" />
            </label>
            <label class="block mb-4">
              <span class="block font-bold uppercase">Channel Url</span>
              <input type="text"
                     class="w-full lg:w-auto color-slate-dark p-2"
                     name="userChannel"
                     placeholder="https://youtube.com/channel/..." />
            </label>
            <button type="submit" class="block btn btn-primary text-sm w-full lg:w-auto">
              <i class="fa fa-paper-plane"></i> Join Us
            </button>
          </div>
          <div class="w-full lg:w-1/2">
            <button type="submit" class="block btn btn-red m-auto mt-12 lg:mt-16 w-full lg:w-auto text-sm text-center">
              <i class="fa fa-youtube text-xl"></i> Sign Up With Google
            </button>
          </div>
        </form>
      </div>
      <div class="md:w-1/2 hidden md:flex">
        <svg width="100%" height="300" preserveAspectRatio="xMinYMin meet")>
          <defs></defs>
        </svg>
      </div>
    </div>
  </div>
  <style>
    circle.adopter {
      transform-origin: center;
      transform-box: fill-box;
    }
  </style>
  <script>
    import * as d3 from 'd3'
    import anime from 'animejs/lib/anime.es.js'
    import UserImage from '../../assets/images/default-user.png'

    export default {
      fetchAdopters() {
        // TODO: stubbed shim for allocating all metatube users with linked yt accounts
        return new Promise((resolve, reject) => {
          // filter by number of subscribers
          resolve([...Array(50)].map((_, subscribers) => {
            return {
              id: Math.round(Math.random() * (0 - 500) + 500),
              name: this.ipsum.word(),
              subscribers,
              // avatar: UserImage
              avatar: `https://picsum.photos/id/${ subscribers }/200/200`
            }
          }))
        })
      }

      drawAdopters() {
        const self = this
        return new Promise((resolve, reject) => {
          const svg = d3.select('adopters svg'),
                defs = d3.select('adopters svg defs'),
                width = parseInt(svg.style('width'), 10),
                height = parseInt(svg.style('height'), 10);

          self.fetchAdopters()
            .then(adopters => {
              const circles = adopters.map(adopter => {
                const { avatar, id, subscribers } = adopter
                return {
                  id,
                  r: subscribers,
                  x: Math.round(Math.random() * (width - subscribers * 2) + subscribers),
                  y: Math.round(Math.random() * (height - subscribers * 2) + subscribers),
                  avatar
                }
              })
              circles.forEach(circle => {
                const identifier = `image-${circle.id}`
                const pattern = defs.append('pattern')
                                    .attr('id', identifier)
                                    .attr('patternContentUnits', 'objectBoundingBox')
                                    .attr('height', '100%')
                                    .attr('width', '100%')
                                    .attr('viewBox', '0 0 1 1')
                                    .attr('preserveAspectRatio', 'xMidYMid slice')

                pattern.append('image')
                      .attr('height', 1)
                      .attr('width', 1)
                      .attr('preserveAspectRatio', 'xMidYMid slice')
                      .attr('xlink:href', circle.avatar)

                svg.append('circle')
                  .attr('class', 'animated fadeInUp')
                  .attr('class', 'adopter')
                  .attr('r', circle.r)
                  .attr('cx', circle.x)
                  .attr('cy', circle.y)
                  .attr('fill', `url(#${identifier})`)
                  .attr('stroke', 'black')
                  .attr('stroke-width', '1')
              })
              resolve(circles)
            })
            .catch(e => reject(e))
        })
      }

      animeScale(e, scale) {
        const el = e.target,
              cx = el.getAttribute('cx'),
              cy = el.getAttribute('cy');

        const morphCircles = anime({
          targets: e.target,
          scale,
          easing: 'easeInQuad',
          duration: 800,
          elasticity: 400
        })
      }

      onMounted() {
        this.drawAdopters().then(_ => {
          const animateAdopterEnter = (e) => this.animeScale(e, 1.2)
          const animateAdopterLeave = (e) => this.animeScale(e, 1)

          this.$$('circle').forEach(el => {
            el.addEventListener('mouseenter', animateAdopterEnter)
            el.addEventListener('mouseleave', animateAdopterLeave)
          })
        })
      }
    }
  </script>
</adopters>
