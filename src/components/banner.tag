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
    @import '../assets/styles/partials/banner.css';

    banner {
      background: rgb(59,59,59);
      background: linear-gradient(198deg, rgba(59,59,59,1) 48%, rgba(236,201,75,1) 100%, rgba(236,201,75,1) 100%);
    }
  </style>
  <script>
    import Logo from '../assets/images/metatube_light_01.png'

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
