{$, $$, View} = require 'atom-space-pen-views'
spExten = require './space-pen-extensions'
cgUiVars = require './cg-variables-ui-required'
colorUtil = require './color-util'
fileUtil = require './file-util'

module.exports =
class ColorguideUiView extends View

  itemInfoReqd = null
  itemInfoCustom = null

  pathToUiTheme = null

  uiVarsCustom = null
  uiVarsCustomGroups = null
  uiVarsCustomCategories = null

  @content: (params) ->
    @div class: 'tool-panel padded package-panel', =>
      @div class: 'inset-panel', =>
        @h2 'Ui Theme Colors'
        @h3 'Ui Theme Path: ' + pathToUiTheme
        @div class: 'panel-body', =>
          @div class: 'bar', ''
          @button 'data-name': 'officialUiVariables', class: 'btn-division-header', click: 'toggle', 'Official Ui Variables'
          @div id: 'officialUiVariables', class: 'atom-panel top padded-right bordered', =>
            itemInfoReqd = @addListItems(cgUiVars.uiVarsReqd(),
                          cgUiVars.uiVarsReqdGroups(),
                          cgUiVars.uiVarsReqdCategories(), 'reqdui')

        @div class: 'bar', ''
        @button 'data-name': 'customUiVariables', class: 'btn-division-header', click: 'toggle','Custom Ui Variables'
        @div id: 'customUiVariables', class: 'atom-panel top padded-right bordered', =>
          itemInfoCustom = @addListItems(uiVarsCustom,
                          uiVarsCustomGroups,
                          uiVarsCustomCategories, 'custui')


  constructor: (params) ->
    uiVarsCustom = null
    uiVarsCustomGroups = null
    uiVarsCustomCategories = null
    fileNameThemeUiVariables = 'cg-variables-ui-custom.coffee'
    pathToUiTheme = params.uiPath

    relativePathToUiTheme = fileUtil.findActiveThemeVariables(pathToUiTheme, fileNameThemeUiVariables)

    if relativePathToUiTheme != ''
      cgUiVarsCustom = require relativePathToUiTheme

      uiVarsCustom = cgUiVarsCustom.uiVarsCustom()
      uiVarsCustomGroups = cgUiVarsCustom.uiVarsCustomGroups()
      uiVarsCustomCategories = cgUiVarsCustom.uiVarsCustomCategories()


    super

  initialize: ->

  toggle: (event, element) ->
    leId = '#' + element.attr('data-name')

    if ($(leId).hasClass('hide'))
      $(leId).removeClass('hide')
    else
      $(leId).addClass('hide')

  toggle2: (event, element) ->
    leClass = '.' + element.attr('data-name')

    if ($(leClass).hasClass('hide'))
      $(leClass).removeClass('hide')
    else
      $(leClass).addClass('hide')

  attached: ->
    if itemInfoReqd.itemCount > 0
      for i in [1 ... itemInfoReqd.itemCount] by 1
        colorUtil.showColorValues('#' + itemInfoReqd.itemPrefix + i)

    if itemInfoCustom.itemCount > 0
      for i in [1 ... itemInfoCustom.itemCount] by 1
        colorUtil.showColorValues('#' + itemInfoCustom.itemPrefix + i)
