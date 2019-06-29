<adopters>
  <h1>Adopters</h1>
  <canvas width="960" height="500"></canvas>
  <script>
    import * as d3 from 'd3'
    import UserImage from '../assets/images/default-user.png'

    export default {
      fetchAdopters() {
        // TODO: stubbed shim for allocating all metatube users with linked yt accounts
        return new Promise((resolve, reject) => {
          // filter by number of subscribers
          resolve([...Array(50)].map((_, subs) => {
            return {
              name: this.ipsum.word(),
              subscribers: subs
            }
          }))
        })
      }

      renderCanvas(circles, canvas, context, width, height) {
        const color = d3.scaleOrdinal()
                        .range(d3.schemeCategory10)
        context.clearRect(0, 0, width, height);
        for (var i = 0, n = circles.length, circle; i < n; ++i) {
          circle = circles[i]
          context.beginPath()
          context.moveTo(circle.x + circle.radius, circle.y)
          context.arc(circle.x, circle.y, circle.radius, 0, 2 * Math.PI)
          /*let background = new Image()
          background.src = UserImage
          background.onload = () => {
            context.drawImage(background, 0, 0)
            context.clip()
          }*/
          // TODO: fillstyle use images
          context.fillStyle = color(circle.index)
          context.fill()
          if (circle.active) {
            context.lineWidth = 2
            context.stroke()
          }
        }
      }

      drawAdopters() {
        const self = this
        const canvas = d3.select('canvas'),
              context = canvas.node().getContext('2d'),
              width = canvas.property('width'),
              height = canvas.property('height');
        self.fetchAdopters().then(adopters => {
          const circles = adopters.map(adopter => {
            const { subscribers } = adopter
            return {
              index: subscribers,
              radius: subscribers,
              x: Math.round(Math.random() * (width - subscribers * 2) + subscribers),
              y: Math.round(Math.random() * (height - subscribers * 2) + subscribers)
            }
          })
          self.renderCanvas(circles, canvas, context, width, height)
        })
      }

      onMounted() {
        this.drawAdopters()
      }
    }
  </script>
</adopters>
