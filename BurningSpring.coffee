
# dependencies
Path = require 'path'

# stylesheet
require Path.resolve(__dirname, 'gradient.css')

# component
module.exports = lemon.Component {
  package: 'wg'
  name: 'BurningSpring'
  class: 'webgradient'

  data: {
    position: null
  }

  template: (data) ->
    div class: data.position, style: "background-image: linear-gradient(to top, #4fb576 0%, #44c489 30%, #28a9ae 46%, #28a2b7 59%, #4c7788 71%, #6c4f63 86%, #432c39 100%);"
}