const MiniCssExtractPlugin = require('mini-css-extract-plugin')
const OptimizeCSSAssetsPlugin = require('optimize-css-assets-webpack-plugin')

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
    new MiniCssExtractPlugin({
      filename: 'metatube.bundle.css'
    }),

    new OptimizeCSSAssetsPlugin({})
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
            loader: 'url-loader',
            options: {
              limit: 8192
            }
          },
          // {
          //   loader: 'file-loader'
          // }
        ]
      },
      {
        test: /\.css$/,
        use: [
          MiniCssExtractPlugin.loader,
          { loader: 'css-loader', options: { importLoaders: 1 } }
        ]
      }
    ]
  }
}
