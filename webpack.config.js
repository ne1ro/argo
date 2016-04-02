var ExtractTextPlugin = require("extract-text-webpack-plugin");

module.exports = {
  devtool: 'source-map',
  entry: {
    "app": ["./web/static/css/app.scss", "./web/static/js/app.js"],
  },
  output: {
    path: "./priv/static",
    filename: "js/app.js"
  },
  resolve: {
    modulesDirectories: [ "node_modules", __dirname + "/web/static/js" ],
    alias: {
      phoenix_html:
        __dirname + "/deps/phoenix_html/web/static/js/phoenix_html.js",
      phoenix:
        __dirname + "/deps/phoenix/web/static/js/phoenix.js"
    }
  },
  module: {
    loaders: [
      {
        test: /\.scss$/,
        // loaders: ["style", "css?sourceMap", "sass?sourceMap"]
        loader: ExtractTextPlugin.extract(
          "style",
          "css!sass?includePaths[]=" + __dirname +  "/node_modules"
        )
      },
      {
        test: /\.css$/,
        loader: ExtractTextPlugin.extract("style", "css")
      }
    ]
  },
  plugins: [
      new ExtractTextPlugin("css/app.css")
    ]
};
