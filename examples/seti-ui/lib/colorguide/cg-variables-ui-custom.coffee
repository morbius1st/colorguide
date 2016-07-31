# colorguide
# seti-ui
# ui custom variable definitions

cgVarColor = require '../../../colorguide/lib/cg-variable-color'

module.exports =

  groups: () ->
    {
      GRPuc100: {key: 'GRPuc100', value: 100, description: 'UI Colors'}
      GRPuc200: {key: 'GRPuc200', value: 200, description: 'Miscellaneous'}
    }

  categories: () ->
    {
      CATuc0: {key: 'CATuc0', value: 0, description: 'Sidebar / Tree View'}
      CATuc1: {key: 'CATuc1', value: 1, description: 'Tabs'}
      CATuc2: {key: 'CATuc2', value: 2, description: 'Scrollbars'}

      CATuc10: {key: 'CATuc10', value: 10, description: 'Default Theme'}
      CATuc11: {key: 'CATuc11', value: 11, description: 'Miscellaneous'}
    }

  variables: () ->
    g = @groups()
    c = @categories()

    {variables:
      [
        # Ui Colors
        # Sidebar / Tree View
        new cgVarColor(0.010, g.GRPuc100.key, c.CATuc0.key, 'tree-view-background-color','')
        new cgVarColor(0.020, g.GRPuc100.key, c.CATuc0.key, 'tree-view-border-color','')
        new cgVarColor(0.030, g.GRPuc100.key, c.CATuc0.key, 'tree-view-highlight','')
        new cgVarColor(0.040, g.GRPuc100.key, c.CATuc0.key, 'tree-view-header-color','')
        new cgVarColor(0.050, g.GRPuc100.key, c.CATuc0.key, 'tree-view-header-text-color','')
        new cgVarColor(0.060, g.GRPuc100.key, c.CATuc0.key, 'tree-view-text-color','')
        # tabs
        new cgVarColor(0.010, g.GRPuc100.key, c.CATuc1.key, 'tab-bar-background-color','')
        new cgVarColor(0.020, g.GRPuc100.key, c.CATuc1.key, 'tab-bar-border-color','')
        new cgVarColor(0.030, g.GRPuc100.key, c.CATuc1.key, 'tab-background-color','')
        new cgVarColor(0.040, g.GRPuc100.key, c.CATuc1.key, 'tab-text-color','')
        new cgVarColor(0.050, g.GRPuc100.key, c.CATuc1.key, 'tab-background-color-active','')
        new cgVarColor(0.060, g.GRPuc100.key, c.CATuc1.key, 'tab-border-color','')
        # scrollbars
        new cgVarColor(0.010, g.GRPuc100.key, c.CATuc2.key, 'scrollbar-background-color','')
        new cgVarColor(0.020, g.GRPuc100.key, c.CATuc2.key, 'scrollbar-color','')
        # default theme
        new cgVarColor(0.010, g.GRPuc200.key, c.CATuc10.key, 'seti-primary','')
        new cgVarColor(0.010, g.GRPuc200.key, c.CATuc10.key, 'seti-primary-text','')
        new cgVarColor(0.010, g.GRPuc200.key, c.CATuc10.key, 'seti-primary-highlight','')
        new cgVarColor(0.010, g.GRPuc200.key, c.CATuc10.key, 'seti-secondary','')
        # misc colors
        new cgVarColor(0.010, g.GRPuc200.key, c.CATuc11.key, 'input-text-color','')
        new cgVarColor(0.020, g.GRPuc200.key, c.CATuc11.key, 'text-color-ignored','')
        new cgVarColor(0.030, g.GRPuc200.key, c.CATuc11.key, 'panel-background-color','')
        new cgVarColor(0.040, g.GRPuc200.key, c.CATuc11.key, 'good','')
        new cgVarColor(0.050, g.GRPuc200.key, c.CATuc11.key, 'bad','')
        new cgVarColor(0.060, g.GRPuc200.key, c.CATuc11.key, 'warn','')
        new cgVarColor(0.070, g.GRPuc200.key, c.CATuc11.key, 'hidden','')
        new cgVarColor(0.080, g.GRPuc200.key, c.CATuc11.key, 'ignore','')
        ]
    }
