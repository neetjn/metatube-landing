<banner>
  <div class="inner-banner opacity-50 backdrop-blur"
       style="background: url({Banner}) no-repeat center;">
    <img class="block m-auto pt-20 pb-10 md:pt-32 md:pb-16 animated fadeIn"
         src={ Logo }
         alt="Metatube logo"
         width="350px"
         height="auto" />
    <div class="container m-auto pb-10 md:pb-30 animated fadeIn">
      <form class="block m-auto max-w-sm"
            onsubmit={ sendEmail }>
        <span class="bg-gray-500 p-2">
          <i class="fa fa-inbox text-bold text-3xl"></i>
        </div>
        <input class="textbox w-2/3 p-2 m-auto mr-2" type="email" name="emailAddress" />
        <button class="btn-primary" type="submit">
          Join Us
        </button>
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
