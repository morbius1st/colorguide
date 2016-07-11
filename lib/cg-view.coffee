{$, $$, View} = require 'atom-space-pen-views'
spExten = require './space-pen-extensions'
fileUtil = require './file-util'
{Directory} = require 'atom'

module.exports =
class ColorguideUiView extends View

  itemInfo = []

  itemInfoPartA = null
  itemInfoPartB = null
  pathToTheme = null

  divisionTitle = null
  divisionSubTitle = null

  dataNameA = null
  titleA = null
  prefixA = null
  varsA = null

  dataNameB = null
  titleB = null
  prefixB = null
  varsB = null

  partA = null
  partB = null

  @content: ->
    @div class: 'tool-panel padded package-panel', =>
      @div class: 'inset-panel', =>
        @h2 divisionTitle
        @h4 divisionSubTitle
        @div class: 'panel-body', =>
          @div class: 'bar', ''
          @button 'data-name': dataNameA, class: 'btn-division-header', click: 'toggle', titleA
          @div id: dataNameA, class: 'atom-panel top padded-right bordered', =>
            itemInfo.push @addListItems(varsA.variables(),
                          varsA.groups(), varsA.categories(), prefixA)

        @div class: 'panel-body', =>
          @div class: 'bar', ''
          @button 'data-name': dataNameB, class: 'btn-division-header', click: 'toggle', titleB
          @div id: dataNameB, class: 'atom-panel top padded-right bordered', =>
            itemInfo.push @addListItems(varsB.variables(),
                            varsB.groups(), varsB.categories(), prefixB)

  constructor: (params) ->

    divisionTitle = params.title
    divisionSubTitle = params.subTitle

    itemInfoPartA = null
    itemInfoPartB = null

    partA = params.partA
    partB = params.partB
    varsA = null
    varsB = null

    fileLocationA = fileUtil.findVariables(partA.folder, partA.fileName)
    fileLocationB = fileUtil.findVariables(partB.folder, partB.fileName)

    dataNameA = partA.prefix + 'Vars'
    titleA = partA.title
    prefixA = partA.prefix

    if fileLocationA != ''
      varsA = require fileLocationA

    dataNameB = partB.prefix + 'Vars'
    titleB = partB.title
    prefixB = partB.prefix

    if fileLocationB != ''
      varsB = require fileLocationB

    super

  getItemInfo: ->
    itemInfo

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

  # attached: ->
    # window.alert('at attached' + '\n' +
    #   'count: ' + intCount + '\n' +
    #   'A count: ' + itemInfoPartA.itemCount  + '\n' +
    #   'A prefix: ' + itemInfoPartA.itemPrefix   + '\n' +
    #   'B count: ' + itemInfoPartB.itemCount  + '\n' +
    #   'B prefix: ' + itemInfoPartB.itemPrefix
    #   )

    # if itemInfoPartA.itemCount > 0
    #   for i in [1 ... itemInfoPartA.itemCount] by 1
    #     colorUtil.showColorValues('#' + itemInfoPartA.itemPrefix + i)
    #
    # if itemInfoPartB.itemCount > 0
    #   for i in [1 ... itemInfoPartB.itemCount] by 1
    #     colorUtil.showColorValues('#' + itemInfoPartB.itemPrefix + i)
