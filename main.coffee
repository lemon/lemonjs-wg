
# dependencies
Path = require 'path'

# load gradient names
names = require Path.resolve(__dirname, 'list.json')

# load all components
for name in names
  require Path.resolve(__dirname, "#{name}.coffee")
