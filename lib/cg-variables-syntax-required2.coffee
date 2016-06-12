cgVarColor2 = require './cg-variable-color2'

module.exports =

  syntaxVarsReqdGroups: () ->
    {
      GRP0: {key: 'GRP0', value:    0, description: 'General Colors'}
      GRP1: {key: 'GRP1', value: 1000, description: 'Language Entity Colors'}
    }

  syntaxVarsReqdCategories: () ->
    {
      CAT0: {key: 'CAT0', value: 0, description: 'Text and Screen Colors'}
      CAT1: {key: 'CAT1', value: 1, description: 'Guide Colors'}
      CAT2: {key: 'CAT2', value: 2, description: 'Gutter Colors'}
      CAT3: {key: 'CAT3', value: 3, description: 'Git Diff Info Colors (in the gutter)'}
      CAT4: {key: 'CAT4', value: 4, description: 'Language Defined Words'}
      CAT5: {key: 'CAT5', value: 5, description: 'User Defined Symbols'}
    }

  syntaxVarsReqd: () ->
    g = @syntaxVarsReqdGroups()
    c = @syntaxVarsReqdCategories()

    {variables:
      [
        # general text and screen colors
        new cgVarColor2(g.GRP0.value + c.CAT0.value + 0.011, g.GRP0.key, c.CAT0.key, 'syntax-text-color', 'Normal Text Color')
        new cgVarColor2(g.GRP0.value + c.CAT0.value + 0.020, g.GRP0.key, c.CAT0.key, 'syntax-cursor-color', 'Cursor Color'),
        new cgVarColor2(g.GRP0.value + c.CAT0.value + 0.051, g.GRP0.key, c.CAT0.key, 'syntax-selection-color', 'Selection Highlight Color'),
        new cgVarColor2(g.GRP0.value + c.CAT0.value + 0.052, g.GRP0.key, c.CAT0.key, 'syntax-selection-flash-color', 'No Clue'),
        new cgVarColor2(g.GRP0.value + c.CAT0.value + 0.000, g.GRP0.key, c.CAT0.key, 'syntax-background-color', 'Editor Area Background Color'),
        new cgVarColor2(g.GRP0.value + c.CAT0.value + 0.012, g.GRP0.key, c.CAT0.key, 'syntax-invisible-character-color', 'Invisible Text Color'),
        # guide colors
        new cgVarColor2(g.GRP0.value + c.CAT1.value + 0.010, g.GRP0.key, c.CAT1.key, 'syntax-wrap-guide-color', 'Wrap Guide Color'),
        new cgVarColor2(g.GRP0.value + c.CAT1.value + 0.020, g.GRP0.key, c.CAT1.key, 'syntax-indent-guide-color', 'Indent Guide Color')
        # Gutter colors
        new cgVarColor2(g.GRP0.value + c.CAT2.value + 0.010, g.GRP0.key, c.CAT2.key, 'syntax-gutter-text-color', 'Gutter Text Color'),
        new cgVarColor2(g.GRP0.value + c.CAT2.value + 0.020, g.GRP0.key, c.CAT2.key, 'syntax-gutter-text-color-selected', 'Gutter Selected Text Color'),
        new cgVarColor2(g.GRP0.value + c.CAT2.value + 0.030, g.GRP0.key, c.CAT2.key, 'syntax-gutter-background-color', 'Gutter Background Color'),
        new cgVarColor2(g.GRP0.value + c.CAT2.value + 0.040, g.GRP0.key, c.CAT2.key, 'syntax-gutter-background-color-selected', 'Gutter Selected Background Color'),
        # For git diff info. i.e. in the gutter
        new cgVarColor2(g.GRP0.value + c.CAT3.value + 0.010, g.GRP0.key, c.CAT3.key, 'syntax-color-renamed', 'Git: Renamed'),
        new cgVarColor2(g.GRP0.value + c.CAT3.value + 0.020, g.GRP0.key, c.CAT3.key, 'syntax-color-added', 'Git: Added'),
        new cgVarColor2(g.GRP0.value + c.CAT3.value + 0.030, g.GRP0.key, c.CAT3.key, 'syntax-color-modified', 'Git: Modified'),
        new cgVarColor2(g.GRP0.value + c.CAT3.value + 0.040, g.GRP0.key, c.CAT3.key, 'syntax-color-removed', 'Git: Removed'),
        # for language entity colors
        # language defined
        new cgVarColor2(g.GRP1.value + c.CAT4.value + 0.010, g.GRP1.key, c.CAT4.key, 'syntax-color-keyword', 'Keyword Text Color'),
        new cgVarColor2(g.GRP1.value + c.CAT4.value + 0.020, g.GRP1.key, c.CAT4.key, 'syntax-color-tag', 'Tag Text Color'),
        new cgVarColor2(g.GRP1.value + c.CAT4.value + 0.030, g.GRP1.key, c.CAT4.key, 'syntax-color-property', 'Property Text Color'),
        new cgVarColor2(g.GRP1.value + c.CAT4.value + 0.040, g.GRP1.key, c.CAT4.key, 'syntax-color-attribute', 'Attribute Text Color'),
        # user defined
        new cgVarColor2(g.GRP1.value + c.CAT5.value + 0.010, g.GRP1.key, c.CAT5.key, 'syntax-color-import', 'Import Text Color'),
        new cgVarColor2(g.GRP1.value + c.CAT5.value + 0.020, g.GRP1.key, c.CAT5.key, 'syntax-color-class', 'Class Text Color'),
        new cgVarColor2(g.GRP1.value + c.CAT5.value + 0.030, g.GRP1.key, c.CAT5.key, 'syntax-color-method', 'Method Text Color'),
        new cgVarColor2(g.GRP1.value + c.CAT5.value + 0.040, g.GRP1.key, c.CAT5.key, 'syntax-color-function', 'Function Text Color'),
        new cgVarColor2(g.GRP1.value + c.CAT5.value + 0.050, g.GRP1.key, c.CAT5.key, 'syntax-color-variable', 'Variable Text Color'),
        new cgVarColor2(g.GRP1.value + c.CAT5.value + 0.060, g.GRP1.key, c.CAT5.key, 'syntax-color-constant', 'Constant Text Color'),
        new cgVarColor2(g.GRP1.value + c.CAT5.value + 0.070, g.GRP1.key, c.CAT5.key, 'syntax-color-value', 'Value Text Color'),
        new cgVarColor2(g.GRP1.value + c.CAT5.value + 0.100, g.GRP1.key, c.CAT5.key, 'syntax-color-snippet', 'Snippet Text Color')
      ]
    }

  syntaxVarsReqd1: () ->
    g = @syntaxVarsReqdGroups()
    c = @syntaxVarsReqdCategories()

    new cgVarColor2(g.GRP0.value + c.CAT0.value + 0.011, g.GRP0.key, c.CAT0.key, 'syntax-text-color', 'Normal Text Color')
