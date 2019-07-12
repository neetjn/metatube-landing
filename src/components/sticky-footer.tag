<sticky-footer>
  <!-- TODO: left here, finish making completely responsive -->
  <div class="flex bg-gray-800 h-64 p-12 text-white">
    <div class="w-2/3:lg w-full h-12">
      <div class="flex">
        <div class="w-1/3">
          <h1 class="text-2xl text-gray-500 pb-3">Links</h1>
          <ul class="list-none">
            <li class="pb-2">Sponsors</li>
            <li>Patreon</li>
          </ul>
        </div>
        <div class="w-2/3">
          <h1 class="text-2xl text-gray-500 pb-3">Company</h1>
          <ul class="list-none">
            <li class="pb-2">neetGroup (owner / sponsor)</li>
            <li class="pb-2">Example</li>
            <li class="pb-2">Example</li>
          </ul>
        </div>
      </div>
    </div>
    <div class="w-1/3:lg w-full h-12 text-center:md text-right">
      <ul class="list-none inline">
        <li each={ (item, index) in social }
            class={ `inline-block text-4xl ${ index === social.length - 1 ? '' : 'mr-4' }` }>
          <a href={ item.href } title={item.name}>
            <i class={ `fa fa-${ item.icon } mr-2 mr-0:sm hover:text-${ item.color } transition-color transition-ease-in-out transition-250` }></i>
          </a>
        </li>
      </ul>
      <p class="text-gray-500 text-xs mt-6">&copy; 2019 Metatube, LLC. All Rights Reserved</p>
      <p class="text-gray-500 text-sm">
        Designed by <a href="https://www.linkedin.com/in/john-nolette-69ba72132/" title="Designer" class="underline">John Nolette</a>
         at <a href="https://neetgroup.net/" title="Designer Company" class="underline">neetGroup</a>
      </p>
      </p>
    </div>
  </div>
  <script>
    export default {
      social: [
        {
          name: 'Twitter',
          href: 'https://twitter.com/neetjn',
          icon: 'twitter',
          color: 'blue-300'
        },
        {
          name: 'Facebook',
          href: 'https://facebook.com/NEET.Group',
          icon: 'facebook',
          color: 'blue-500'
        },
        {
          name: 'Youtube',
          href: 'https://www.youtube.com/channel/UCkNCXvfPSGy9K6et7ZTXI6g',
          icon: 'youtube',
          color: 'red-600'
        }
      ]
    }
  </script>
</sticky-footer>
