
# dependencies
Path = require 'path'

# stylesheet
require Path.resolve(__dirname, 'gradient.css')

# component
module.exports = lemon.Component {
  package: 'wg'
  name: 'SharpGlass'
  class: 'webgradient'

  data: {
    position: null
  }

  template: (data) ->
    div class: data.position, style: "background: #C9CCD3; background-image: linear-gradient(-180deg, rgba(255,255,255,0.50) 0%, rgba(0,0,0,0.50) 100%); background-blend-mode: lighten;"
}