const autoprefixer = require('autoprefixer')
// const WebpackNotifierPlugin = require('webpack-notifier')
const MiniCssExtractPlugin = require('mini-css-extract-plugin')
const OptimizeCSSAssetsPlugin = require('optimize-css-assets-webpack-plugin')
// const BrowserSyncPlugin = require('browser-sync-webpack-plugin')

module.exports = {
  entry: {
    main: './src/app.js'
  },
  output: {
    filename: 'metatube.bundle.js',
    publicPath: './'
  },
  watch: false,
  mode: 'development',
  // node: {
  //   fs: 'empty',
  //   net: 'empty',
  //   child_process: 'empty',
  //   module: 'empty'
  // },
  target: 'web',
  plugins: [
    // new WebpackNotifierPlugin({ alwaysNotify: true }),

    new MiniCssExtractPlugin({
      filename: 'metatube.bundle.css'
    }),

    new OptimizeCSSAssetsPlugin({}),

    // new BrowserSyncPlugin({
    //   proxy: 'mysite.local',
    //   open: 'external',
    //   host: 'mysite.local',
    //   port: 3000,
    //   files: ['./dist/main.css', './views', './tailwind.js']
    // },
    // {
    //   reload: false
    // })
  ],
  module: {
    rules: [
      {
        test: /\.js$/,
        exclude: /node_modules/,
        use: {
          loader: 'babel-loader',
          options: {
            presets: ['@babel/preset-env']
          }
        }
      },
      {
        test: /\.tag$/,
        exclude: /node_modules/,
        use: [{
          loader: '@riotjs/webpack-loader',
          options: {
            hot: false,
            scopedCss: true
          }
        }]
      },
      {
        test: /\.(png|jpg|gif|svg|eot|ttf|woff)$/,
        use: [
          {
            loader: 'file-loader'
          }
        ]
      },
      {
        test: /\.scss$/,
        use: [
          MiniCssExtractPlugin.loader,
          { loader: 'css-loader', options: { importLoaders: 1 } },
          {
            loader: 'postcss-loader',
            options: {
              config: {
                path: './src/postcss.config.js'
              }
            }
          },
          {
            loader: 'sass-loader',
            options: {
              plugins: () => [autoprefixer()]
            }
          }
        ]
      },
      {
        test: /\.css$/,
        use: [
          MiniCssExtractPlugin.loader,
          { loader: 'css-loader', options: { importLoaders: 1 } },
          { loader: 'postcss-loader' }
        ]
      }
    ]
  }
}
