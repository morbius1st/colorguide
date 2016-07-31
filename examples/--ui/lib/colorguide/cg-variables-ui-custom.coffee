# colorguide
# xxx-ui
# ui custom variable definitions

cgVarColor = require '../../../colorguide/lib/cg-variable-color'

module.exports =

  groups: () ->
    {
      GRPuc100: {key: 'GRPuc100', value: 100, description: 'group 0'}
      GRPuc200: {key: 'GRPuc200', value: 200, description: 'group 1'}
    }

  categories: () ->
    {
      CATuc10: {key: 'CATuc10', value: 10, description: 'Colors'}
      CATuc20: {key: 'CATuc20', value: 20, description: 'Colors'}
      CATuc30: {key: 'CATuc30', value: 30, description: 'Colors'}
    }

  variables: () ->
    g = @groups()
    c = @categories()

    {variables:
      [
        # example:  new cgVarColor(0.010, g.GRPuc0.key, c.CATuc0.key, 'color-001', 'Color 001')
        # new cgVarColor(0.010, g.GRPuc100.key, c.CATuc10.key, '--- class name of variable without ".cg-" ---', 'optional brief description')
      ]
    }
