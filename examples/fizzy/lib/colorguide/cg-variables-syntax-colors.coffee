# colorguide
# fizzy
# syntax custom color definitions

cgVarColor = require '../../../colorguide/lib/cg-variable-color'

module.exports =

  groups: () ->
    {
      GRPscx0: {key: 'GRPscx0', value:    0, description: 'Custom'}
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
        new cgVarColor(0.010, g.GRPscx0.key, c.CATscx0.key, 'blue','')
        new cgVarColor(0.020, g.GRPscx0.key, c.CATscx0.key, 'selection_blue','')
        new cgVarColor(0.030, g.GRPscx0.key, c.CATscx0.key, 'light_blue','')
        new cgVarColor(0.040, g.GRPscx0.key, c.CATscx0.key, 'dark_blue','')
        new cgVarColor(0.050, g.GRPscx0.key, c.CATscx0.key, 'light_blue_border','')
        new cgVarColor(0.060, g.GRPscx0.key, c.CATscx0.key, 'white','')
        new cgVarColor(0.070, g.GRPscx0.key, c.CATscx0.key, 'black','')
        new cgVarColor(0.080, g.GRPscx0.key, c.CATscx0.key, 'red','')
        new cgVarColor(0.090, g.GRPscx0.key, c.CATscx0.key, 'dark_red','')
        new cgVarColor(0.100, g.GRPscx0.key, c.CATscx0.key, 'gray_light2','')
        new cgVarColor(0.110, g.GRPscx0.key, c.CATscx0.key, 'gray_light','')
        new cgVarColor(0.120, g.GRPscx0.key, c.CATscx0.key, 'gray','')
        new cgVarColor(0.130, g.GRPscx0.key, c.CATscx0.key, 'gray_dark','')
        new cgVarColor(0.140, g.GRPscx0.key, c.CATscx0.key, 'green','')
        new cgVarColor(0.150, g.GRPscx0.key, c.CATscx0.key, 'green_dark','')
        new cgVarColor(0.160, g.GRPscx0.key, c.CATscx0.key, 'green_light','')
        new cgVarColor(0.170, g.GRPscx0.key, c.CATscx0.key, 'purple','')
        new cgVarColor(0.180, g.GRPscx0.key, c.CATscx0.key, 'purple_dark','')
        new cgVarColor(0.190, g.GRPscx0.key, c.CATscx0.key, 'light_purple','')
        new cgVarColor(0.200, g.GRPscx0.key, c.CATscx0.key, 'orange','')
        new cgVarColor(0.210, g.GRPscx0.key, c.CATscx0.key, 'dark_orange','')
        new cgVarColor(0.220, g.GRPscx0.key, c.CATscx0.key, 'turquoise','')
      ]
    }
