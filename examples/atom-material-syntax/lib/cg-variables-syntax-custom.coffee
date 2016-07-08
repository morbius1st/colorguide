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
      CATc1: {key: 'CATc1', value: 1, description: 'Bracket Matcher'}
    }

  syntaxVarsCustom: () ->
    g = @syntaxVarsCustomGroups()
    c = @syntaxVarsCustomCategories()

    {variables:
      [
        # custom colors
        new cgVarColor(0.010, g.GRPc0.key, c.CATc0.key, 'syntax-cursor-line', 'Cursor Line')
        new cgVarColor(0.010, g.GRPc0.key, c.CATc1.key, 'syntax-bracket-matcher-background-color', 'Bracket matcher background')
      ]
    }
