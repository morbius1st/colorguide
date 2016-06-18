{$, $$, View} = require 'atom-space-pen-views'
spExten = require './space-pen-extensions'
cgSyntaxVars = require './cg-variables-syntax-required'
colorUtil = require './color-util'
fileUtil = require './file-util'

module.exports =
class ColorguideListView extends View

  itemInfoReqd = null
  itemInfoCustom = null

  pathToSyntaxTheme = null

  syntaxVarsCustom = null
  syntaxVarsCustomGroups = null
  syntaxVarsCustomCategories = null

  @content: (params) ->
    @div class: 'tool-panel padded package-panel', =>
      @div class: 'inset-panel', =>
        @h2 'Syntax Theme Colors'
        @h3 'Syntax Theme Path: ' + pathToSyntaxTheme
        @div class: 'panel-body', =>
          @div class: 'bar', ''
          @button 'data-name': 'officialSynVariables', class: 'btn-division-header', click: 'toggle', 'Official Syntax Variables'
          @div id: 'officialSynVariables', class: 'atom-panel top padded-right bordered', =>
            itemInfoReqd = @addListItems(cgSyntaxVars.syntaxVarsReqd(),
                          cgSyntaxVars.syntaxVarsReqdGroups(),
                          cgSyntaxVars.syntaxVarsReqdCategories(), 'reqd')

        @div class: 'bar', ''
        @button 'data-name': 'customSyntaxVariables', class: 'btn-division-header', click: 'toggle','Custom Syntax Variables'
        @div id: 'customSyntaxVariables', class: 'atom-panel top padded-right bordered', =>
          itemInfoCustom = @addListItems(syntaxVarsCustom,
                          syntaxVarsCustomGroups,
                          syntaxVarsCustomCategories, 'cust')


  constructor: (params) ->
    fileNameThemeSyntaxVariables = 'cg-variables-syntax-custom.coffee'
    pathToSyntaxTheme = params.syntaxPath

    relativePathToSyntaxTheme = fileUtil.findActiveThemeVariables(pathToSyntaxTheme, fileNameThemeSyntaxVariables)

    if relativePathToSyntaxTheme != ''
      cgSyntaxVarsCustom = require relativePathToSyntaxTheme

      syntaxVarsCustom = cgSyntaxVarsCustom.syntaxVarsCustom()
      syntaxVarsCustomGroups = cgSyntaxVarsCustom.syntaxVarsCustomGroups()
      syntaxVarsCustomCategories = cgSyntaxVarsCustom.syntaxVarsCustomCategories()


    super

  initialize: ->

  toggle: (event, element) ->
    leId = '#' + element.attr('data-name')

    if ($(leId).hasClass('hide'))
      $(leId).removeClass('hide')
    else
      $(leId).addClass('hide')

  attached: ->
    if itemInfoReqd.itemCount > 0
      for i in [1 ... itemInfoReqd.itemCount] by 1
        colorUtil.showColorValues('#' + itemInfoReqd.itemPrefix + i)

    if itemInfoCustom.itemCount > 0
      for i in [1 ... itemInfoCustom.itemCount] by 1
        colorUtil.showColorValues('#' + itemInfoCustom.itemPrefix + i)
