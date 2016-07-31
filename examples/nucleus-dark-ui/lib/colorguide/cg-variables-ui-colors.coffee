# colorguide
# nucleus-dark-ui
# ui custom color definitions

cgVarColor = require '../../../colorguide/lib/cg-variable-color'

module.exports =

  groups: () ->
    {
      GRPucx100: {key: 'GRPucx100', value: 100, description: 'UI Theme'}
    }

  categories: () ->
    {
      CATucx10: {key: 'CATucx10', value: 10, description: 'Text'}
      CATucx20: {key: 'CATucx20', value: 20, description: 'Background'}
      CATucx30: {key: 'CATucx30', value: 30, description: 'Colors'}
    }

  variables: () ->
    g = @groups()
    c = @categories()

    {variables:
      [
        new cgVarColor(0.010, g.GRPucx100.key, c.CATucx10.key, 'theme-text-color-highlight','')
        new cgVarColor(0.010, g.GRPucx100.key, c.CATucx10.key, 'theme-text-color-accent','')
        new cgVarColor(0.010, g.GRPucx100.key, c.CATucx10.key, 'theme-text-color-normal','')
        new cgVarColor(0.010, g.GRPucx100.key, c.CATucx10.key, 'theme-text-color-subtle','')
        new cgVarColor(0.010, g.GRPucx100.key, c.CATucx20.key, 'theme-background-color','')
        new cgVarColor(0.010, g.GRPucx100.key, c.CATucx20.key, 'theme-background-color-dark','')
        new cgVarColor(0.010, g.GRPucx100.key, c.CATucx20.key, 'theme-background-color-light','')
        new cgVarColor(0.010, g.GRPucx100.key, c.CATucx30.key, 'theme-blue','')
        new cgVarColor(0.010, g.GRPucx100.key, c.CATucx30.key, 'theme-green','')
        new cgVarColor(0.010, g.GRPucx100.key, c.CATucx30.key, 'theme-orange','')
        new cgVarColor(0.010, g.GRPucx100.key, c.CATucx30.key, 'theme-red','')
      ]
    }
