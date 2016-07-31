# colorguide
# cs-dark-ui
# ui custom color definitions


cgVarColor = require '../../../colorguide/lib/cg-variable-color'

module.exports =

  groups: () ->
    {
      GRPucx0: {key: 'GRPucx0', value:    0, description: 'Defined Ui Colors'}
    }

  categories: () ->
    {
      CATucx0: {key: 'CATucx0', value: 0, description: 'Ui Colors'}
      CATucx1: {key: 'CATucx1', value: 1, description: 'Level Colors'}
      CATucx2: {key: 'CATucx2', value: 2, description: 'Base Colors'}
    }

  variables: () ->
    g = @groups()
    c = @categories()

    {variables:
      [
        # ui colors
        new cgVarColor(0.010, g.GRPucx0.key, c.CATucx0.key, 'ui-syntax-color','')
        new cgVarColor(0.010, g.GRPucx0.key, c.CATucx0.key, 'ui-fg','')
        new cgVarColor(0.010, g.GRPucx0.key, c.CATucx0.key, 'ui-bg','')
        new cgVarColor(0.010, g.GRPucx0.key, c.CATucx0.key, 'ui-border','')
        # level colors
        new cgVarColor(0.010, g.GRPucx0.key, c.CATucx1.key, 'level-1-color','')
        new cgVarColor(0.010, g.GRPucx0.key, c.CATucx1.key, 'level-2-color','')
        new cgVarColor(0.010, g.GRPucx0.key, c.CATucx1.key, 'level-3-color','')
        # base colors
        new cgVarColor(0.010, g.GRPucx0.key, c.CATucx2.key, 'base-accent-color','')
      ]
    }
