# colorguide
# seti-ui
# ui custom color definitions

cgVarColor = require '../../../colorguide/lib/cg-variable-color'

module.exports =

  groups: () ->
    {
      GRPucx10: {key: 'GRPucx10', value:   10, description: 'Base'}
      GRPucx20: {key: 'GRPucx20', value:   20, description: 'Themed Colors'}
    }

  categories: () ->
    {
      CATucx10: {key: 'CATucx10', value: 10, description: 'Colors'}

      CATucx20: {key: 'CATucx20', value: 20, description: 'Red Theme'}
      CATucx21: {key: 'CATucx21', value: 21, description: 'Pink Theme'}
      CATucx22: {key: 'CATucx22', value: 22, description: 'Orange Theme'}
      CATucx23: {key: 'CATucx23', value: 23, description: 'Yellow Theme'}
      CATucx24: {key: 'CATucx24', value: 24, description: 'Green Theme'}
      CATucx25: {key: 'CATucx25', value: 25, description: 'Blue Theme'}
      CATucx26: {key: 'CATucx26', value: 26, description: 'Purple Theme'}
      CATucx27: {key: 'CATucx27', value: 27, description: 'Steel Theme'}
    }

  variables: () ->
    g = @groups()
    c = @categories()

    {variables:
      [
        # base colors
        new cgVarColor(0.010, g.GRPucx10.key, c.CATucx10.key, 'base-color','')
        new cgVarColor(0.020, g.GRPucx10.key, c.CATucx10.key, 'black','')
        new cgVarColor(0.030, g.GRPucx10.key, c.CATucx10.key, 'black-dark','')
        new cgVarColor(0.040, g.GRPucx10.key, c.CATucx10.key, 'white','')
        new cgVarColor(0.050, g.GRPucx10.key, c.CATucx10.key, 'grey','')
        new cgVarColor(0.060, g.GRPucx10.key, c.CATucx10.key, 'grey-dark','')
        new cgVarColor(0.070, g.GRPucx10.key, c.CATucx10.key, 'grey-light','')
        # theme colors
        # red theme
        new cgVarColor(0.010, g.GRPucx20.key, c.CATucx20.key, 'red','')
        new cgVarColor(0.020, g.GRPucx20.key, c.CATucx20.key, 'red-highlight','')
        new cgVarColor(0.030, g.GRPucx20.key, c.CATucx20.key, 'red-text','')
        # pink theme
        new cgVarColor(0.010, g.GRPucx20.key, c.CATucx21.key, 'pink','')
        new cgVarColor(0.020, g.GRPucx20.key, c.CATucx21.key, 'pink-highlight','')
        new cgVarColor(0.030, g.GRPucx20.key, c.CATucx21.key, 'pink-text','')
        # orange theme
        new cgVarColor(0.010, g.GRPucx20.key, c.CATucx22.key, 'orange','')
        new cgVarColor(0.020, g.GRPucx20.key, c.CATucx22.key, 'orange-highlight','')
        new cgVarColor(0.030, g.GRPucx20.key, c.CATucx22.key, 'orange-text','')
        # yellow theme
        new cgVarColor(0.010, g.GRPucx20.key, c.CATucx23.key, 'yellow','')
        new cgVarColor(0.020, g.GRPucx20.key, c.CATucx23.key, 'yellow-highlight','')
        new cgVarColor(0.030, g.GRPucx20.key, c.CATucx23.key, 'yellow-text','')
        # green theme
        new cgVarColor(0.010, g.GRPucx20.key, c.CATucx24.key, 'green','')
        new cgVarColor(0.020, g.GRPucx20.key, c.CATucx24.key, 'green-highlight','')
        new cgVarColor(0.030, g.GRPucx20.key, c.CATucx24.key, 'green-text','')
        # blue theme
        new cgVarColor(0.010, g.GRPucx20.key, c.CATucx25.key, 'blue','')
        new cgVarColor(0.020, g.GRPucx20.key, c.CATucx25.key, 'blue-highlight','')
        new cgVarColor(0.030, g.GRPucx20.key, c.CATucx25.key, 'blue-text','')
        new cgVarColor(0.040, g.GRPucx20.key, c.CATucx25.key, 'blue-secondary','')
        # purple theme
        new cgVarColor(0.010, g.GRPucx20.key, c.CATucx26.key, 'purple','')
        new cgVarColor(0.020, g.GRPucx20.key, c.CATucx26.key, 'purple-highlight','')
        new cgVarColor(0.030, g.GRPucx20.key, c.CATucx26.key, 'purple-text','')
        # steel theme
        new cgVarColor(0.010, g.GRPucx20.key, c.CATucx27.key, 'steel','')
        new cgVarColor(0.020, g.GRPucx20.key, c.CATucx27.key, 'steel-highlight','')
        new cgVarColor(0.030, g.GRPucx20.key, c.CATucx27.key, 'steel-text','')
      ]
    }
