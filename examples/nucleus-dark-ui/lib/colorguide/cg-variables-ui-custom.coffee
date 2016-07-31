# colorguide
# nucleus-dark-ui
# ui custom variable definitions

cgVarColor = require '../../../colorguide/lib/cg-variable-color'

module.exports =

  groups: () ->
    {
      GRPuc100: {key: 'GRPuc100', value: 100, description: 'Editor'}
      GRPuc200: {key: 'GRPuc200', value: 200, description: 'Text'}
      GRPuc300: {key: 'GRPuc300', value: 300, description: 'Component'}
    }

  categories: () ->
    {
      CATuc10: {key: 'CATuc10', value: 10, description: 'Theme'}
      CATuc20: {key: 'CATuc20', value: 20, description: 'Components'}
      CATuc30: {key: 'CATuc30', value: 30, description: 'Colors'}
      CATuc40: {key: 'CATuc40', value: 40, description: 'Colors'}
    }

  variables: () ->
    g = @groups()
    c = @categories()

    {variables:
      [
        # Editor colors
        new cgVarColor(0.010, g.GRPuc100.key, c.CATuc10.key, 'theme-syntax-text-color','')
        new cgVarColor(0.010, g.GRPuc100.key, c.CATuc10.key, 'theme-syntax-cursor-color','')
        new cgVarColor(0.010, g.GRPuc100.key, c.CATuc10.key, 'theme-syntax-selection-color','')
        new cgVarColor(0.010, g.GRPuc100.key, c.CATuc10.key, 'theme-syntax-background-color','')
        new cgVarColor(0.010, g.GRPuc100.key, c.CATuc10.key, 'theme-syntax-wrap-guide-color','')
        new cgVarColor(0.010, g.GRPuc100.key, c.CATuc10.key, 'theme-syntax-indent-guide-color','')
        new cgVarColor(0.010, g.GRPuc100.key, c.CATuc10.key, 'theme-syntax-invisible-character-color','')
        new cgVarColor(0.010, g.GRPuc100.key, c.CATuc10.key, 'theme-syntax-gutter-text-color','')
        new cgVarColor(0.010, g.GRPuc100.key, c.CATuc10.key, 'theme-syntax-gutter-text-color-selected','')
        new cgVarColor(0.010, g.GRPuc100.key, c.CATuc10.key, 'theme-syntax-gutter-background-color','')
        new cgVarColor(0.010, g.GRPuc100.key, c.CATuc10.key, 'theme-syntax-gutter-background-color-selected','')
        # Editor
        new cgVarColor(0.010, g.GRPuc100.key, c.CATuc20.key, 'indent-guide-color','')
        new cgVarColor(0.010, g.GRPuc100.key, c.CATuc20.key, 'invisibles-color','')
        new cgVarColor(0.010, g.GRPuc100.key, c.CATuc20.key, 'gutter-background-color','')
        new cgVarColor(0.010, g.GRPuc100.key, c.CATuc20.key, 'gutter-background-color-selected','')
        new cgVarColor(0.010, g.GRPuc100.key, c.CATuc20.key, 'gutter-text-color','')
        new cgVarColor(0.010, g.GRPuc100.key, c.CATuc20.key, 'gutter-text-color-selected','')
        # Text
        new cgVarColor(0.010, g.GRPuc200.key, c.CATuc30.key, 'text-color-ignored','')
        new cgVarColor(0.010, g.GRPuc200.key, c.CATuc30.key, 'text-color-added','')
        new cgVarColor(0.010, g.GRPuc200.key, c.CATuc30.key, 'text-color-renamed','')
        new cgVarColor(0.010, g.GRPuc200.key, c.CATuc30.key, 'text-color-modified','')
        new cgVarColor(0.010, g.GRPuc200.key, c.CATuc30.key, 'text-color-removed','')
        # Component colors
        new cgVarColor(0.010, g.GRPuc300.key, c.CATuc40.key, 'app-background-color','')
        new cgVarColor(0.010, g.GRPuc300.key, c.CATuc40.key, 'input-background-color-active','')
        new cgVarColor(0.010, g.GRPuc300.key, c.CATuc40.key, 'input-text-color-active','')
        new cgVarColor(0.010, g.GRPuc300.key, c.CATuc40.key, 'overlay-background-color','')
        new cgVarColor(0.010, g.GRPuc300.key, c.CATuc40.key, 'overlay-border-color','')
        new cgVarColor(0.010, g.GRPuc300.key, c.CATuc40.key, 'button-background-color-hover','')
        new cgVarColor(0.010, g.GRPuc300.key, c.CATuc40.key, 'button-background-color-selected','')
        new cgVarColor(0.010, g.GRPuc300.key, c.CATuc40.key, 'tab-background-color-hover','')
        new cgVarColor(0.010, g.GRPuc300.key, c.CATuc40.key, 'tooltip-text-color','')
        new cgVarColor(0.010, g.GRPuc300.key, c.CATuc40.key, 'tooltip-background-color','')
        new cgVarColor(0.010, g.GRPuc300.key, c.CATuc40.key, 'tooltip-key-text-color','')
        new cgVarColor(0.010, g.GRPuc300.key, c.CATuc40.key, 'tooltip-key-background-color','')
        new cgVarColor(0.010, g.GRPuc300.key, c.CATuc40.key, 'progress-background-color','')
        new cgVarColor(0.010, g.GRPuc300.key, c.CATuc40.key, 'markdown-preview-color','')
        new cgVarColor(0.010, g.GRPuc300.key, c.CATuc40.key, 'markdown-preview-background-color','')
        new cgVarColor(0.010, g.GRPuc300.key, c.CATuc40.key, 'markdown-preview-border-color','')
        new cgVarColor(0.010, g.GRPuc300.key, c.CATuc40.key, 'scrollbar-color','')
        new cgVarColor(0.010, g.GRPuc300.key, c.CATuc40.key, 'scrollbar-color-active','')
        new cgVarColor(0.010, g.GRPuc300.key, c.CATuc40.key, 'scrollbar-border-color','')
        new cgVarColor(0.010, g.GRPuc300.key, c.CATuc40.key, 'scrollbar-track-color','')
      ]
    }
