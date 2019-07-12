module.exports = {
  theme: {
    filter: {
      none: 'none',
      grayscale: 'grayscale(1)',
      invert: 'invert(1)',
      sepia: 'sepia(1)'
    },
    backdropFilter: {
      none: 'none',
      blur: 'blur(20px)'
    },
    extend: {
      boxShadow: {
        huge: '0 30px 60px -15px rgba(0, 0, 0, .25)'
      },
      fontFamily: {
        global: 'Open Sans',
      }
    }
  },
  plugins: [
    require('tailwindcss-filters')(),
    require('tailwindcss-transitions')()
  ]
}
