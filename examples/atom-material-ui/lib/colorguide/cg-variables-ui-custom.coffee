# colorguide
# atom-material-ui
# ui custom variable definitions

cgVarColor = require '../../../colorguide/lib/cg-variable-color'

module.exports =

  groups: () ->
    {
      GRPuc100: {key: 'GRPuc100', value: 100, description: 'Custom Variables'}
    }

  categories: () ->
    {
      CATuc10: {key: 'CATuc10', value: 10, description: 'Text Colors'}
      CATuc20: {key: 'CATuc20', value: 20, description: 'Scroll Bar Colors'}
      CATuc30: {key: 'CATuc30', value: 30, description: 'Tip Colors'}
      CATuc40: {key: 'CATuc40', value: 40, description: 'Background Colors'}
    }

  variables: () ->
    g = @groups()
    c = @categories()

    {variables:
      [
        new cgVarColor(0.010, g.GRPuc100.key, c.CATuc10.key, 'text-color-dark', '')
        new cgVarColor(0.020, g.GRPuc100.key, c.CATuc10.key, 'text-color-ignored', '')
        new cgVarColor(0.030, g.GRPuc100.key, c.CATuc10.key, 'text-color-added', '')
        new cgVarColor(0.040, g.GRPuc100.key, c.CATuc10.key, 'text-color-renamed', '')
        new cgVarColor(0.050, g.GRPuc100.key, c.CATuc10.key, 'text-color-modified', '')
        new cgVarColor(0.060, g.GRPuc100.key, c.CATuc10.key, 'text-color-removed', '')

        new cgVarColor(0.010, g.GRPuc100.key, c.CATuc20.key, 'scrollbar-background-color', '')
        new cgVarColor(0.020, g.GRPuc100.key, c.CATuc20.key, 'scrollbar-color', '')

        new cgVarColor(0.010, g.GRPuc100.key, c.CATuc30.key, 'tip-background-color', '')
        new cgVarColor(0.020, g.GRPuc100.key, c.CATuc30.key, 'tip-text-color', '')

        new cgVarColor(0.010, g.GRPuc100.key, c.CATuc40.key, 'background-color-selected', '')
      ]
    }
