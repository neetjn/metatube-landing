<banner>
  <div class="mb-64 mt-64">
    <img class="block m-auto" src={ Logo } width="300px" height="auto" />
    <div class="container">
      <form class="content-center" onsubmit={ sendEmail }>
        <input type="email" name="emailAddress" />
        <button type="submit">Join Us</button>
      </form>
    </div>
  </div>
  <button class="block m-auto bg-blue-500 hover:bg-blue-600 text-white font-bold py-2 px-4 rounded">
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
