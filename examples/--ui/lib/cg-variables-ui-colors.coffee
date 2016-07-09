# colorguide
# ui color definitions
# xxx-ui

cgVarColor = require './cg-variable-color'

module.exports =

  syntaxVarsCustomGroups: () ->
    {
      GRPucx0: {key: 'GRPucx0', value:    0, description: 'group name 0'}
      GRPucx1: {key: 'GRPucx1', value:    0, description: 'group name 1'}
    }

  syntaxVarsCustomCategories: () ->
    {
      CATucx0: {key: 'CATucx0', value: 0, description: 'category name 0'}
      CATucx1: {key: 'CATucx1', value: 1, description: 'category name 1'}
      CATucx2: {key: 'CATucx2', value: 2, description: 'category name 2'}
    }

  syntaxVarsCustom: () ->
    g = @syntaxVarsCustomGroups()
    c = @syntaxVarsCustomCategories()

    {variables:
      [
        # custom colors
        # example:  new cgVarColor(0.010, g.GRPucx0.key, c.CATucx0.key, 'color-001', 'Color 001')
        new cgVarColor(0.010, g.GRPucx0.key, c.CATucx0.key, '--- class name of color variable without dot ---', 'optional brief description')
      ]
    }
