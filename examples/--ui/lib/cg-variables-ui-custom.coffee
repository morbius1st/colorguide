# colorguide
# xxx-ui
# ui custom color variables

cgVarColor = require './cg-variable-color'

module.exports =

  groups: () ->
    {
      GRPuc0: {key: 'GRPuc0', value:    0, description: 'group name 0'}
      GRPuc1: {key: 'GRPuc1', value:    0, description: 'group name 1'}
    }

  categories: () ->
    {
      CATuc0: {key: 'CATuc0', value: 0, description: 'Colors'}
      CATuc1: {key: 'CATuc1', value: 1, description: 'Colors'}
      CATuc2: {key: 'CATuc2', value: 2, description: 'Colors'}
    }

  variables: () ->
    g = @groups()
    c = @categories()

    {variables:
      [
        # custom colors
        # example:  new cgVarColor(0.010, g.GRPuc0.key, c.CATuc0.key, 'tab-bg', 'Tab background color')
        new cgVarColor(0.010, g.GRPuc0.key, c.CATuc0.key, '--- class name of variable without the .cg- ---', 'optional brief description')
      ]
    }
