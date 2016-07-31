# colorguide
# fizzy
# syntax custom variable definitions

cgVarColor = require '../../../colorguide/lib/cg-variable-color'

module.exports =

  groups: () ->
    {
      GRPsc0: {key: 'GRPsc0', value:    0, description: 'Custom'}
    }

  categories: () ->
    {
      CATsc0: {key: 'CATsc0', value: 0, description: 'Variables'}
    }

  variables: () ->
    g = @groups()
    c = @categories()

    {variables:
      [
        new cgVarColor(0.010, g.GRPsc0.key, c.CATsc0.key, 'blue_text','')
        new cgVarColor(0.010, g.GRPsc0.key, c.CATsc0.key, 'blue_tag','')
        new cgVarColor(0.010, g.GRPsc0.key, c.CATsc0.key, 'gutter','')
        new cgVarColor(0.010, g.GRPsc0.key, c.CATsc0.key, 'gutter_text','')
        new cgVarColor(0.010, g.GRPsc0.key, c.CATsc0.key, 'gutter_highlight','')
        new cgVarColor(0.010, g.GRPsc0.key, c.CATsc0.key, 'cursor','')
        new cgVarColor(0.010, g.GRPsc0.key, c.CATsc0.key, 'selection','')
        new cgVarColor(0.010, g.GRPsc0.key, c.CATsc0.key, 'comment','')
      ]
    }
