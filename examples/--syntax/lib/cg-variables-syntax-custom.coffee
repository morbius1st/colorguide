# colorguide
# syntax custom color variables
# xxx-syntax

cgVarColor = require './cg-variable-color'

module.exports =

  syntaxVarsCustomGroups: () ->
    {
      GRPsc0: {key: 'GRPsc0', value:    0, description: 'Editor Colors'}
      GRPsc1: {key: 'GRPsc1', value: 1000, description: 'Syntax Colors'}
    }

  syntaxVarsCustomCategories: () ->
    {
      CATsc0: {key: 'CATsc0', value: 0, description: 'Scroll Bar Colors'}
      CATsc1: {key: 'CATsc1', value: 1, description: 'Gutter Colors'}
      CATsc2: {key: 'CATsc2', value: 2, description: 'Bracket Matching'}
      CATsc3: {key: 'CATsc3', value: 3, description: 'Miscellenous'}
    }

  syntaxVarsCustom: () ->
    g = @syntaxVarsCustomGroups()
    c = @syntaxVarsCustomCategories()

    {variables:
      [
        # scroll bar
        new cgVarColor(0.010, g.GRPsc0.key, c.CATsc0.key, 'scrollbar-color', 'Scroll Bar Color')
        new cgVarColor(0.020, g.GRPsc0.key, c.CATsc0.key, 'scrollbar-background-color', 'Scroll Bar Background Color')
        new cgVarColor(0.110, g.GRPsc0.key, c.CATsc0.key, 'scrollbar-color-editor','Scroll Bar Color: Editor Pane')
        new cgVarColor(0.120, g.GRPsc0.key, c.CATsc0.key, 'scrollbar-background-color-editor','Scroll Bar Background Color: Editor Pane')
        new cgVarColor(0.030, g.GRPsc0.key, c.CATsc0.key, 'scrollbar-corner-color','Corner Color where the Scrool Bars Meet')
        new cgVarColor(0.130, g.GRPsc0.key, c.CATsc0.key, 'scrollbar-corner-color-editor','Corner Color where the Scrool Bars Meet: Editor Pane')
        new cgVarColor(0.040, g.GRPsc0.key, c.CATsc0.key, 'scrollbar-thumb-color','Scroll Bar Thumb Color')
        new cgVarColor(0.140, g.GRPsc0.key, c.CATsc0.key, 'scrollbar-thumb-color-editor','Scroll Bar Thumb Color: Editor Pane')
        # gutter
        new cgVarColor(0.010, g.GRPsc0.key, c.CATsc1.key, 'syntax-gutter-text-color-folded', 'Gutter Text Folded Color')
        # bracket matching
        new cgVarColor(0.010, g.GRPsc1.key, c.CATsc2.key, 'bracket-matcher-border-color', 'Bracket Match Border Color')
        new cgVarColor(0.020, g.GRPsc1.key, c.CATsc2.key, 'bracket-matcher-background-color', 'Bracket Match Background Color')
        # misc editor colors
        new cgVarColor(0.010, g.GRPsc0.key, c.CATsc3.key, 'syntax-indent-guide-bkg-color', 'The background color for the indent guide')
      ]
    }
