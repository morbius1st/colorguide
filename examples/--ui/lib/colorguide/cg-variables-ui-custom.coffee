# colorguide
# xxx-ui
# ui custom variable definitions

# notes:
# for "groups" and "categories", the 'key' must match the object name exactly and
# the object / key names must be unique for a theme
# the 'value' field is a number used for sorting and can be any number you like
# the sorting of the "variables" is the sum of
# the "group" 'value', the "categories" 'value', and the varaibles value (first number)
# I did this so that groups / categories and be re-ordered bu just changing the 'value'
# - The variable description field is optional and defaults to an empty string

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
