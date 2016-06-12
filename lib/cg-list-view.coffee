{$, $$, View} = require 'atom-space-pen-views'
spExten = require './space-pen-extensions'
cgSyntaxVars = require './cg-variables-syntax-required'
colorUtil = require './color-util'

module.exports =
class ColorguideListView extends View

  itemInfoReqd = null

  @content: ->
    @div class: 'tool-panel padded package-panel', =>
      @div class: 'inset-panel', =>
        @h2 'Syntax Theme Colors'
        @h3 outlet: 'title'
        @div class: 'panel-body', =>
          @div class: 'bar', ''
          @button 'data-name': 'officialSynVariables', class: 'btn-division-header', click: 'toggle', 'Official Syntax Variables'
          @div id: 'officialSynVariables', class: 'atom-panel top padded-right bordered', =>
            itemInfoReqd = @addListItems(cgSyntaxVars.syntaxVarsReqd(),
                          cgSyntaxVars.syntaxVarsReqdGroups(),
                          cgSyntaxVars.syntaxVarsReqdCategories())

        @div class: 'bar', ''
        @button 'data-name': 'customVariables', class: 'btn-division-header', click: 'toggle','Custom Syntax Variables'
        @div id: 'customVariables', class: 'atom-panel top padded-right bordered', =>
          @button class: 'btn btn-section-header', 'New Syntax Variables'
          @ul id: 'test3', class: 'list-category', =>
            @li class: 'list-color',  =>
              @div class: 'is-color bracket-matcher-border-color', attached: 'winLoad', '@bracket-matcher-border-color'

  initialize: ->

  toggle: (event, element) ->
    leId = '#' + element.attr('data-name')

    if ($(leId).hasClass('hide'))
      $(leId).removeClass('hide')
    else
      $(leId).addClass('hide')

  attached: ->
    for i in [1 ... itemInfoReqd.itemCount] by 1
      colorUtil.showColorValues('#' + itemInfoReqd.itemPrefix + i)
