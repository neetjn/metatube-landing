<banner>
  <div class="inner-banner backdrop-blur opacity-75 box-shadow xl:h-screen"
       style="background: url({Banner}) no-repeat;
              background-size: cover;
              background-position: 100% 25%;">
    <img class="block m-auto pt-20 md:pt-32 xl:pt-1/6 pb-4 animated fadeIn"
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
      <form class="block m-auto max-w-sm p-12 md:p-0"
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
          <button class="btn btn-primary mt-2 md:mt-0" type="submit">
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
    import Banner from '../assets/images/banner5.jpg'

    const emailRegex = /(?:[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\.[a-z0-9!#$%&'*+/=?^_`{|}~-]+)*|"(?:[\x01-\x08\x0b\x0c\x0e-\x1f\x21\x23-\x5b\x5d-\x7f]|\\[\x01-\x09\x0b\x0c\x0e-\x7f])*")@(?:(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?|\[(?:(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\.){3}(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?|[a-z0-9-]*[a-z0-9]:(?:[\x01-\x08\x0b\x0c\x0e-\x1f\x21-\x5a\x53-\x7f]|\\[\x01-\x09\x0b\x0c\x0e-\x7f])+)\])/

    export default {
      Logo,
      Banner,
      toggleForm(textbox, checkbox, btn) {
        let emailField = textbox || this.$('input[type="email"]', this.root)
        let youtuberToggle = checkbox || this.$('input[type="checkbox"]', this.root)
        let submitBtn = btn || this.$('button[type="submit"]', this.root)

        emailField.disabled = !emailField.disabled
        youtuberToggle.disabled = !youtuberToggle.disabled
        submitBtn.disabled = !submitBtn.disabled
      }
      sendEmail(e) {
        const emailField = this.$('input[type="email"]', this.root)
        const youtuberToggle = this.$('input[type="checkbox"]', this.root)

        this.toggleForm(emailField, youtuberToggle)

        if (emailRegex.test(emailField.value)) {
          /*
            fetch(this.Config.ipGateway)
              .then(res => res.json())
              .then(data = > ...)
          */
          const EmailList = this.Firestore.collection('emailList')
          EmailList.doc().set({
            address: emailField.value,
            isYoutuber: youtuberToggle.checked,
            reference: window.location.origin,
            submitted: new Date()
          })
            .then(res => {
              // this.toggleForm(emailField, youtuberToggle)
              // TODO: left here, add pop up notif
            })
            .catch(err => {
              console.error(err)
              this.toggleForm(emailField, youtuberToggle)
            })
        }
        return false
      }
    }
  </script>
</banner>
