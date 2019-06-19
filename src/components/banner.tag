<banner>
  <div class="mb-64 mt-64">
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
  <button class="btn">
    Button
  </button>
  <script>
    import Logo from '../assets/images/metatube_dark_01.png'

    export default {
      Logo,
      sendEmail(e) {

      }
    }
  </script>
</banner>
