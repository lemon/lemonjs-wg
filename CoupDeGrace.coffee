
# dependencies
Path = require 'path'

# stylesheet
require Path.resolve(__dirname, 'gradient.css')

# component
module.exports = lemon.Component {
  package: 'wg'
  name: 'CoupDeGrace'
  class: 'webgradient'

  data: {
    position: null
  }

  template: (data) ->
    div class: data.position, style: "background-color: #DCD9D4; background-image: linear-gradient(to bottom, rgba(255,255,255,0.50) 0%, rgba(0,0,0,0.50) 100%), radial-gradient(at 50% 0%, rgba(255,255,255,0.10) 0%, rgba(0,0,0,0.50) 50%); background-blend-mode: soft-light,screen;"
}