# colorguide
# isotope-ui
# ui custom variable definitions

cgVarColor = require '../../../colorguide/lib/cg-variable-color'

module.exports =

  groups: () ->
    {
      GRPuc100: {key: 'GRPuc100', value: 100, description: 'Foreground'}
    }

  categories: () ->
    {
      CATuc10: {key: 'CATuc10', value: 10, description: 'Colors'}
    }

  variables: () ->
    g = @groups()
    c = @categories()

    {variables:
      [
        new cgVarColor(0.010, g.GRPuc100.key, c.CATuc10.key, 'fg-added','')
        new cgVarColor(0.010, g.GRPuc100.key, c.CATuc10.key, 'fg-renamed','')
        new cgVarColor(0.010, g.GRPuc100.key, c.CATuc10.key, 'fg-modified','')
        new cgVarColor(0.010, g.GRPuc100.key, c.CATuc10.key, 'fg-removed','')
      ]
    }
