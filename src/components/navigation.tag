<navigation>
  <nav class="flex items-center justify-between flex-wrap p-6 uppercase">
    <div class="block w-full lg:hidden">
      <button class="flex items-center px-3 py-2 border text-white border-yellow-500
                     hover:text-yellow-500 hover:border-white transition-color transition-ease-in-out transition-250"
              onclick={ toggleMobileNav }>
        <i class="fa fa-bars" title="Menu"></i>
      </button>
    </div>
    <div id="nav-menu" class="md:w-full hidden lg:flex lg:items-center md:flex-grow lg:w-auto block lg:block animated fadeIn
                              bg-slate-dark md:bg-transparent mt-4 md:mt-0 p-4 md:p-0 border border-gray-900 md:border-0 rounded
                              box-shadow">
      <div class="text-sm lg:flex-grow">
        <a each={ (item, index) in nav }
           href={ item.href }
           class={ `block ${ !index ? 'sm:mt-4' : 'mt-4' } lg:inline-block lg:mt-0 font-bold text-white hover:text-yellow-500 mr-4
                  transition-color transition-ease-in-out transition-250` }>
          { item.label }
        </a>
      </div>
      <div>
        <a href="https://neetgroup.net/projects/metatube"
           class="inline-block text-sm px-4 py-2 leading-none border text-white border-white
                  hover:border-transparent hover:text-yellow-500 mt-4 lg:mt-0
                  transition-all transition-ease-in-out transition-250 uppercase font-bold">
          <i class="fa fa-bitcoin"></i> Support Us
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
