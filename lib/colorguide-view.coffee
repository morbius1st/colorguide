_ = require 'underscore-plus'
{Disposable} = require 'atom'
{ScrollView} = require 'atom-space-pen-views'
# CachePanelView = require './cache-panel-view'
# PackagePanelView = require './package-panel-view'
# WindowPanelView = require './window-panel-view'
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

  #
  # onDidChangeTitle: -> new Disposable ->
  # onDidChangeModified: -> new Disposable ->

  initialize: ({@uri}) ->
    ThemePathUi = @getActiveUiTheme()
    @colorGuideViewPanel.title.text """UI Theme Path: #{ThemePathUi}"""

    ThemePathSyntax = @getActiveSyntaxTheme()
    @colorGuideView.title.text """Syntax Theme Path: #{ThemePathSyntax}"""

  #
  #   if atom.packages.getActivePackages().length > 0
  #     @populateViews()
  #   else
  #     # Render on next tick so packages have been activated
  #     setImmediate => @populateViews()
  #
  # populateViews: ->
  #   @windowLoadingPanel.populate()
  #   @cacheLoadingPanel.populate()
  #   # @showLoadedPackages()
  #   # @showActivePackages()
  #   # @showLoadedThemes()
  #   # @showActiveThemes()
  #
  # getSlowPackages: (packages, timeKey) ->
  #   time = 0
  #   count = 0
  #   packages = packages.filter (pack) ->
  #     time += pack[timeKey]
  #     count++
  #     pack[timeKey] > 5
  #   packages.sort (pack1, pack2) -> pack2[timeKey] - pack1[timeKey]
  #   {time, count, packages}
  #
  # showLoadedPackages: ->
  #   packages = atom.packages.getLoadedPackages().filter (pack) ->
  #     pack.getType() isnt 'theme'
  #   {time, count, packages} = @getSlowPackages(packages, 'loadTime')
  #   @packageLoadingPanel.addPackages(packages, 'loadTime')
  #   @packageLoadingPanel.summary.text """
  #     Loaded #{count} packages in #{time}ms.
  #     #{_.pluralize(packages.length, 'package')} took longer than 5ms to load.
  #   """
  #
  # showActivePackages: ->
  #   packages = atom.packages.getActivePackages().filter (pack) ->
  #     pack.getType() isnt 'theme'
  #   {time, count, packages} = @getSlowPackages(packages, 'activateTime')
  #   @packageActivationPanel.addPackages(packages, 'activateTime')
  #   @packageActivationPanel.summary.text """
  #     Activated #{count} packages in #{time}ms.
  #     #{_.pluralize(packages.length, 'package')} took longer than 5ms to activate.
  #   """
  #
  # showLoadedThemes: ->
  #   {time, count, packages} = @getSlowPackages(atom.themes.getLoadedThemes(), 'loadTime')
  #   @themeLoadingPanel.addPackages(packages, 'loadTime')
  #   @themeLoadingPanel.summary.text """
  #     Loaded #{count} themes in #{time}ms.
  #     #{_.pluralize(packages.length, 'theme')} took longer than 5ms to load.
  #   """
  #
  # showActiveThemes: ->
  #   {time, count, packages} = @getSlowPackages(atom.themes.getActiveThemes(), 'activateTime')
  #   @themeActivationPanel.addPackages(packages, 'activateTime')
  #   themeUI = @getActiveUiTheme()
  #   themeSyn= @getActiveSyntaxTheme()
  #   @themeActivationPanel.themeUITitle.text """UI Theme Path:"""
  #   @themeActivationPanel.themeUIPath.text """#{themeUI}"""
  #   @themeActivationPanel.themeSyntaxTitle.text """Syntax Theme Path:"""
  #   @themeActivationPanel.themeSyntaxPath.text """#{themeSyn}"""
  #   @themeActivationPanel.summary.text """
  #     Activated #{count} themes in #{time}ms.
  #     #{_.pluralize(packages.length, 'theme')} took longer than 5ms to activate.
  #   """

  serialize: ->
    deserializer: @constructor.name
    uri: @getURI()

  getURI: -> @uri

  getTitle: -> 'Colorguide'

  # getIconName: -> 'dashboard'
  #
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
