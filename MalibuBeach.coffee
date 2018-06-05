
# dependencies
Path = require 'path'

# stylesheet
require Path.resolve(__dirname, 'gradient.css')

# component
module.exports = lemon.Component {
  package: 'wg'
  name: 'MalibuBeach'
  class: 'webgradient'

  data: {
    position: null
  }

  template: (data) ->
    div class: data.position, style: "background-image: linear-gradient(to right, #4facfe 0%, #00f2fe 100%);"
}