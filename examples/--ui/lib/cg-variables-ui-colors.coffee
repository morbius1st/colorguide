# colorguide
# xxx-ui
# ui color definitions

cgVarColor = require './cg-variable-color'

module.exports =

  groups: () ->
    {
      GRPucx0: {key: 'GRPucx0', value:    0, description: 'group name 0'}
      GRPucx1: {key: 'GRPucx1', value:    0, description: 'group name 1'}
    }

  categories: () ->
    {
      CATucx0: {key: 'CATucx0', value: 0, description: 'Color1'}
      CATucx1: {key: 'CATucx1', value: 1, description: 'Color1'}
      CATucx2: {key: 'CATucx2', value: 2, description: 'Color1'}
    }

  variables: () ->
    g = @groups()
    c = @categories()

    {variables:
      [
        # custom colors
        # example:  new cgVarColor(0.010, g.GRPucx0.key, c.CATucx0.key, 'color-001', 'Color 001')
        new cgVarColor(0.010, g.GRPucx0.key, c.CATucx0.key, '--- class name of variable without .cg- ---', 'optional brief description')
      ]
    }
