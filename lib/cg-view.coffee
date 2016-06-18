_ = require 'underscore-plus'
{Disposable, Directory} = require 'atom'
{ScrollView} = require 'atom-space-pen-views'
ColorguideUiView = require './cg-ui-view'
ColorguideListView = require './cg-list-view'
fileUtil = require './file-util'

module.exports =
class ColorguideView extends ScrollView

  pathToThemeSyntaxVariables = null
  pathToThemeSyntax = null

  pathToThemeUIVariables = null

  @content: ->
    @div class: 'colorguide pane-item native-key-bindings', tabindex: -1, =>
      @div class: 'colorguide-panel', =>
        @div class: 'panels', =>
          # @subview 'colorguideUiView', new ColorguideUiView()
          @subview 'colorguideListView', new ColorguideListView(syntaxPath: pathToThemeSyntax)

  constructor: () ->
    pathToThemeUI = fileUtil.getRealPath(@getActiveUiTheme())
    pathToThemeSyntax = fileUtil.getRealPath(@getActiveSyntaxTheme())
    super

  initialize: ({@uri}) ->
    super

    # @colorguideUiView.title.text """UI Theme Path: #{pathToThemeUI}"""

    # pathToThemeSyntax = @getActiveSyntaxTheme()

    # @colorguideListView.title.text """Syntax Theme Path: #{pathToThemeSyntax}"""

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
