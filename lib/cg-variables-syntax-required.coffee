# cgVarColor = require './cg-variable-color'


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

  syntaxVarsReqdGroups: () ->
    {
      GRPr0: {key: 'GRPr0', value:    0, description: 'General Colors'}
      GRPr1: {key: 'GRPr1', value: 1000, description: 'Language Entity Colors'}
    }

  syntaxVarsReqdCategories: () ->
    count = 1
    {
      CATr0:  {key: 'CATr0',  value: count++, description: 'Text and Screen Colors'}
      CATr2:  {key: 'CATr2',  value: count++, description: 'Guide Colors'}
      CATr4:  {key: 'CATr4',  value: count++, description: 'Marker Colors'}
      CATr6:  {key: 'CATr6',  value: count++, description: 'Gutter Colors'}
      CATr8:  {key: 'CATr8',  value: count++, description: 'Git Diff Info Colors (in the gutter)'}
      CATr10: {key: 'CATr10', value: count++, description: 'Language Defined Words'}
      CATr12: {key: 'CATr12', value: count++, description: 'User Defined Symbols'}
    }

  syntaxVarsReqd: () ->
    g = @syntaxVarsReqdGroups()
    c = @syntaxVarsReqdCategories()

    {variables:
      [
        # general text and screen colors
        new cgVarColor(0.011, g.GRPr0.key, c.CATr0.key, 'syntax-text-color', 'Normal Text Color'),
        new cgVarColor(0.020, g.GRPr0.key, c.CATr0.key, 'syntax-cursor-color', 'Cursor Color'),
        new cgVarColor(0.051, g.GRPr0.key, c.CATr0.key, 'syntax-selection-color', 'Selection Highlight Color'),
        new cgVarColor(0.052, g.GRPr0.key, c.CATr0.key, 'syntax-selection-flash-color', 'No Clue'),
        new cgVarColor(0.000, g.GRPr0.key, c.CATr0.key, 'syntax-background-color', 'Editor Area Background Color'),
        new cgVarColor(0.012, g.GRPr0.key, c.CATr0.key, 'syntax-invisible-character-color', 'Invisible Text Color'),
        # guide colors
        new cgVarColor(0.010, g.GRPr0.key, c.CATr2.key, 'syntax-wrap-guide-color', 'Wrap Guide Color'),
        new cgVarColor(0.020, g.GRPr0.key, c.CATr2.key, 'syntax-indent-guide-color', 'Indent Guide Color'),
        # find and replace markers
        new cgVarColor(0.010, g.GRPr0.key, c.CATr4.key, 'syntax-result-marker-color', 'Result Marker Color'),
        new cgVarColor(0.020, g.GRPr0.key, c.CATr4.key, 'syntax-result-marker-color-selected', 'Result Marker when Selected Color'),
        # Gutter colors
        new cgVarColor(0.010, g.GRPr0.key, c.CATr6.key, 'syntax-gutter-text-color', 'Gutter Text Color'),
        new cgVarColor(0.020, g.GRPr0.key, c.CATr6.key, 'syntax-gutter-text-color-selected', 'Gutter Selected Text Color'),
        new cgVarColor(0.030, g.GRPr0.key, c.CATr6.key, 'syntax-gutter-background-color', 'Gutter Background Color'),
        new cgVarColor(0.040, g.GRPr0.key, c.CATr6.key, 'syntax-gutter-background-color-selected', 'Gutter Selected Background Color'),
        # For git diff info. i.e. in the gutter
        new cgVarColor(0.010, g.GRPr0.key, c.CATr8.key, 'syntax-color-renamed', 'Git: Renamed'),
        new cgVarColor(0.020, g.GRPr0.key, c.CATr8.key, 'syntax-color-added', 'Git: Added'),
        new cgVarColor(0.030, g.GRPr0.key, c.CATr8.key, 'syntax-color-modified', 'Git: Modified'),
        new cgVarColor(0.040, g.GRPr0.key, c.CATr8.key, 'syntax-color-removed', 'Git: Removed'),
        # for language entity colors
        # language defined
        new cgVarColor(0.010, g.GRPr1.key, c.CATr10.key, 'syntax-color-keyword', 'Keyword Text Color'),
        new cgVarColor(0.020, g.GRPr1.key, c.CATr10.key, 'syntax-color-tag', 'Tag Text Color'),
        new cgVarColor(0.030, g.GRPr1.key, c.CATr10.key, 'syntax-color-property', 'Property Text Color'),
        new cgVarColor(0.040, g.GRPr1.key, c.CATr10.key, 'syntax-color-attribute', 'Attribute Text Color'),
        # user defined
        new cgVarColor(0.010, g.GRPr1.key, c.CATr12.key, 'syntax-color-import', 'Import Text Color'),
        new cgVarColor(0.020, g.GRPr1.key, c.CATr12.key, 'syntax-color-class', 'Class Text Color'),
        new cgVarColor(0.030, g.GRPr1.key, c.CATr12.key, 'syntax-color-method', 'Method Text Color'),
        new cgVarColor(0.040, g.GRPr1.key, c.CATr12.key, 'syntax-color-function', 'Function Text Color'),
        new cgVarColor(0.050, g.GRPr1.key, c.CATr12.key, 'syntax-color-variable', 'Variable Text Color'),
        new cgVarColor(0.060, g.GRPr1.key, c.CATr12.key, 'syntax-color-constant', 'Constant Text Color'),
        new cgVarColor(0.070, g.GRPr1.key, c.CATr12.key, 'syntax-color-value', 'Value Text Color'),
        new cgVarColor(0.100, g.GRPr1.key, c.CATr12.key, 'syntax-color-snippet', 'Snippet Text Color')
      ]
    }

  syntaxVarsReqd1: () ->
    g = @syntaxVarsReqdGroups()
    c = @syntaxVarsReqdCategories()

    new cgVarColor(g.GRPr0.value + c.CATr0.value + 0.011, g.GRPr0.key, c.CATr0.key, 'syntax-text-color', 'Normal Text Color')
