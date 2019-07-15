<banner>
  <div class="inner-banner backdrop-blur opacity-75 box-shadow xl:h-screen"
       style="background: url({Banner}) no-repeat center;
              background-size: cover;">
    <img class="block m-auto pt-20 md:pt-32 xl:pt-64 pb-4 animated fadeIn"
         src={ Logo }
         alt="Metatube logo"
         width="350px"
         height="auto" />
    <div class="container m-auto pb-10 md:pb-64 animated fadeIn">
      <h1 class="text-center text-white text-2xl font-extrabold uppercase">
        Join the mailing list!
      </h1>
      <h2 class="text-center text-white text-md font-semibold uppercase pb-4">
        Recieve updates and offers
      </h2>
      <form class="block m-auto max-w-sm"
            onsubmit={ sendEmail }>
        <div class="relative border-box items-stretch pb-2">
          <span class="inline-block h-10 w-10 items-center bg-gray-900">
            <i class="relative top-1 left-1 fa fa-inbox text-bold text-3xl text-white"></i>
          </div>
          <input class="textbox p-2 m-auto mr-2"
                 type="email"
                 name="emailAddress"
                 placeholder="name@example.com"
                 autofocus />
          <button class="btn-primary" type="submit">
            <i class="fa fa-heart"></i> Join Us
          </button>
        </div>
        <div class="relative border-box items-stretch">
          <div class="pretty p-default p-thick ml-2">
            <input type="checkbox" />
            <div class="state p-warning-o">
              <label class="uppercase underline text-white">I'm a youtuber</label>
            </div>
          </div>
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
    import Banner from '../assets/images/banner4.jpg'

    export default {
      Logo,
      Banner,
      sendEmail(e) {

      }
    }
  </script>
</banner>
