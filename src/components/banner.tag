<banner>
  <div class="inner-banner opacity-50 backdrop-blur"
       style="background: url({Banner}) no-repeat center;">
    <img class="block m-auto pt-20 pb-20 md:pt-32 md:pb-32"
         src={ Logo }
         width="300px"
         height="auto" />
    <div class="container">
      <form class="content-center"
            onsubmit={ sendEmail }>
        <input type="email" name="emailAddress" />
        <button class="btn-primary" type="submit">
          Join Us
        </button>
      </form>
    </div>
  </div>
  <button class="btn">Button</button>
  <style>
    banner {
      background: rgb(59,59,59);
      background: linear-gradient(198deg, rgba(59,59,59,1) 48%, rgba(236,201,75,1) 100%, rgba(236,201,75,1) 100%);
    }

    .banner-image {
      filter: blur(8px);
      -webkit-filter: blur(8px);
    }
  </style>
  <script>
    import Logo from '../assets/images/metatube_light_01.png'
    import Banner from '../assets/images/banner.jpg'

    export default {
      Logo,
      Banner,
      sendEmail(e) {

      }
    }
  </script>
</banner>
