
cgVarColor = require './cg-variable-color'

module.exports =

  syntaxVarsReqdGroups: () ->
    {
      GRPsr0: {key: 'GRPsr0', value:    0, description: 'General Colors'}
      GRPsr1: {key: 'GRPsr1', value: 1000, description: 'Language Entity Colors'}
    }

  syntaxVarsReqdCategories: () ->
    count = 1
    {
      CATsr0:  {key: 'CATsr0',  value: count++, description: 'Text and Screen Colors'}
      CATsr2:  {key: 'CATsr2',  value: count++, description: 'Guide Colors'}
      CATsr4:  {key: 'CATsr4',  value: count++, description: 'Marker Colors'}
      CATsr6:  {key: 'CATsr6',  value: count++, description: 'Gutter Colors'}
      CATsr8:  {key: 'CATsr8',  value: count++, description: 'Git Diff Info Colors (in the gutter)'}
      CATsr10: {key: 'CATsr10', value: count++, description: 'Language Defined Words'}
      CATsr12: {key: 'CATsr12', value: count++, description: 'User Defined Symbols'}
    }

  syntaxVarsReqd: () ->
    g = @syntaxVarsReqdGroups()
    c = @syntaxVarsReqdCategories()

    {variables:
      [
        # general text and screen colors
        new cgVarColor(0.011, g.GRPsr0.key, c.CATsr0.key, 'syntax-text-color', 'Normal Text Color'),
        new cgVarColor(0.020, g.GRPsr0.key, c.CATsr0.key, 'syntax-cursor-color', 'Cursor Color'),
        new cgVarColor(0.051, g.GRPsr0.key, c.CATsr0.key, 'syntax-selection-color', 'Selection Highlight Color'),
        new cgVarColor(0.052, g.GRPsr0.key, c.CATsr0.key, 'syntax-selection-flash-color', 'No Clue'),
        new cgVarColor(0.000, g.GRPsr0.key, c.CATsr0.key, 'syntax-background-color', 'Editor Area Background Color'),
        new cgVarColor(0.012, g.GRPsr0.key, c.CATsr0.key, 'syntax-invisible-character-color', 'Invisible Text Color'),
        # guide colors
        new cgVarColor(0.010, g.GRPsr0.key, c.CATsr2.key, 'syntax-wrap-guide-color', 'Wrap Guide Color'),
        new cgVarColor(0.020, g.GRPsr0.key, c.CATsr2.key, 'syntax-indent-guide-color', 'Indent Guide Color'),
        # find and replace markers
        new cgVarColor(0.010, g.GRPsr0.key, c.CATsr4.key, 'syntax-result-marker-color', 'Result Marker Color'),
        new cgVarColor(0.020, g.GRPsr0.key, c.CATsr4.key, 'syntax-result-marker-color-selected', 'Result Marker when Selected Color'),
        # Gutter colors
        new cgVarColor(0.010, g.GRPsr0.key, c.CATsr6.key, 'syntax-gutter-text-color', 'Gutter Text Color'),
        new cgVarColor(0.020, g.GRPsr0.key, c.CATsr6.key, 'syntax-gutter-text-color-selected', 'Gutter Selected Text Color'),
        new cgVarColor(0.030, g.GRPsr0.key, c.CATsr6.key, 'syntax-gutter-background-color', 'Gutter Background Color'),
        new cgVarColor(0.040, g.GRPsr0.key, c.CATsr6.key, 'syntax-gutter-background-color-selected', 'Gutter Selected Background Color'),
        # For git diff info. i.e. in the gutter
        new cgVarColor(0.010, g.GRPsr0.key, c.CATsr8.key, 'syntax-color-renamed', 'Git: Renamed'),
        new cgVarColor(0.020, g.GRPsr0.key, c.CATsr8.key, 'syntax-color-added', 'Git: Added'),
        new cgVarColor(0.030, g.GRPsr0.key, c.CATsr8.key, 'syntax-color-modified', 'Git: Modified'),
        new cgVarColor(0.040, g.GRPsr0.key, c.CATsr8.key, 'syntax-color-removed', 'Git: Removed'),
        # for language entity colors
        # language defined
        new cgVarColor(0.010, g.GRPsr1.key, c.CATsr10.key, 'syntax-color-keyword', 'Keyword Text Color'),
        new cgVarColor(0.020, g.GRPsr1.key, c.CATsr10.key, 'syntax-color-tag', 'Tag Text Color'),
        new cgVarColor(0.030, g.GRPsr1.key, c.CATsr10.key, 'syntax-color-property', 'Psroperty Text Color'),
        new cgVarColor(0.040, g.GRPsr1.key, c.CATsr10.key, 'syntax-color-attribute', 'Attribute Text Color'),
        # user defined
        new cgVarColor(0.010, g.GRPsr1.key, c.CATsr12.key, 'syntax-color-import', 'Import Text Color'),
        new cgVarColor(0.020, g.GRPsr1.key, c.CATsr12.key, 'syntax-color-class', 'Class Text Color'),
        new cgVarColor(0.030, g.GRPsr1.key, c.CATsr12.key, 'syntax-color-method', 'Method Text Color'),
        new cgVarColor(0.040, g.GRPsr1.key, c.CATsr12.key, 'syntax-color-function', 'Function Text Color'),
        new cgVarColor(0.050, g.GRPsr1.key, c.CATsr12.key, 'syntax-color-variable', 'Variable Text Color'),
        new cgVarColor(0.060, g.GRPsr1.key, c.CATsr12.key, 'syntax-color-constant', 'Constant Text Color'),
        new cgVarColor(0.070, g.GRPsr1.key, c.CATsr12.key, 'syntax-color-value', 'Value Text Color'),
        new cgVarColor(0.100, g.GRPsr1.key, c.CATsr12.key, 'syntax-color-snippet', 'Snippet Text Color')
      ]
    }

  syntaxVarsReqd1: () ->
    g = @syntaxVarsReqdGroups()
    c = @syntaxVarsReqdCategories()

    new cgVarColor(g.GRPsr0.value + c.CATsr0.value + 0.011, g.GRPsr0.key, c.CATsr0.key, 'syntax-text-color', 'Normal Text Color')
