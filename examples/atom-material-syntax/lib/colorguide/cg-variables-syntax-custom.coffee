# colorguide
# atom-material-syntax
# syntax custom variable definitions

cgVarColor = require '../../../colorguide/lib/cg-variable-color'

module.exports =

  groups: () ->
    {
      GRPsc0: {key: 'GRPsc0', value:    0, description: 'Custom Colors'}
    }

  categories: () ->
    {
      CATsc0: {key: 'CATsc0', value: 0, description: 'Cursor Line'}
      CATsc1: {key: 'CATsc1', value: 1, description: 'Bracket Matcher'}
    }

  variables: () ->
    g = @groups()
    c = @categories()

    {variables:
      [
        # custom variable
        new cgVarColor(0.010, g.GRPsc0.key, c.CATsc0.key, 'syntax-cursor-line', 'Cursor Line')
        new cgVarColor(0.010, g.GRPsc0.key, c.CATsc1.key, 'syntax-bracket-matcher-background-color', 'Bracket matcher background')
      ]
    }
