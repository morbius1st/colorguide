# colorguide
# seti-syntax
# syntax custom color definitions

cgVarColor = require '../../../colorguide/lib/cg-variable-color'

module.exports =

  groups: () ->
    {
      GRPscx00: {key: 'GRPscx00', value:    0, description: 'Primary'}
      GRPscx05: {key: 'GRPscx05', value:  500, description: 'Miscellaneous'}
      GRPscx10: {key: 'GRPscx10', value: 1000, description: 'Color Themes'}
    }

  categories: () ->
    {
      CATscx00: {key: 'CATscx00', value:  0, description: 'Base'}
      CATscx01: {key: 'CATscx01', value:  1, description: 'Status'}
      CATscx02: {key: 'CATscx02', value:  2, description: 'Primaries'}
      CATscx03: {key: 'CATscx03', value:  3, description: 'Miscellaneous'}
      CATscx10: {key: 'CATscx10', value: 10, description: 'Red'}
      CATscx20: {key: 'CATscx20', value: 20, description: 'Pink'}
      CATscx30: {key: 'CATscx30', value: 30, description: 'Orange'}
      CATscx40: {key: 'CATscx40', value: 40, description: 'Yellow'}
      CATscx50: {key: 'CATscx50', value: 50, description: 'Green'}
      CATscx60: {key: 'CATscx60', value: 60, description: 'Blue'}
      CATscx70: {key: 'CATscx70', value: 70, description: 'Purple'}
      CATscx80: {key: 'CATscx80', value: 80, description: 'Steel'}
    }

  variables: () ->
    g = @groups()
    c = @categories()

    v =
      {variables:
        [
          # base
          new cgVarColor(0.020, g.GRPscx00.key, c.CATscx00.key, 'black', '')
          new cgVarColor(0.030, g.GRPscx00.key, c.CATscx00.key, 'black-dark', '')
          new cgVarColor(0.040, g.GRPscx00.key, c.CATscx00.key, 'white', '')
          new cgVarColor(0.050, g.GRPscx00.key, c.CATscx00.key, 'grey', '')
          new cgVarColor(0.060, g.GRPscx00.key, c.CATscx00.key, 'grey-dark', '')
          new cgVarColor(0.070, g.GRPscx00.key, c.CATscx00.key, 'grey-light', '')
          # status
          new cgVarColor(0.010, g.GRPscx00.key, c.CATscx01.key, 'good', '')
          new cgVarColor(0.020, g.GRPscx00.key, c.CATscx01.key, 'bad', '')
          new cgVarColor(0.030, g.GRPscx00.key, c.CATscx01.key, 'warn', '')
          new cgVarColor(0.040, g.GRPscx00.key, c.CATscx01.key, 'hidden', '')
          new cgVarColor(0.050, g.GRPscx00.key, c.CATscx01.key, 'ignore', '')
          # primaries
          new cgVarColor(0.010, g.GRPscx00.key, c.CATscx02.key, 'blue', '')
          new cgVarColor(0.020, g.GRPscx00.key, c.CATscx02.key, 'blue-highlight', '')
          new cgVarColor(0.030, g.GRPscx00.key, c.CATscx02.key, 'blue-text', '')
          new cgVarColor(0.040, g.GRPscx00.key, c.CATscx02.key, 'green', '')
          new cgVarColor(0.050, g.GRPscx00.key, c.CATscx02.key, 'green-highlight ', '')
          new cgVarColor(0.060, g.GRPscx00.key, c.CATscx02.key, 'green-text', '')
          new cgVarColor(0.070, g.GRPscx00.key, c.CATscx02.key, 'blue-secondary', '')
          new cgVarColor(0.080, g.GRPscx00.key, c.CATscx02.key, 'orange', '')
          new cgVarColor(0.090, g.GRPscx00.key, c.CATscx02.key, 'orange', '')
          new cgVarColor(0.100, g.GRPscx00.key, c.CATscx02.key, 'orange-text', '')
          new cgVarColor(0.110, g.GRPscx00.key, c.CATscx02.key, 'pink', '')
          new cgVarColor(0.120, g.GRPscx00.key, c.CATscx02.key, 'pink-highlight', '')
          new cgVarColor(0.130, g.GRPscx00.key, c.CATscx02.key, 'pink-text', '')
          new cgVarColor(0.140, g.GRPscx00.key, c.CATscx02.key, 'purple', '')
          new cgVarColor(0.150, g.GRPscx00.key, c.CATscx02.key, 'purple-highlight', '')
          new cgVarColor(0.160, g.GRPscx00.key, c.CATscx02.key, 'purple-text', '')
          new cgVarColor(0.170, g.GRPscx00.key, c.CATscx02.key, 'red', '')
          new cgVarColor(0.180, g.GRPscx00.key, c.CATscx02.key, 'red-highlight', '')
          new cgVarColor(0.190, g.GRPscx00.key, c.CATscx02.key, 'red-text', '')
          new cgVarColor(0.200, g.GRPscx00.key, c.CATscx02.key, 'steel', '')
          new cgVarColor(0.210, g.GRPscx00.key, c.CATscx02.key, 'steel-highlight ', '')
          new cgVarColor(0.220, g.GRPscx00.key, c.CATscx02.key, 'steel-text', '')
          new cgVarColor(0.230, g.GRPscx00.key, c.CATscx02.key, 'yellow', '')
          new cgVarColor(0.240, g.GRPscx00.key, c.CATscx02.key, 'yellow-highlight', '')
          new cgVarColor(0.250, g.GRPscx00.key, c.CATscx02.key, 'yellow-text', '')
          # misc colors
          new cgVarColor(0.000, g.GRPscx05.key, c.CATscx03.key, 'invisible', '')
          new cgVarColor(0.010, g.GRPscx05.key, c.CATscx03.key, 'guides', '')
          new cgVarColor(0.020, g.GRPscx05.key, c.CATscx03.key, 'cursor-color', '')
          new cgVarColor(0.030, g.GRPscx05.key, c.CATscx03.key, 'selected', '')
          new cgVarColor(0.040, g.GRPscx05.key, c.CATscx03.key, 'selected-border', '')
          new cgVarColor(0.050, g.GRPscx05.key, c.CATscx03.key, 'selected-line', '')
          new cgVarColor(0.060, g.GRPscx05.key, c.CATscx03.key, 'selected-text', '')
        ]
      }

    tx = [ c.CATscx10.key, c.CATscx20.key, c.CATscx30.key, c.CATscx40.key,
            c.CATscx50.key, c.CATscx60.key, c.CATscx70.key, c.CATscx80.key
          ]


    tc = ['color1', 'color1-highlight', 'color1-text',
          'color2', 'color2-highlight', 'color2-text',
          'color3', 'color3-highlight', 'color3-text',
          'color4', 'color4-highlight', 'color4-text',
          'color5', 'color5-highlight', 'color5-text',
          'color6', 'color6-highlight', 'color6-text',
          'color7', 'color7-highlight', 'color7-text',
          'color8', 'color8-highlight', 'color8-text'
          ]

    for tCat in tx
      count = 0

      tName = (c[tCat].description).toLowerCase()

      for tColor in tc
        v.variables.push(new cgVarColor(0.010 + ((count)/100),
            g.GRPscx10.key, tCat, tc[count] + '\u00A0“' + tName + '”'))

        count++

    return v
