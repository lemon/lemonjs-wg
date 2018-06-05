
# dependencies
fs = require 'fs'
gradients = require './gradients'

# template
template = (name, style) -> """

# dependencies
Path = require 'path'

# stylesheet
require Path.resolve(__dirname, 'gradient.css')

# component
module.exports = lemon.Component {
  package: 'wg'
  name: '#{name}'
  class: 'webgradient'

  data: {
    position: null
  }

  template: (data) ->
    div class: data.position, style: "#{style}"
}
"""

# get name to use for component
getName = (str) ->
  re = /^([A-Z])|[\s-_](\w)/g
  str = str.replace re, ((match, p1, p2, offset) ->
    return p2.toUpperCase() if p2
    return p1.toLowerCase()
  )
  str = str[0].toUpperCase() + str[1...]
  return str

# build list
list = []
for name, style of gradients
  list.push name
fs.writeFileSync "./list.json", JSON.stringify(list, null, 2), 'utf8'

# build map
map = {}
for name, style of gradients
  map[name] = style
fs.writeFileSync "./map.json", JSON.stringify(map, null, 2), 'utf8'

# build component files
for name, style of gradients
  source = template name, style
  fs.writeFileSync "./#{name}.coffee", source, 'utf8'
