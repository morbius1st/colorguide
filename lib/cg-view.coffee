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
  divisionDescription = null

  dataNameA = null
  titleA = null
  prefixA = null
  varsA = null
  versionA = null

  dataNameB = null
  titleB = null
  prefixB = null
  varsB = null
  versionB = null

  partA = null
  partB = null

  @content: ->
    @div class: 'tool-panel padded package-panel', =>
      @div class: 'inset-panel', =>
        @h2 divisionTitle
        @h4 divisionSubTitle
        @h4 divisionDescription

        itemInfo.push @addPanel(titleA, dataNameA, varsA, prefixA, versionA)
        itemInfo.push @addPanel(titleB, dataNameB, varsB, prefixB, versionB)

  constructor: (params) ->

    divisionTitle = params.title
    divisionSubTitle = params.subTitle
    divisionDescription = params.description

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
    versionA = partA.version

    if fileLocationA != ''
      varsA = require fileLocationA

    dataNameB = partB.prefix + 'Vars'
    titleB = partB.title
    prefixB = partB.prefix
    versionB = partB.version

    if fileLocationB != ''
      varsB = require fileLocationB

    super

  getItemInfo: ->
    itemInfo

  resetItemInfo: ->
    itemInfo = []

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
