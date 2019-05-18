const autoprefixer = require('autoprefixer');
const WebpackNotifierPlugin = require('webpack-notifier');
const MiniCssExtractPlugin = require("mini-css-extract-plugin");
const OptimizeCSSAssetsPlugin = require("optimize-css-assets-webpack-plugin");
const BrowserSyncPlugin = require('browser-sync-webpack-plugin');

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
  plugins: [
    new WebpackNotifierPlugin({ alwaysNotify: true }),

    new MiniCssExtractPlugin({
      fileame: "metatube.bundle.css"
    }),

    new OptimizeCSSAssetsPlugin({}),

    new BrowserSyncPlugin({
      proxy: 'mysite.local',
      open: 'external',
      host: 'mysite.local',
      port: 3000,
      files: ['./dist/main.css', './views', './tailwind.js']
    },
    {
      reload: false
    })
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
        test: /\.riot$/,
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
            loader: 'postcss-loader'
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
};
