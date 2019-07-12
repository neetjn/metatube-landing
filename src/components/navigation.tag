<navigation>
  <nav class="flex items-center justify-between flex-wrap p-6
              bg-gray-800 md:bg-transparent opacity-75 lg:opacity-100">
    <div class="block lg:hidden">
      <button class="flex items-center px-3 py-2 border rounded text-white border-yellow-500
                     hover:text-yellow-500 hover:border-white transition-color transition-ease-in-out transition-250"
              onclick={ toggleMobileNav }>
        <i class="fa fa-bars" title="Menu"></i>
      </button>
    </div>
    <div id="nav-menu" class="w-full flex-grow lg:flex lg:items-center lg:w-auto block hidden lg:block animated fadeIn">
      <div class="text-sm lg:flex-grow">
        <a each={ item in nav }
           href={ item.href }
           class="block mt-4 lg:inline-block lg:mt-0 font-bold text-white hover:text-yellow-500 mr-4
                  transition-color transition-ease-in-out transition-250">
          { item.label }
        </a>
      </div>
      <div>
        <a href="https://neetgroup.net/projects/metatube"
           class="inline-block text-sm px-4 py-2 leading-none border text-white border-white
                  hover:border-transparent hover:text-yellow-500 hover:bg-white mt-4 lg:mt-0
                  transition-all transition-ease-in-out transition-250">
          <i class="fa fa-bitcoin mr-4"> Support Us
        </a>
      </div>
    </div>
  </nav>
  <script>
    export default {
      nav: [
        {
          href: '#about',
          label: 'About'
        },
        {
          href: '#adopters',
          label: 'Adopters'
        },
        {
          href: '#contact',
          label: 'Contact'
        },
        {
          href: '#blog',
          label: 'Blog'
        }
      ]
      toggleMobileNav(e) {
        this.$('#nav-menu').classList.toggle('hidden')
      }
    }
  </script>
</navigation>
