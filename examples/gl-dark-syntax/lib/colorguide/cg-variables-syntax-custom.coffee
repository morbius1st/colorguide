# colorguide
# gl-dark-syntax
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
      CATsc1: {key: 'CATsc1', value: 1, description: 'Deprecated'}
      CATsc2: {key: 'CATsc2', value: 2, description: 'Illegal'}
    }

  variables: () ->
    g = @groups()
    c = @categories()

    {variables:
      [
        new cgVarColor(0.010, g.GRPsc0.key, c.CATsc0.key, 'syntax-cursor-line', 'Cursor Line')
        new cgVarColor(0.010, g.GRPsc0.key, c.CATsc1.key, 'syntax-deprecated-fg', 'Deprecated Foreground')
        new cgVarColor(0.020, g.GRPsc0.key, c.CATsc1.key, 'syntax-deprecated-bg', 'Deprecated Background')
        new cgVarColor(0.010, g.GRPsc0.key, c.CATsc2.key, 'syntax-illegal-fg', 'Illegal Foreground')
        new cgVarColor(0.020, g.GRPsc0.key, c.CATsc2.key, 'syntax-illegal-bg', 'Illegal Background')
      ]
    }
