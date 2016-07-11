_ = require 'underscore-plus'
{Disposable, Directory} = require 'atom'
{ScrollView} = require 'atom-space-pen-views'
ColorguideView = require './cg-view'
cgViewInfo = require './cg-view-info'
fileUtil = require './file-util'
colorUtil = require './color-util'

module.exports =
class ColorguideViews extends ScrollView

  syntaxPathToThemeVariables = null
  syntaxPathToTheme = null

  # ui information
  uiTitle = null
  uiSubTitle = null
  uiPartA = null;
  uiPartB = null;

  # syntax information
  syntaxTitle = null
  syntaxSubTitle = null
  syntaxPartA = null;
  syntaxPartB = null;

  # color information
  colorTitle = null
  colorSubTitle = null
  colorPartA = null;
  colorPartB = null;

  @content: ->
    @div class: 'colorguide pane-item native-key-bindings', tabindex: -1, =>
      @div class: 'colorguide-panel', =>
        @div class: 'panels', =>
          @subview 'colorguideView1', new ColorguideView(title: uiTitle, subTitle: uiSubTitle, partA: uiPartA, partB: uiPartB);
          @subview 'colorguideView2', new ColorguideView(title: syntaxTitle, subTitle: syntaxSubTitle, partA: syntaxPartA, partB: syntaxPartB);
          @subview 'colorguideView3', new ColorguideView(title: colorTitle, subTitle: colorSubTitle, partA: colorPartA, partB: colorPartB);

  constructor: () ->

    uiPathToTheme = fileUtil.getRealPath(@getActiveUiTheme())
    syntaxPathToTheme = fileUtil.getRealPath(@getActiveSyntaxTheme())

    uiTitle = 'Ui Theme Variables'
    uiSubTitle = 'Path: ' + uiPathToTheme
    uiPartA = new cgViewInfo('Official Ui Variables', 'uiReqd', __dirname, 'cg-variables-ui-required.coffee');
    uiPartB = new cgViewInfo('Custom Ui Variables', 'uiCust', uiPathToTheme, 'cg-variables-ui-custom.coffee');

    syntaxTitle = 'Syntax Theme Variables'
    syntaxSubTitle = 'Path: ' + syntaxPathToTheme
    syntaxPartA = new cgViewInfo('Official Syntax Variables', 'syntaxReqd', __dirname, 'cg-variables-syntax-required.coffee');
    syntaxPartB = new cgViewInfo('Custom Syntax Variables', 'syntaxCust', syntaxPathToTheme, 'cg-variables-syntax-custom.coffee');

    colorTitle = 'Theme Defined Colors'
    colorSubTitle = '\u00A0'
    colorPartA = new cgViewInfo('Ui Theme Defined Colors', 'uiColor', uiPathToTheme, 'cg-variables-ui-colors.coffee')
    colorPartB = new cgViewInfo('Syntax Theme Defined Colors', 'syntaxColor', syntaxPathToTheme, 'cg-variables-syntax-colors.coffee')

    super

  initialize: ({@uri}) ->
    super

  serialize: ->
    deserializer: @constructor.name
    uri: @getURI()

  getURI: -> @uri

  getTitle: -> 'Colorguide'

    # Get the name of the active ui theme.
  getActiveUiTheme: () ->
    for {path, metadata} in atom.themes.getActiveThemes()
      return path if metadata.theme is 'ui'
    null

  # Get the name of the active syntax theme.
  getActiveSyntaxTheme: () ->
    for {path, metadata} in atom.themes.getActiveThemes()
      return path if metadata.theme is 'syntax'
    null

  attached: ->
    for info in @colorguideView1.getItemInfo()
      if info.itemCount > 0
        for i in [ 1 ... info.itemCount] by 1
          colorUtil.showColorValues('#' + info.itemPrefix + i)
