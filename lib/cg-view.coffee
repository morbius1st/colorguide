_ = require 'underscore-plus'
{Disposable, Directory} = require 'atom'
{ScrollView} = require 'atom-space-pen-views'
ColorguideUiView = require './cg-ui-view'
ColorguideSyntaxView = require './cg-syntax-view'
ColorguideSynColorView = require './cg-syntax-color-view'
fileUtil = require './file-util'

module.exports =
class ColorguideView extends ScrollView

  pathToThemeSyntaxVariables = null
  pathToThemeSyntax = null

  pathToThemeUIVariables = null
  pathToThemeUI = null

  @content: ->
    @div class: 'colorguide pane-item native-key-bindings', tabindex: -1, =>
      @div class: 'colorguide-panel', =>
        @div class: 'panels', =>
          @subview 'colorguideUiView', new ColorguideUiView(uiPath: pathToThemeUI)
          @subview 'colorguideSyntaxView', new ColorguideSyntaxView(syntaxPath: pathToThemeSyntax)
          @subview 'colorguideSynColorView', new ColorguideSynColorView(syntaxPath: pathToThemeSyntax)

  constructor: () ->
    pathToThemeUI = fileUtil.getRealPath(@getActiveUiTheme())
    pathToThemeSyntax = fileUtil.getRealPath(@getActiveSyntaxTheme())
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
