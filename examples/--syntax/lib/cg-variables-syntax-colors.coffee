# colorguide
# xxx-syntax
# syntax color definitions

cgVarColor = require './cg-variable-color'

module.exports =

  groups: () ->
    {
      GRPscx0: {key: 'GRPscx0', value:    0, description: 'group name 0'}
      GRPscx1: {key: 'GRPscx1', value:    0, description: 'group name 1'}
    }

  categories: () ->
    {
      CATscx0: {key: 'CATscx0', value: 0, description: 'Color1'}
      CATscx1: {key: 'CATscx1', value: 1, description: 'Color1'}
      CATscx2: {key: 'CATscx2', value: 2, description: 'Color1'}
    }

  variables: () ->
    g = @groups()
    c = @categories()

    {variables:
      [
        # custom colors
        # example:  new cgVarColor(0.010, g.GRPscx0.key, c.CATscx0.key, 'color-001', 'Color 001')
        new cgVarColor(0.010, g.GRPscx0.key, c.CATscx0.key, '--- class name of variable without .cg- ---', 'optional brief description')
      ]
    }
