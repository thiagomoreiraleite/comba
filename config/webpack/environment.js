// const { environment } = require('@rails/webpacker')

// const webpack = require('webpack');
// // Preventing Babel from transpiling NodeModules packages
// environment.loaders.delete('nodeModules');
// // Bootstrap 4 has a dependency over jQuery & Popper.js:
// environment.plugins.prepend('Provide',
//   new webpack.ProvidePlugin({
//     $: 'jquery',
//     jQuery: 'jquery',
//     Popper: ['popper.js', 'default']
//   })
// );
// module.exports = environment

const { resolve } = require('path');
const { config, environment, Environment } = require('@rails/webpacker');
environment.loaders.delete('nodeModules');
const webpack = require('webpack');
environment.plugins.prepend('Provide',
  new webpack.ProvidePlugin({
    $: 'jquery',
    jQuery: 'jquery',
    Popper: ['popper.js', 'default']
  })
);
const WebpackerPwa = require('webpacker-pwa');
new WebpackerPwa(config, environment);
module.exports = environment;
