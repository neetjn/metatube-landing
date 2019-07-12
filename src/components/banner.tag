<banner>
  <div class="inner-banner opacity-50 backdrop-blur"
       style="background: url({Banner}) no-repeat center;">
    <img class="block m-auto pt-20 md:pt-32 pb-4 animated fadeIn"
         src={ Logo }
         alt="Metatube logo"
         width="350px"
         height="auto" />
    <div class="container m-auto pb-10 md:pb-30 animated fadeIn">
      <h1 class="text-center text-white text-2xl font-bold uppercase pb-2">Join the Mailing List!</h1>
      <form class="block m-auto max-w-sm"
            onsubmit={ sendEmail }>
        <div class="relative border-box flex-wrap items-stretch">
          <span class="bg-gray-500 p-2 items-center">
            <i class="fa fa-inbox text-bold text-3xl"></i>
          </div>
          <input class="textbox p-2 m-auto mr-2" type="email" name="emailAddress" />
          <button class="btn-primary" type="submit">
            Join Us
          </button>
        </div>
      </form>
    </div>
  </div>
  <style>
    banner {
      background: rgb(59,59,59);
      background: linear-gradient(198deg, rgba(59,59,59,1) 48%, rgba(236,201,75,1) 100%, rgba(236,201,75,1) 100%);
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
