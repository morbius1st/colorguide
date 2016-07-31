# colorguide
# isotope-ui
# ui custom color definitions

cgVarColor = require '../../../colorguide/lib/cg-variable-color'

module.exports =

  groups: () ->
    {
      GRPucx100: {key: 'GRPucx100', value: 100, description: 'Custom Colors'}
    }

  categories: () ->
    {
      CATucx10: {key: 'CATucx10', value: 10, description: 'leading'}
      CATucx20: {key: 'CATucx20', value: 20, description: 'Background'}
      CATucx30: {key: 'CATucx30', value: 30, description: 'Foreground'}
    }

  variables: () ->
    g = @groups()
    c = @categories()

    {variables:
      [
        # leading colors
        new cgVarColor(0.010, g.GRPucx100.key, c.CATucx10.key, 'ui-theme-color','')
        new cgVarColor(0.010, g.GRPucx100.key, c.CATucx10.key, 'ui-accent','')
        # background
        new cgVarColor(0.010, g.GRPucx100.key, c.CATucx20.key, 'base-bg','')
        new cgVarColor(0.010, g.GRPucx100.key, c.CATucx20.key, 'level-1-bg','')
        new cgVarColor(0.010, g.GRPucx100.key, c.CATucx20.key, 'level-2-bg','')
        new cgVarColor(0.010, g.GRPucx100.key, c.CATucx20.key, 'level-3-bg','')
        new cgVarColor(0.010, g.GRPucx100.key, c.CATucx20.key, 'stroke','')
        new cgVarColor(0.010, g.GRPucx100.key, c.CATucx20.key, 'item-views-stroke','')
        new cgVarColor(0.010, g.GRPucx100.key, c.CATucx20.key, 'bg-info','')
        new cgVarColor(0.010, g.GRPucx100.key, c.CATucx20.key, 'bg-success','')
        new cgVarColor(0.010, g.GRPucx100.key, c.CATucx20.key, 'bg-warning','')
        new cgVarColor(0.010, g.GRPucx100.key, c.CATucx20.key, 'bg-error','')
        # foreground
        new cgVarColor(0.010, g.GRPucx100.key, c.CATucx30.key, 'base-fg','')
        new cgVarColor(0.010, g.GRPucx100.key, c.CATucx30.key, 'fg-subtle','')
        new cgVarColor(0.010, g.GRPucx100.key, c.CATucx30.key, 'fg-faded','')
        new cgVarColor(0.010, g.GRPucx100.key, c.CATucx30.key, 'fg-ignored','')
        new cgVarColor(0.010, g.GRPucx100.key, c.CATucx30.key, 'fg-highlight','')
        new cgVarColor(0.010, g.GRPucx100.key, c.CATucx30.key, 'fg-selected','')
        new cgVarColor(0.010, g.GRPucx100.key, c.CATucx30.key, 'fg-info','')
        new cgVarColor(0.010, g.GRPucx100.key, c.CATucx30.key, 'fg-success','')
        new cgVarColor(0.010, g.GRPucx100.key, c.CATucx30.key, 'fg-warning','')
        new cgVarColor(0.010, g.GRPucx100.key, c.CATucx30.key, 'fg-error','')
      ]
    }
