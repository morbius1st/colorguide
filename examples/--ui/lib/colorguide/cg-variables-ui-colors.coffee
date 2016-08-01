# colorguide
# xxx-ui
# ui custom color definitions

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
      GRPucx100: {key: 'GRPucx100', value: 100, description: 'group 0'}
      GRPucx200: {key: 'GRPucx200', value: 200, description: 'group 1'}
    }

  categories: () ->
    {
      CATucx10: {key: 'CATucx10', value: 10, description: 'Colors'}
      CATucx20: {key: 'CATucx20', value: 20, description: 'Colors'}
      CATucx30: {key: 'CATucx30', value: 30, description: 'Colors'}
    }

  variables: () ->
    g = @groups()
    c = @categories()

    {variables:
      [
        # example:  new cgVarColor(0.010, g.GRPucx0.key, c.CATucx0.key, 'color-001', 'Color 001')
        # new cgVarColor(0.010, g.GRPucx100.key, c.CATucx10.key, '--- class name of variable without ".cg-" ---', 'optional brief description')
      ]
    }
