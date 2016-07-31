# colorguide
# atom-monokai
# syntax custom color definitions

cgVarColor = require '../../../colorguide/lib/cg-variable-color'

module.exports =

  groups: () ->
    {
      GRPscx0: {key: 'GRPscx0', value:    0, description: 'Custom Colors'}
    }

  categories: () ->
    {
      CATscx10: {key: 'CATscx10', value: 10, description: 'Monochrome'}
      CATscx20: {key: 'CATscx20', value: 20, description: 'Colors'}
      CATscx30: {key: 'CATscx30', value: 30, description: 'Base Colors'}
      CATscx40: {key: 'CATscx40', value: 40, description: 'Default'}
      CATscx50: {key: 'CATscx50', value: 50, description: 'Monokai'}
    }

  variables: () ->
    g = @groups()
    c = @categories()

    {variables:
      [
        # Monochrome
        new cgVarColor(0.000, g.GRPscx0.key, c.CATscx10.key, 'mono-0','')
        new cgVarColor(0.010, g.GRPscx0.key, c.CATscx10.key, 'mono-1','')
        new cgVarColor(0.020, g.GRPscx0.key, c.CATscx10.key, 'mono-2','')
        new cgVarColor(0.030, g.GRPscx0.key, c.CATscx10.key, 'mono-3','')
        new cgVarColor(0.040, g.GRPscx0.key, c.CATscx10.key, 'mono-4','')
        # Colors
        new cgVarColor(0.000, g.GRPscx0.key, c.CATscx20.key, 'hue-1','')
        new cgVarColor(0.010, g.GRPscx0.key, c.CATscx20.key, 'hue-2','')
        new cgVarColor(0.020, g.GRPscx0.key, c.CATscx20.key, 'hue-3','')
        new cgVarColor(0.030, g.GRPscx0.key, c.CATscx20.key, 'hue-3-2','')
        new cgVarColor(0.040, g.GRPscx0.key, c.CATscx20.key, 'hue-3-3','')
        new cgVarColor(0.050, g.GRPscx0.key, c.CATscx20.key, 'hue-4','')
        new cgVarColor(0.060, g.GRPscx0.key, c.CATscx20.key, 'hue-4-2','')
        new cgVarColor(0.070, g.GRPscx0.key, c.CATscx20.key, 'hue-5','')
        new cgVarColor(0.080, g.GRPscx0.key, c.CATscx20.key, 'hue-5-2','')
        new cgVarColor(0.090, g.GRPscx0.key, c.CATscx20.key, 'hue-5-3','')
        new cgVarColor(0.100, g.GRPscx0.key, c.CATscx20.key, 'hue-6','')
        new cgVarColor(0.110, g.GRPscx0.key, c.CATscx20.key, 'hue-6-2','')
        new cgVarColor(0.120, g.GRPscx0.key, c.CATscx20.key, 'hue-6-3','')
        # Base colors
        new cgVarColor(0.000, g.GRPscx0.key, c.CATscx30.key, 'syntax-fg','')
        new cgVarColor(0.010, g.GRPscx0.key, c.CATscx30.key, 'syntax-bg','')
        new cgVarColor(0.020, g.GRPscx0.key, c.CATscx30.key, 'syntax-gutter','')
        new cgVarColor(0.030, g.GRPscx0.key, c.CATscx30.key, 'syntax-guide','')
        new cgVarColor(0.040, g.GRPscx0.key, c.CATscx30.key, 'syntax-accent','')
        # default
        new cgVarColor(0.000, g.GRPscx0.key, c.CATscx40.key, 'base','')
        new cgVarColor(0.010, g.GRPscx0.key, c.CATscx40.key, 'base03','')
        new cgVarColor(0.020, g.GRPscx0.key, c.CATscx40.key, 'base02','')
        new cgVarColor(0.030, g.GRPscx0.key, c.CATscx40.key, 'base01','')
        new cgVarColor(0.040, g.GRPscx0.key, c.CATscx40.key, 'base00','')
        new cgVarColor(0.050, g.GRPscx0.key, c.CATscx40.key, 'base0','')
        new cgVarColor(0.060, g.GRPscx0.key, c.CATscx40.key, 'base1','')
        new cgVarColor(0.070, g.GRPscx0.key, c.CATscx40.key, 'base2','')
        new cgVarColor(0.080, g.GRPscx0.key, c.CATscx40.key, 'base3','')
        new cgVarColor(0.090, g.GRPscx0.key, c.CATscx40.key, 'yellow','')
        new cgVarColor(0.100, g.GRPscx0.key, c.CATscx40.key, 'orange','')
        new cgVarColor(0.110, g.GRPscx0.key, c.CATscx40.key, 'red','')
        new cgVarColor(0.120, g.GRPscx0.key, c.CATscx40.key, 'magenta','')
        new cgVarColor(0.130, g.GRPscx0.key, c.CATscx40.key, 'violet','')
        new cgVarColor(0.140, g.GRPscx0.key, c.CATscx40.key, 'blue','')
        new cgVarColor(0.150, g.GRPscx0.key, c.CATscx40.key, 'cyan','')
        new cgVarColor(0.160, g.GRPscx0.key, c.CATscx40.key, 'green','')
        new cgVarColor(0.170, g.GRPscx0.key, c.CATscx40.key, 'text','')
        # monokai
        new cgVarColor(0.000, g.GRPscx0.key, c.CATscx50.key, 'entity','')
        new cgVarColor(0.010, g.GRPscx0.key, c.CATscx50.key, 'keyword','')
        new cgVarColor(0.020, g.GRPscx0.key, c.CATscx50.key, 'string','')
        new cgVarColor(0.030, g.GRPscx0.key, c.CATscx50.key, 'cursor','')
        new cgVarColor(0.040, g.GRPscx0.key, c.CATscx50.key, 'boolean','')
        new cgVarColor(0.050, g.GRPscx0.key, c.CATscx50.key, 'character','')
        new cgVarColor(0.060, g.GRPscx0.key, c.CATscx50.key, 'constant','')
        new cgVarColor(0.070, g.GRPscx0.key, c.CATscx50.key, 'number','')
        new cgVarColor(0.080, g.GRPscx0.key, c.CATscx50.key, 'variable','')
        new cgVarColor(0.090, g.GRPscx0.key, c.CATscx50.key, 'storage','')
        new cgVarColor(0.100, g.GRPscx0.key, c.CATscx50.key, 'functionCall','')
      ]
    }
