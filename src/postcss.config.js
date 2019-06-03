const tailwindcss = require('tailwindcss')
const cssnano = require('cssnano')
const autoprefixer = require('autoprefixer')

module.exports = {
  plugins: [
    tailwindcss('./src/tailwind.js'),
    cssnano({
      preset: 'default'
    }),
    autoprefixer
  ]
}
