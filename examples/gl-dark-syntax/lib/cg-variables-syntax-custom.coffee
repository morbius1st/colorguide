class cgVarColor

  constructor: (idx, group, category, name, desc, top = '#ffffff', mid = '#808080', bot = '#000000') ->
    @order = idx
    @variableGroup = group
    @variableCategory = category
    @variableName = name
    @variableDesc = desc
    @bkgColorTop = top
    @bkgColorMid = mid
    @bkgColorBot = bot

module.exports =

  syntaxVarsCustomGroups: () ->
    {
      GRPc0: {key: 'GRPc0', value:    0, description: 'Custom Colors'}
    }

  syntaxVarsCustomCategories: () ->
    {
      CATc0: {key: 'CATc0', value: 0, description: 'Cursor Line'}
      CATc1: {key: 'CATc1', value: 1, description: 'Deprecated'}
      CATc2: {key: 'CATc2', value: 2, description: 'Illegal'}
    }

  syntaxVarsCustom: () ->
    g = @syntaxVarsCustomGroups()
    c = @syntaxVarsCustomCategories()

    {variables:
      [
        # custom colors
        new cgVarColor(0.010, g.GRPc0.key, c.CATc0.key, 'syntax-cursor-line', 'Cursor Line')
        new cgVarColor(0.010, g.GRPc0.key, c.CATc1.key, 'syntax-deprecated-fg', 'Deprecated Foreground')
        new cgVarColor(0.020, g.GRPc0.key, c.CATc1.key, 'syntax-deprecated-bg', 'Deprecated Background')
        new cgVarColor(0.010, g.GRPc0.key, c.CATc2.key, 'syntax-illegal-fg', 'Illegal Foreground')
        new cgVarColor(0.020, g.GRPc0.key, c.CATc2.key, 'syntax-illegal-bg', 'Illegal Background')
      ]
    }
