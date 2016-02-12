const path = require('path');

module.exports = {
  context: __dirname,
  entry: './app/assets/javascripts/app/index.js',
  output: {
    path: path.join(__dirname, 'app', 'assets', 'javascripts'),
    filename: 'bundle.js',
    publicPath: '/assets',
  },
  resolve: {
    extensions: ['', '.js'],
    modulesDirectories: ['node_modules', 'bower_components'],
  },
  module: {
    loaders: [
        { test: /\.js$/, exclude: /node_modules/, loader: 'babel-loader' },
    ],
  },
};
