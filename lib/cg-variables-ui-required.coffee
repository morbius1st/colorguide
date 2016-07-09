
cgVarColor = require './cg-variable-color'

module.exports =

  uiVarsReqdGroups: () ->
    {
      GRPur1: {key: 'GRPur1', value:    0, description: 'General Colors'}
      GRPur2: {key: 'GRPur2', value: 1000, description: 'Component Colors'}
    }

  uiVarsReqdCategories: () ->
    count = 1
    {
      CATur1:  {key: 'CATur1',  value: count++, description: 'Text Colors'}
      CATur2:  {key: 'CATur2',  value: count++, description: 'Background Colors'}
      CATur11:  {key: 'CATur11',  value: count++, description: 'Base Colors'}
      CATur12:  {key: 'CATur12',  value: count++, description: 'Pane Item Colors'}
      CATur13:  {key: 'CATur13',  value: count++, description: 'Input Colors'}
      CATur14:  {key: 'CATur14',  value: count++, description: 'Tool Panel Colors'}
      CATur15:  {key: 'CATur15',  value: count++, description: 'Inset Panel Colors'}
      CATur16:  {key: 'CATur16',  value: count++, description: 'Panel Heading Colors'}
      CATur17:  {key: 'CATur17',  value: count++, description: 'Overlay Colors'}
      CATur18:  {key: 'CATur18',  value: count++, description: 'Button Colors'}
      CATur19:  {key: 'CATur19',  value: count++, description: 'Tab Bar Colors'}
      CATur20:  {key: 'CATur20',  value: count++, description: 'Tree View Colors'}
      CATur21:  {key: 'CATur21',  value: count++, description: 'Ui Site Colors'}

    }

  uiVarsReqd: () ->
    g = @uiVarsReqdGroups()
    c = @uiVarsReqdCategories()

    {variables:
      [
        # general / text colors
        new cgVarColor(0.010, g.GRPur1.key, c.CATur1.key, 'text-color', 'General Text Color'),
        new cgVarColor(0.020, g.GRPur1.key, c.CATur1.key, 'text-color-subtle', 'General Text Color - Subtle'),
        new cgVarColor(0.030, g.GRPur1.key, c.CATur1.key, 'text-color-highlight', 'General Text Color - Highlight'),
        new cgVarColor(0.040, g.GRPur1.key, c.CATur1.key, 'text-color-selected', 'General Text Color - Selected'),
        new cgVarColor(0.050, g.GRPur1.key, c.CATur1.key, 'text-color-info', 'General Text Color - Info (Blue)'),
        new cgVarColor(0.060, g.GRPur1.key, c.CATur1.key, 'text-color-success', 'General Text Color - Success (Green)'),
        new cgVarColor(0.070, g.GRPur1.key, c.CATur1.key, 'text-color-warning', 'General Text Color - Warning\n(Yellow or Orange)'),
        new cgVarColor(0.080, g.GRPur1.key, c.CATur1.key, 'text-color-error', 'General Text Color - Error (Red)'),
        # general / background colors
        new cgVarColor(0.010, g.GRPur1.key, c.CATur2.key, 'background-color-info', 'Background Color - Info (Blue)'),
        new cgVarColor(0.020, g.GRPur1.key, c.CATur2.key, 'background-color-success', 'Background Color - Success (Green)'),
        new cgVarColor(0.030, g.GRPur1.key, c.CATur2.key, 'background-color-warning', 'Background Color - Warning (Yellow or Orange)'),
        new cgVarColor(0.040, g.GRPur1.key, c.CATur2.key, 'background-color-error', 'Background Color - Error (Red)'),
        new cgVarColor(0.050, g.GRPur1.key, c.CATur2.key, 'background-color-highlight', 'Background Color - Highlight'),
        new cgVarColor(0.060, g.GRPur1.key, c.CATur2.key, 'background-color-selected', 'Background Color - Selected'),
        new cgVarColor(0.070, g.GRPur1.key, c.CATur2.key, 'app-background-color', 'The app’s background under all the editor components'),
        # component / base
        new cgVarColor(0.010, g.GRPur2.key, c.CATur11.key, 'base-background-color', ''),
        new cgVarColor(0.020, g.GRPur2.key, c.CATur11.key, 'base-border-color', ''),
        # component / pane
        new cgVarColor(0.010, g.GRPur2.key, c.CATur12.key, 'pane-item-background-color', ''),
        new cgVarColor(0.020, g.GRPur2.key, c.CATur12.key, 'pane-item-border-color', ''),
        # component / input
        new cgVarColor(0.010, g.GRPur2.key, c.CATur13.key, 'input-background-color', ''),
        new cgVarColor(0.020, g.GRPur2.key, c.CATur13.key, 'input-border-color', ''),
        # component / tool panel
        new cgVarColor(0.010, g.GRPur2.key, c.CATur14.key, 'tool-panel-background-color', ''),
        new cgVarColor(0.020, g.GRPur2.key, c.CATur14.key, 'tool-panel-border-color', ''),
        # component / inset panel
        new cgVarColor(0.010, g.GRPur2.key, c.CATur15.key, 'inset-panel-background-color', ''),
        new cgVarColor(0.020, g.GRPur2.key, c.CATur15.key, 'inset-panel-border-color', ''),
        # component / panel heading
        new cgVarColor(0.010, g.GRPur2.key, c.CATur16.key, 'panel-heading-background-color', ''),
        new cgVarColor(0.020, g.GRPur2.key, c.CATur16.key, 'panel-heading-border-color', ''),
        # component / overlay
        new cgVarColor(0.010, g.GRPur2.key, c.CATur17.key, 'overlay-background-color', ''),
        new cgVarColor(0.020, g.GRPur2.key, c.CATur17.key, 'overlay-border-color', ''),
        # component / button
        new cgVarColor(0.010, g.GRPur2.key, c.CATur18.key, 'button-background-color', ''),
        new cgVarColor(0.020, g.GRPur2.key, c.CATur18.key, 'button-background-color-hover', ''),
        new cgVarColor(0.030, g.GRPur2.key, c.CATur18.key, 'button-background-color-selected', ''),
        new cgVarColor(0.040, g.GRPur2.key, c.CATur18.key, 'button-border-color', ''),
        # component / tab bar
        new cgVarColor(0.010, g.GRPur2.key, c.CATur19.key, 'tab-bar-background-color', ''),
        new cgVarColor(0.020, g.GRPur2.key, c.CATur19.key, 'tab-bar-border-color', ''),
        new cgVarColor(0.030, g.GRPur2.key, c.CATur19.key, 'tab-background-color', ''),
        new cgVarColor(0.040, g.GRPur2.key, c.CATur19.key, 'tab-background-color-active', ''),
        new cgVarColor(0.050, g.GRPur2.key, c.CATur19.key, 'tab-border-color', ''),
        # component / tree view
        new cgVarColor(0.010, g.GRPur2.key, c.CATur20.key, 'tree-view-background-color', ''),
        new cgVarColor(0.020, g.GRPur2.key, c.CATur20.key, 'tree-view-border-color', ''),
        # component / ui-site
        new cgVarColor(0.010, g.GRPur2.key, c.CATur21.key, 'ui-site-color-1', ''),
        new cgVarColor(0.020, g.GRPur2.key, c.CATur21.key, 'ui-site-color-2', ''),
        new cgVarColor(0.030, g.GRPur2.key, c.CATur21.key, 'ui-site-color-3', ''),
        new cgVarColor(0.040, g.GRPur2.key, c.CATur21.key, 'ui-site-color-4', ''),
        new cgVarColor(0.050, g.GRPur2.key, c.CATur21.key, 'ui-site-color-5', '')
      ]
    }
