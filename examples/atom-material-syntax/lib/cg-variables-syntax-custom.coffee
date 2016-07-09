# colorguide
# syntax custom color variables
# atom-material-syntax

cgVarColor = require './cg-variable-color'

module.exports =

  syntaxVarsCustomGroups: () ->
    {
      GRPsc0: {key: 'GRPsc0', value:    0, description: 'Custom Colors'}
    }

  syntaxVarsCustomCategories: () ->
    {
      CATsc0: {key: 'CATsc0', value: 0, description: 'Cursor Line'}
      CATsc1: {key: 'CATsc1', value: 1, description: 'Bracket Matcher'}
    }

  syntaxVarsCustom: () ->
    g = @syntaxVarsCustomGroups()
    c = @syntaxVarsCustomCategories()

    {variables:
      [
        # custom colors
        new cgVarColor(0.010, g.GRPsc0.key, c.CATsc0.key, 'syntax-cursor-line', 'Cursor Line')
        new cgVarColor(0.010, g.GRPsc0.key, c.CATsc1.key, 'syntax-bracket-matcher-background-color', 'Bracket matcher background')
      ]
    }
