<banner>
  <div class="inner-banner">
    <img class="block m-auto" src={ Logo } width="300px" height="auto" />
    <div class="container">
      <form class="content-center" onsubmit={ sendEmail }>
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
    .inner-banner {
      background: url(data:image:/{Background}) no-repeat center;
    }
  </style>
  <script>
    import Logo from '../assets/images/metatube_light_01.png'
    import Background from '../assets/images/banner.jpg'

    export default {
      Logo,
      onMounted() {
        console.log(this)
      }
      sendEmail(e) {

      }
    }
  </script>
</banner>
