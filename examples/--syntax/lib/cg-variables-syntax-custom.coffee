# colorguide
# xxx-syntax
# syntax custom color variables

cgVarColor = require './cg-variable-color'

module.exports =

  groups: () ->
    {
      GRPsc0: {key: 'GRPsc0', value:    0, description: 'group name 0'}
      GRPsc1: {key: 'GRPsc1', value:    0, description: 'group name 1'}
    }

  categories: () ->
    {
      CATsc0: {key: 'CATsc0', value: 0, description: 'Colors'}
      CATsc1: {key: 'CATsc1', value: 1, description: 'Colors'}
      CATsc2: {key: 'CATsc2', value: 2, description: 'Colors'}
    }

  variables: () ->
    g = @groups()
    c = @categories()

    {variables:
      [
        # custom colors
        # example:  new cgVarColor(0.010, g.GRPsc0.key, c.CATsc0.key, 'tab-bg', 'Tab background color')
        new cgVarColor(0.010, g.GRPsc0.key, c.CATsc0.key, '--- class name of variable without the .cg- ---', 'optional brief description')
      ]
    }
