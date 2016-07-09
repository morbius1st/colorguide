# colorguide
# syntax custom color variables
# gl-dark-syntax

cgVarColor = require './cg-variable-color'

module.exports =

  syntaxVarsCustomGroups: () ->
    {
      GRPsc0: {key: 'GRPsc0', value:    0, description: 'Custom Colors'}
    }

  syntaxVarsCustomCategories: () ->
    {
      CATsc0: {key: 'CATsc0', value: 0, description: 'Cursor Line'}
      CATsc1: {key: 'CATsc1', value: 1, description: 'Deprecated'}
      CATsc2: {key: 'CATsc2', value: 2, description: 'Illegal'}
    }

  syntaxVarsCustom: () ->
    g = @syntaxVarsCustomGroups()
    c = @syntaxVarsCustomCategories()

    {variables:
      [
        # custom colors
        new cgVarColor(0.010, g.GRPsc0.key, c.CATsc0.key, 'syntax-cursor-line', 'Cursor Line')
        new cgVarColor(0.010, g.GRPsc0.key, c.CATsc1.key, 'syntax-deprecated-fg', 'Deprecated Foreground')
        new cgVarColor(0.020, g.GRPsc0.key, c.CATsc1.key, 'syntax-deprecated-bg', 'Deprecated Background')
        new cgVarColor(0.010, g.GRPsc0.key, c.CATsc2.key, 'syntax-illegal-fg', 'Illegal Foreground')
        new cgVarColor(0.020, g.GRPsc0.key, c.CATsc2.key, 'syntax-illegal-bg', 'Illegal Background')
      ]
    }
