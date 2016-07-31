# colorguide
# monokai
# syntax custom color definitions

cgVarColor = require '../../../colorguide/lib/cg-variable-color'

module.exports =

  groups: () ->
    {
      GRPscx0: {key: 'GRPscx0', value: 0, description: 'Custom'}
    }

  categories: () ->
    {
      CATscx0: {key: 'CATscx0', value: 0, description: 'Colors'}
    }

  variables: () ->
    g = @groups()
    c = @categories()

    {variables:
      [
        new cgVarColor(0.010, g.GRPscx0.key, c.CATscx0.key, 'ghost-white','')
        new cgVarColor(0.010, g.GRPscx0.key, c.CATscx0.key, 'light-ghost-white','')
        new cgVarColor(0.010, g.GRPscx0.key, c.CATscx0.key, 'light-gray','')
        new cgVarColor(0.010, g.GRPscx0.key, c.CATscx0.key, 'gray','')
        new cgVarColor(0.010, g.GRPscx0.key, c.CATscx0.key, 'brown-gray','')
        new cgVarColor(0.010, g.GRPscx0.key, c.CATscx0.key, 'dark-gray','')
        new cgVarColor(0.010, g.GRPscx0.key, c.CATscx0.key, 'yellow','')
        new cgVarColor(0.010, g.GRPscx0.key, c.CATscx0.key, 'blue','')
        new cgVarColor(0.010, g.GRPscx0.key, c.CATscx0.key, 'pink','')
        new cgVarColor(0.010, g.GRPscx0.key, c.CATscx0.key, 'purple','')
        new cgVarColor(0.010, g.GRPscx0.key, c.CATscx0.key, 'brown','')
        new cgVarColor(0.010, g.GRPscx0.key, c.CATscx0.key, 'orange','')
        new cgVarColor(0.010, g.GRPscx0.key, c.CATscx0.key, 'light-orange','')
        new cgVarColor(0.010, g.GRPscx0.key, c.CATscx0.key, 'green','')
        new cgVarColor(0.010, g.GRPscx0.key, c.CATscx0.key, 'sea-green','')
      ]
    }
