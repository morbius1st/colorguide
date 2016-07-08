# cgVarColor = require './cg-variable-color'
#

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

  uiVarsReqdGroups: () ->
    {
      GRPu1: {key: 'GRPu1', value:    0, description: 'General Colors'}
      GRPu2: {key: 'GRPu2', value: 1000, description: 'Component Colors'}
    }

  uiVarsReqdCategories: () ->
    count = 1
    {
      CATu1:  {key: 'CATu1',  value: count++, description: 'Text Colors'}
      CATu2:  {key: 'CATu2',  value: count++, description: 'Background Colors'}
      CATu11:  {key: 'CATu11',  value: count++, description: 'Base Colors'}
      CATu12:  {key: 'CATu12',  value: count++, description: 'Pane Item Colors'}
      CATu13:  {key: 'CATu13',  value: count++, description: 'Input Colors'}
      CATu14:  {key: 'CATu14',  value: count++, description: 'Tool Panel Colors'}
      CATu15:  {key: 'CATu15',  value: count++, description: 'Inset Panel Colors'}
      CATu16:  {key: 'CATu16',  value: count++, description: 'Panel Heading Colors'}
      CATu17:  {key: 'CATu17',  value: count++, description: 'Overlay Colors'}
      CATu18:  {key: 'CATu18',  value: count++, description: 'Button Colors'}
      CATu19:  {key: 'CATu19',  value: count++, description: 'Tab Bar Colors'}
      CATu20:  {key: 'CATu20',  value: count++, description: 'Tree View Colors'}
      CATu21:  {key: 'CATu21',  value: count++, description: 'Ui Site Colors'}

    }

  uiVarsReqd: () ->
    g = @uiVarsReqdGroups()
    c = @uiVarsReqdCategories()

    {variables:
      [
        # general / text colors
        new cgVarColor(0.010, g.GRPu1.key, c.CATu1.key, 'text-color', 'General Text Color'),
        new cgVarColor(0.020, g.GRPu1.key, c.CATu1.key, 'text-color-subtle', 'General Text Color - Subtle'),
        new cgVarColor(0.030, g.GRPu1.key, c.CATu1.key, 'text-color-highlight', 'General Text Color - Highlight'),
        new cgVarColor(0.040, g.GRPu1.key, c.CATu1.key, 'text-color-selected', 'General Text Color - Selected'),
        new cgVarColor(0.050, g.GRPu1.key, c.CATu1.key, 'text-color-info', 'General Text Color - Info (Blue)'),
        new cgVarColor(0.060, g.GRPu1.key, c.CATu1.key, 'text-color-success', 'General Text Color - Success (Green)'),
        new cgVarColor(0.070, g.GRPu1.key, c.CATu1.key, 'text-color-warning', 'General Text Color - Warning\n(Yellow or Orange)'),
        new cgVarColor(0.080, g.GRPu1.key, c.CATu1.key, 'text-color-error', 'General Text Color - Error (Red)'),
        # general / background colors
        new cgVarColor(0.010, g.GRPu1.key, c.CATu2.key, 'background-color-info', 'Background Color - Info (Blue)'),
        new cgVarColor(0.020, g.GRPu1.key, c.CATu2.key, 'background-color-success', 'Background Color - Success (Green)'),
        new cgVarColor(0.030, g.GRPu1.key, c.CATu2.key, 'background-color-warning', 'Background Color - Warning (Yellow or Orange)'),
        new cgVarColor(0.040, g.GRPu1.key, c.CATu2.key, 'background-color-error', 'Background Color - Error (Red)'),
        new cgVarColor(0.050, g.GRPu1.key, c.CATu2.key, 'background-color-highlight', 'Background Color - Highlight'),
        new cgVarColor(0.060, g.GRPu1.key, c.CATu2.key, 'background-color-selected', 'Background Color - Selected'),
        new cgVarColor(0.070, g.GRPu1.key, c.CATu2.key, 'app-background-color', 'The app’s background under all the editor components'),
        # component / base
        new cgVarColor(0.010, g.GRPu2.key, c.CATu11.key, 'base-background-color', ''),
        new cgVarColor(0.020, g.GRPu2.key, c.CATu11.key, 'base-border-color', ''),
        # component / pane
        new cgVarColor(0.010, g.GRPu2.key, c.CATu12.key, 'pane-item-background-color', ''),
        new cgVarColor(0.020, g.GRPu2.key, c.CATu12.key, 'pane-item-border-color', ''),
        # component / input
        new cgVarColor(0.010, g.GRPu2.key, c.CATu13.key, 'input-background-color', ''),
        new cgVarColor(0.020, g.GRPu2.key, c.CATu13.key, 'input-border-color', ''),
        # component / tool panel
        new cgVarColor(0.010, g.GRPu2.key, c.CATu14.key, 'tool-panel-background-color', ''),
        new cgVarColor(0.020, g.GRPu2.key, c.CATu14.key, 'tool-panel-border-color', ''),
        # component / inset panel
        new cgVarColor(0.010, g.GRPu2.key, c.CATu15.key, 'inset-panel-background-color', ''),
        new cgVarColor(0.020, g.GRPu2.key, c.CATu15.key, 'inset-panel-border-color', ''),
        # component / panel heading
        new cgVarColor(0.010, g.GRPu2.key, c.CATu16.key, 'panel-heading-background-color', ''),
        new cgVarColor(0.020, g.GRPu2.key, c.CATu16.key, 'panel-heading-border-color', ''),
        # component / overlay
        new cgVarColor(0.010, g.GRPu2.key, c.CATu17.key, 'overlay-background-color', ''),
        new cgVarColor(0.020, g.GRPu2.key, c.CATu17.key, 'overlay-border-color', ''),
        # component / button
        new cgVarColor(0.010, g.GRPu2.key, c.CATu18.key, 'button-background-color', ''),
        new cgVarColor(0.020, g.GRPu2.key, c.CATu18.key, 'button-background-color-hover', ''),
        new cgVarColor(0.030, g.GRPu2.key, c.CATu18.key, 'button-background-color-selected', ''),
        new cgVarColor(0.040, g.GRPu2.key, c.CATu18.key, 'button-border-color', ''),
        # component / tab bar
        new cgVarColor(0.010, g.GRPu2.key, c.CATu19.key, 'tab-bar-background-color', ''),
        new cgVarColor(0.020, g.GRPu2.key, c.CATu19.key, 'tab-bar-border-color', ''),
        new cgVarColor(0.030, g.GRPu2.key, c.CATu19.key, 'tab-background-color', ''),
        new cgVarColor(0.040, g.GRPu2.key, c.CATu19.key, 'tab-background-color-active', ''),
        new cgVarColor(0.050, g.GRPu2.key, c.CATu19.key, 'tab-border-color', ''),
        # component / tree view
        new cgVarColor(0.010, g.GRPu2.key, c.CATu20.key, 'tree-view-background-color', ''),
        new cgVarColor(0.020, g.GRPu2.key, c.CATu20.key, 'tree-view-border-color', ''),
        # component / ui-site
        new cgVarColor(0.010, g.GRPu2.key, c.CATu21.key, 'ui-site-color-1', ''),
        new cgVarColor(0.020, g.GRPu2.key, c.CATu21.key, 'ui-site-color-2', ''),
        new cgVarColor(0.030, g.GRPu2.key, c.CATu21.key, 'ui-site-color-3', ''),
        new cgVarColor(0.040, g.GRPu2.key, c.CATu21.key, 'ui-site-color-4', ''),
        new cgVarColor(0.050, g.GRPu2.key, c.CATu21.key, 'ui-site-color-5', '')
      ]
    }
