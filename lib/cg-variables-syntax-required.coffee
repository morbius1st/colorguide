cgVarColor = require './cg-variable-color'

module.exports =

  syntaxVarsReqdHeaders: () ->
    {
      CAT0: {key: 'CAT0', value: 0, description: 'General Text and Screen Colors'}
      CAT1: {key: 'CAT1', value: 1, description: 'Guide Colors'}
      CAT2: {key: 'CAT2', value: 2, description: 'Gutter Colors'}
      CAT3: {key: 'CAT3', value: 3, description: 'Git Diff Info Colors (in the gutter)'}
      CAT4: {key: 'CAT4', value: 4, description: 'Language Entity Colors'}
    }

  syntaxVarsReqd: () ->
    m = @syntaxVarsReqdHeaders()

    {variables:
      [
        # general text and screen colors
        new cgVarColor(m.CAT0.value + 0.011, m.CAT0.key, 'syntax-text-color', 'Normal Text Color'),
        new cgVarColor(m.CAT0.value + 0.020, m.CAT0.key, 'syntax-cursor-color', 'Cursor Color'),
        new cgVarColor(m.CAT0.value + 0.051, m.CAT0.key, 'syntax-selection-color', 'Selection Highlight Color'),
        new cgVarColor(m.CAT0.value + 0.052, m.CAT0.key, 'syntax-selection-flash-color', 'No Clue'),
        new cgVarColor(m.CAT0.value + 0.000, m.CAT0.key, 'syntax-background-color', 'Editor Area Background Color'),
        new cgVarColor(m.CAT0.value + 0.012, m.CAT0.key, 'syntax-invisible-character-color', 'Invisible Text Color'),
        # guide colors
        new cgVarColor(m.CAT1.value + 0.010, m.CAT1.key, 'syntax-wrap-guide-color', 'Wrap Guide Color'),
        new cgVarColor(m.CAT1.value + 0.020, m.CAT1.key, 'syntax-indent-guide-color', 'Indent Guide Color')
        # Gutter colors
        new cgVarColor(m.CAT2.value + 0.010, m.CAT2.key, 'syntax-gutter-text-color', 'Gutter Text Color'),
        new cgVarColor(m.CAT2.value + 0.020, m.CAT2.key, 'syntax-gutter-text-color-selected', 'Gutter Selected Text Color'),
        new cgVarColor(m.CAT2.value + 0.030, m.CAT2.key, 'syntax-gutter-background-color', 'Gutter Background Color'),
        new cgVarColor(m.CAT2.value + 0.040, m.CAT2.key, 'syntax-gutter-background-color-selected', 'Gutter Selected Background Color'),
        # For git diff info. i.e. in the gutter
        new cgVarColor(m.CAT3.value + 0.010, m.CAT3.key, 'syntax-color-renamed', 'Git: Renamed'),
        new cgVarColor(m.CAT3.value + 0.020, m.CAT3.key, 'syntax-color-added', 'Git: Added'),
        new cgVarColor(m.CAT3.value + 0.030, m.CAT3.key, 'syntax-color-modified', 'Git: Modified'),
        new cgVarColor(m.CAT3.value + 0.040, m.CAT3.key, 'syntax-color-removed', 'Git: Removed'),
        # for language entity colors
        new cgVarColor(m.CAT4.value + 0.070, m.CAT4.key, 'syntax-color-variable', 'Variable Text Color'),
        new cgVarColor(m.CAT4.value + 0.060, m.CAT4.key, 'syntax-color-constant', 'Constant Text Color'),
        new cgVarColor(m.CAT4.value + 0.050, m.CAT4.key, 'syntax-color-property', 'Property Text Color'),
        new cgVarColor(m.CAT4.value + 0.080, m.CAT4.key, 'syntax-color-value', 'Value Text Color'),
        new cgVarColor(m.CAT4.value + 0.040, m.CAT4.key, 'syntax-color-function', 'Function Text Color'),
        new cgVarColor(m.CAT4.value + 0.030, m.CAT4.key, 'syntax-color-method', 'Method Text Color'),
        new cgVarColor(m.CAT4.value + 0.020, m.CAT4.key, 'syntax-color-class', 'Class Text Color'),
        new cgVarColor(m.CAT4.value + 0.012, m.CAT4.key, 'syntax-color-keyword', 'Keyword Text Color'),
        new cgVarColor(m.CAT4.value + 0.013, m.CAT4.key, 'syntax-color-tag', 'Tag Text Color'),
        new cgVarColor(m.CAT4.value + 0.014, m.CAT4.key, 'syntax-color-attribute', 'Attribute Text Color'),
        new cgVarColor(m.CAT4.value + 0.011, m.CAT4.key, 'syntax-color-import', 'Import Text Color'),
        new cgVarColor(m.CAT4.value + 0.090, m.CAT4.key, 'syntax-color-snippet', 'Snippet Text Color')
      ]
    }

  syntaxVarsReqd1: () ->
    m = @syntaxVarsReqdHeaders()

    new cgVarColor(m.CAT0.value + 0.011, m.CAT0.key, 'syntax-text-color', 'Normal Text Color')
