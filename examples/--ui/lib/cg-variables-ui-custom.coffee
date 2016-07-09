# colorguide
# ui custom color variables
# xxx-ui

cgVarColor = require './cg-variable-color'

module.exports =

  syntaxVarsCustomGroups: () ->
    {
      GRPuc0: {key: 'GRPuc0', value:    0, description: 'group name 0'}
      GRPuc1: {key: 'GRPuc1', value:    0, description: 'group name 1'}
    }

  syntaxVarsCustomCategories: () ->
    {
      CATuc0: {key: 'CATuc0', value: 0, description: 'category name 0'}
      CATuc1: {key: 'CATuc1', value: 1, description: 'category name 1'}
      CATuc2: {key: 'CATuc2', value: 2, description: 'category name 2'}
    }

  syntaxVarsCustom: () ->
    g = @syntaxVarsCustomGroups()
    c = @syntaxVarsCustomCategories()

    {variables:
      [
        # custom colors
        # example:  new cgVarColor(0.010, g.GRPuc0.key, c.CATuc0.key, 'tab-bg', 'Tab background color')
        new cgVarColor(0.010, g.GRPuc0.key, c.CATuc0.key, '--- class name of ui variable without dot ---', 'optional brief description')
      ]
    }
