# colorguide
# cs-dark-ui
# ui custom variable definitions


cgVarColor = require '../../../colorguide/lib/cg-variable-color'

module.exports =

  groups: () ->
    {
      GRPuc0: {key: 'GRPuc0', value:    0, description: 'Custom Variables'}
    }

  categories: () ->
    {
      CATuc0: {key: 'CATuc0', value: 0, description: 'Text Colors'}
      CATuc1: {key: 'CATuc1', value: 1, description: 'Button Colors'}
      CATuc2: {key: 'CATuc2', value: 2, description: 'Input Colors'}
      CATuc3: {key: 'CATuc3', value: 3, description: 'Key Binding Colors'}
      CATuc4: {key: 'CATuc4', value: 4, description: 'Scrollbar Colors'}
      CATuc5: {key: 'CATuc5', value: 5, description: 'Tab Colors'}
      CATuc6: {key: 'CATuc6', value: 6, description: 'Tooltip Colors'}
      CATuc7: {key: 'CATuc7', value: 7, description: 'Miscellaneous Colors'}
    }

  variables: () ->
    g = @groups()
    c = @categories()

    {variables:
      [
        new cgVarColor(0.010, g.GRPuc0.key, c.CATuc0.key, 'text-color-added','')
        new cgVarColor(0.010, g.GRPuc0.key, c.CATuc0.key, 'text-color-ignored','')
        new cgVarColor(0.010, g.GRPuc0.key, c.CATuc0.key, 'text-color-modified','')
        new cgVarColor(0.010, g.GRPuc0.key, c.CATuc0.key, 'text-color-removed','')
        new cgVarColor(0.010, g.GRPuc0.key, c.CATuc0.key, 'text-color-renamed','')
        new cgVarColor(0.010, g.GRPuc0.key, c.CATuc0.key, 'text-color-faded','')
        # button
        new cgVarColor(0.010, g.GRPuc0.key, c.CATuc1.key, 'button-text-color-selected','')
        new cgVarColor(0.010, g.GRPuc0.key, c.CATuc1.key, 'button-border-color-selected','')
        # input
        new cgVarColor(0.010, g.GRPuc0.key, c.CATuc2.key, 'input-background-color-focus','')
        new cgVarColor(0.010, g.GRPuc0.key, c.CATuc2.key, 'input-selection-color','')
        new cgVarColor(0.010, g.GRPuc0.key, c.CATuc2.key, 'input-selection-color-focus','')
        # key binding
        new cgVarColor(0.010, g.GRPuc0.key, c.CATuc3.key, 'key-binding-border-color','')
        new cgVarColor(0.010, g.GRPuc0.key, c.CATuc3.key, 'key-binding-background-color','')
        # scrollbar
        new cgVarColor(0.010, g.GRPuc0.key, c.CATuc4.key, 'scrollbar-color','')
        new cgVarColor(0.010, g.GRPuc0.key, c.CATuc4.key, 'scrollbar-background-color','')
        new cgVarColor(0.010, g.GRPuc0.key, c.CATuc4.key, 'scrollbar-color-editor','')
        new cgVarColor(0.010, g.GRPuc0.key, c.CATuc4.key, 'scrollbar-background-color-edit','')
        new cgVarColor(0.010, g.GRPuc0.key, c.CATuc4.key, 'scrollbar-corner-color','')
        new cgVarColor(0.010, g.GRPuc0.key, c.CATuc4.key, 'scrollbar-corner-color-editor','')
        new cgVarColor(0.010, g.GRPuc0.key, c.CATuc4.key, 'scrollbar-thumb-color','')
        new cgVarColor(0.010, g.GRPuc0.key, c.CATuc4.key, 'scrollbar-thumb-color-editor','')
        # tab
        new cgVarColor(0.010, g.GRPuc0.key, c.CATuc5.key, 'tab-text-color','')
        new cgVarColor(0.010, g.GRPuc0.key, c.CATuc5.key, 'tab-text-color-active','')
        new cgVarColor(0.010, g.GRPuc0.key, c.CATuc5.key, 'tab-text-color-editor','')
        new cgVarColor(0.010, g.GRPuc0.key, c.CATuc5.key, 'tab-background-color-editor','')
        # tooltip
        new cgVarColor(0.010, g.GRPuc0.key, c.CATuc6.key, 'tooltip-background-color','')
        new cgVarColor(0.010, g.GRPuc0.key, c.CATuc6.key, 'tooltip-text-color','')
        new cgVarColor(0.010, g.GRPuc0.key, c.CATuc6.key, 'tooltip-text-key-color','')
        new cgVarColor(0.010, g.GRPuc0.key, c.CATuc6.key, 'tooltip-background-key-color','')
        # miscellaneous
        new cgVarColor(0.010, g.GRPuc0.key, c.CATuc7.key, 'checkbox-background-color','')
        new cgVarColor(0.010, g.GRPuc0.key, c.CATuc7.key, 'badge-background-color','')
        new cgVarColor(0.010, g.GRPuc0.key, c.CATuc7.key, 'theme-config-border-selected','')
        new cgVarColor(0.010, g.GRPuc0.key, c.CATuc7.key, 'settings-list-background-color','')
        new cgVarColor(0.010, g.GRPuc0.key, c.CATuc7.key, 'overlay-backdrop-color','')
        new cgVarColor(0.010, g.GRPuc0.key, c.CATuc7.key, 'progress-background-color','')
      ]
    }
