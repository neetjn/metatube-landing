<sticky-footer>
  <div class="flex flex-wrap p-12 bg-slate-dark text-white">
    <div class="w-1/2 sm:w-1/4 text-left ">
      <h1 class="text-2xl text-yellow-500 pb-3">Links</h1>
      <ul class="list-none">
        <li class="pb-2">
          <a href="https://neetgroup.net/projects/metatube" class="underline hover:text-yellow-300">Sponsors</a>
        </li>
        <li>
          <a href="https://www.patreon.com/johnwayne" class="underline hover:text-yellow-300">Patreon</a>
        </li>
      </ul>
    </div>
    <div class="w-1/2 sm:w-1/4 text-right sm:text-left">
      <h1 class="text-2xl text-yellow-500 pb-3">Company</h1>
      <ul class="list-none">
        <li class="pb-2">
          <a href="https://neetgroup.net/" class="underline hover:text-yellow-300">neetGroup</a>
        </li>
      </ul>
    </div>
    <div class="w-full mt-8 lg:mt-0 sm:w-1/2 text-center md:text-right">
      <ul class="list-none inline">
        <li each={ (item, index) in social }
            class={ `inline-block text-4xl ${ index === social.length - 1 ? '' : 'md:mr-4' }` }>
          <a href={ item.href } title={item.name}>
            <i class={ `fa fa-${ item.icon } mr-2 mr-0:sm hover:text-${ item.color } transition-color transition-ease-in-out transition-250` }></i>
          </a>
        </li>
      </ul>
      <p class="text-gray-500 text-xs mt-6">&copy; 2019 Metatube, LLC. All Rights Reserved</p>
      <p class="text-gray-500 text-xs md:text-sm">Photos by <a href="https://unsplash.com/@nakitac?utm_source=unsplash&utm_medium=referral&utm_content=creditCopyText" class="underline">Nakita Cheung</a> on <a href="https://unsplash.com/search/photos/photographer-night?utm_source=unsplash&utm_medium=referral&utm_content=creditCopyText" class="underline">Unsplash</a></p>
      <p class="text-gray-500 text-xs md:text-sm">
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
