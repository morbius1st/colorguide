# colorguide
# atom-material-ui
# ui custom color definitions

cgVarColor = require '../../../colorguide/lib/cg-variable-color'

module.exports =

  groups: () ->
    {
      GRPucx100: {key: 'GRPucx100', value: 100, description: 'Custom Colors'}

    }

  categories: () ->
    {
      CATucx10: {key: 'CATucx10', value: 10, description: 'Material Design Key Colors'}
      CATucx20: {key: 'CATucx20', value: 20, description: 'Accent Colors'}
    }

  variables: () ->
    g = @groups()
    c = @categories()

    {variables:
      [
        # Material Design Key Colors
        new cgVarColor(0.010, g.GRPucx100.key, c.CATucx10.key, 'md-red', '')
        new cgVarColor(0.020, g.GRPucx100.key, c.CATucx10.key, 'md-pink', '')
        new cgVarColor(0.030, g.GRPucx100.key, c.CATucx10.key, 'md-purple', '')
        new cgVarColor(0.040, g.GRPucx100.key, c.CATucx10.key, 'md-deep-purple', '')
        new cgVarColor(0.050, g.GRPucx100.key, c.CATucx10.key, 'md-indigo', '')
        new cgVarColor(0.060, g.GRPucx100.key, c.CATucx10.key, 'md-blue', '')
        new cgVarColor(0.070, g.GRPucx100.key, c.CATucx10.key, 'md-light-blue', '')
        new cgVarColor(0.080, g.GRPucx100.key, c.CATucx10.key, 'md-cyan', '')
        new cgVarColor(0.090, g.GRPucx100.key, c.CATucx10.key, 'md-teal', '')
        new cgVarColor(0.100, g.GRPucx100.key, c.CATucx10.key, 'md-teal-300', '')
        new cgVarColor(0.110, g.GRPucx100.key, c.CATucx10.key, 'md-green', '')
        new cgVarColor(0.120, g.GRPucx100.key, c.CATucx10.key, 'md-light-green', '')
        new cgVarColor(0.130, g.GRPucx100.key, c.CATucx10.key, 'md-lime', '')
        new cgVarColor(0.140, g.GRPucx100.key, c.CATucx10.key, 'md-yellow', '')
        new cgVarColor(0.150, g.GRPucx100.key, c.CATucx10.key, 'md-amber', '')
        new cgVarColor(0.160, g.GRPucx100.key, c.CATucx10.key, 'md-orange', '')
        new cgVarColor(0.170, g.GRPucx100.key, c.CATucx10.key, 'md-deep-orange', '')
        new cgVarColor(0.180, g.GRPucx100.key, c.CATucx10.key, 'md-brown', '')
        new cgVarColor(0.190, g.GRPucx100.key, c.CATucx10.key, 'md-grey', '')
        new cgVarColor(0.200, g.GRPucx100.key, c.CATucx10.key, 'md-grey-700', '')
        new cgVarColor(0.210, g.GRPucx100.key, c.CATucx10.key, 'md-blue-grey', '')
        # Accent Colors
        new cgVarColor(0.010, g.GRPucx100.key, c.CATucx20.key, 'base-color', '')
        new cgVarColor(0.020, g.GRPucx100.key, c.CATucx20.key, 'accent-color', '')
        new cgVarColor(0.030, g.GRPucx100.key, c.CATucx20.key, 'accent-text-color', '')
      ]
    }
