<about>
  <div class="flex">
    <div class="w-1/3 bg-gray-400 h-64">
      <div class="container">
        <h1>A New Experience</h1>
        <p>{ ipsum.paragraph() }</p>
      </div>
    </div>
    <div class="w-1/3 bg-gray-500 h-64">
      <div class="container">
        <h1>Our Goal</h1>
        <p>{ ipsum.paragraph() }</p>
        <ul></ul>
      </div>
    </div>
    <div class="w-1/3 bg-gray-400 h-64">
      <div class="container">
        <h1>Human Centered</h1>
        <p>{ ipsum.paragraph() }</p>
      </div>
    </div>
  </div>
  <script>
    export default {
      onMounted() {
        console.log('about tag mounted')
        console.log(this.ipsum.sentence())
      }
      onUpdated() {
        console.log('about tag has been updated')
      }
    }
  </script>
</about>
