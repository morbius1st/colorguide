# colorguide
# xxx-syntax
# syntax custom color definitions

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
      GRPscx100: {key: 'GRPscx100', value: 100, description: 'group 0'}
      GRPscx200: {key: 'GRPscx200', value: 200, description: 'group 1'}
    }

  categories: () ->
    {
      CATscx10: {key: 'CATscx10', value: 10, description: 'Colors'}
      CATscx20: {key: 'CATscx20', value: 20, description: 'Colors'}
      CATscx30: {key: 'CATscx30', value: 30, description: 'Colors'}
    }

  variables: () ->
    g = @groups()
    c = @categories()

    {variables:
      [
        # example:  new cgVarColor(0.010, g.GRPscx0.key, c.CATscx0.key, 'color-001', 'Color 001')
        # new cgVarColor(0.010, g.GRPscx100.key, c.CATscx10.key, '--- class name of variable without ".cg-" ---', 'optional brief description')
      ]
    }
