_ = require 'underscore-plus'
{Disposable} = require 'atom'
{ScrollView} = require 'atom-space-pen-views'
ColorguideUiView = require './colorguide-ui-view'
ColorguideSyntaxView = require './colorguide-syntax-view'

module.exports =
class ColorguideView extends ScrollView
  @content: ->
    @div class: 'colorguide pane-item native-key-bindings', tabindex: -1, =>
      @div class: 'colorguide-panel', =>
        @div class: 'panels', =>
          @subview 'colorGuideViewPanel', new ColorguideUiView()
          @subview 'colorGuideView', new ColorguideSyntaxView()

  initialize: ({@uri}) ->
    ThemePathUi = @getActiveUiTheme()
    @colorGuideViewPanel.title.text """UI Theme Path: #{ThemePathUi}"""

    ThemePathSyntax = @getActiveSyntaxTheme()
    @colorGuideView.title.text """Syntax Theme Path: #{ThemePathSyntax}"""

  serialize: ->
    deserializer: @constructor.name
    uri: @getURI()

  getURI: -> @uri

  getTitle: -> 'Colorguide'

    # Get the name of the active ui theme.
  getActiveUiTheme: ->
    for {path, metadata} in atom.themes.getActiveThemes()
      return path if metadata.theme is 'ui'
    null

  # Get the name of the active syntax theme.
  getActiveSyntaxTheme: ->
    for {path, metadata} in atom.themes.getActiveThemes()
      return path if metadata.theme is 'syntax'
    null
