{$, $$, View} = require 'atom-space-pen-views'
spExten = require './space-pen-extensions'
colorUtil = require './color-util'
fileUtil = require './file-util'

module.exports =
class ColorguideSynColorView extends View

  itemInfoReqd = null
  itemInfoColorVars = null

  pathToSyntaxTheme = null

  syntaxColorVars = null
  syntaxColorVarsGroups = null
  syntaxColorVarsCategories = null

  @content: (params) ->
    @div class: 'tool-panel padded package-panel', =>
      @div class: 'inset-panel', =>
        @h2 'Syntax Defined Colors'
        @h4 'Path: ' + pathToSyntaxTheme
        @div class: 'panel-body', =>
          @div class: 'bar', ''
          @button 'data-name': 'syntaxcolors', class: 'btn-division-header', click: 'toggle', 'Syntax Defined Colors'
          @div id: 'syntaxcolors', class: 'atom-panel top padded-right bordered', =>
            itemInfoColorVars = @addListItems(syntaxColorVars,
                            syntaxColorVarsGroups,
                            syntaxColorVarsCategories, 'colorsyn')


  constructor: (params) ->
    syntaxColorVars = null
    syntaxColorVarsGroups = null
    syntaxColorVarsCategories = null
    fileNameThemeSyntaxColors = 'cg-variables-syntax-colors.coffee'
    pathToSyntaxTheme = params.syntaxPath

    relativePathToSyntaxTheme = fileUtil.findActiveThemeVariables(pathToSyntaxTheme, fileNameThemeSyntaxColors)

    if relativePathToSyntaxTheme != ''
      cgSyntaxColorVars = require relativePathToSyntaxTheme

      syntaxColorVars = cgSyntaxColorVars.syntaxColorVars()
      syntaxColorVarsGroups = cgSyntaxColorVars.syntaxColorGroups()
      syntaxColorVarsCategories = cgSyntaxColorVars.syntaxColorCategories()


    super

  initialize: ->


  toggle2: (event, element) ->
    leClass = '.' + element.attr('data-name')

    if ($(leClass).hasClass('hide'))
      $(leClass).removeClass('hide')
    else
      $(leClass).addClass('hide')

  toggle: (event, element) ->
    leId = '#' + element.attr('data-name')

    if ($(leId).hasClass('hide'))
      $(leId).removeClass('hide')
    else
      $(leId).addClass('hide')


  attached: ->
    if itemInfoColorVars.itemCount > 0
      for i in [1 ... itemInfoColorVars.itemCount] by 1
        colorUtil.showColorValues('#' + itemInfoColorVars.itemPrefix + i)
