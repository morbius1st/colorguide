{$$, View} = require 'atom-space-pen-views'
$ = jQuery = require 'jquery'

require './space-pen-extensions'

cgSyntaxVars = require './cg-variables-syntax-required2'
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

            # @button 'data-name': 'genColors', class: 'btn btn-section-header syntax-cursor-color', click: 'toggle', 'General Color'
            # @div id: 'genColors', outlet: 'list', class: 'list-category', =>
            itemInfoReqd = @addListItems(cgSyntaxVars.syntaxVarsReqd(),
                          cgSyntaxVars.syntaxVarsReqdGroups(),
                          cgSyntaxVars.syntaxVarsReqdCategories())

            #
            # @ul id: 'genColors', outlet: 'list2', class: 'list-category', =>
            #   @li class: 'list-color', =>
            #     @div class: 'is-color syntax-text-color', '@syntax-text-color'
            #   @li class: 'list-color', =>
            #     @div class: 'is-color syntax-cursor-color', '@syntax-cursor-color'
            #   @li class: 'list-color', =>
            #     @div class: "is-color syntax-selection-color", '@syntax-selection-color'
            #   @li class: 'list-color', =>
            #     @div class: "is-color syntax-selection-flash-color", '@syntax-selection-flash-color'
            #   @li class: 'list-color', =>
            #     @div class: 'is-color-blank'
            #   @li class: 'list-color', =>
            #     @div id: "li5", class: "is-color syntax-background-color", '@syntax-background-color'
            #   @li class: 'list-color', =>
            #     @div id: "li6", class: 'is-color syntax-invisible-character-color', '@syntax-invisible-character-color'
            #
            # @button 'data-name': 'guideColors', class: 'btn btn-section-header', click: 'toggle', 'Guide Colors'
            # @ul id: 'guideColors', class: 'list-category', =>
            #   @li class: 'list-color', =>
            #     @div class: 'is-color syntax-wrap-guide-color', '@syntax-wrap-guide-color'
            #   @li class: 'list-color', =>
            #     @div class: 'is-color syntax-indent-guide-color', '@syntax-indent-guide-color'
            #
            # @button 'data-name': 'findColors', class: 'btn btn-section-header', click: 'toggle', 'Find and Replace Colors'
            # @ul id: 'findColors', class: 'list-category', =>
            #   @li class: 'list-color', =>
            #     @div class: 'is-color syntax-result-marker-color', '@syntax-result-marker-color'
            #   @li class: 'list-color', =>
            #     @div class: 'is-color syntax-result-marker-color-selected', '@syntax-result-marker-color-selected'
            #
            # @button 'data-name': 'gutterColors', class: 'btn btn-section-header', click: 'toggle', 'Gutter Colors'
            # @ul id: 'gutterColors', class: 'list-category', =>
            #   @li class: 'list-color', =>
            #     @div class: 'is-color syntax-gutter-text-color', '@syntax-gutter-text-color'
            #   @li class: 'list-color', =>
            #     @div class: 'is-color syntax-gutter-text-color-selected', '@syntax-gutter-text-color-selected'
            #   @li class: 'list-color', =>
            #     @div class: 'is-color syntax-gutter-background-color', '@syntax-gutter-background-color'
            #   @li class: 'list-color', =>
            #     @div class: 'is-color syntax-gutter-background-color-selected', '@syntax-gutter-background-color-selected'
            #
            # @button 'data-name': 'gitColors', class: 'btn btn-section-header', click: 'toggle', 'Git Colors'
            # @ul id: 'gitColors', class: 'list-category', =>
            #   @li class: 'list-color', =>
            #     @div class: 'is-color syntax-color-renamed', '@syntax-color-renamed'
            #   @li class: 'list-color', =>
            #     @div class: 'is-color syntax-color-added', '@syntax-color-added'
            #   @li class: 'list-color', =>
            #     @div class: 'is-color syntax-color-modified', '@syntax-color-modified'
            #   @li class: 'list-color', =>
            #     @div class: 'is-color syntax-color-removed', '@syntax-color-removed'


        # @div class: 'bar', ''
        # @button 'data-name': 'basicLanguageVariables', class: 'btn-division-header', click: 'toggle', 'Basic Language Variables'
        # @div id: 'basicLanguageVariables', class: 'atom-panel top padded-right bordered', =>
        #
        #   # @button 'data-name': 'languageColors', class: 'btn btn-section-header', click: 'toggle', 'Language Entity Colors'
        #   @ul id: 'languageVariables', class: 'list-category', =>
        #     @li class: 'list-color', =>
        #       @div class: 'is-color syntax-color-variable', '@syntax-color-variable'
        #     @li class: 'list-color', =>
        #       @div class: 'is-color syntax-color-constant', '@syntax-color-constant'
        #     @li class: 'list-color', =>
        #       @div class: 'is-color syntax-color-property', '@syntax-color-property'
        #     @li class: 'list-color', =>
        #       @div class: 'is-color syntax-color-value', '@syntax-color-value'
        #     @li class: 'list-color', =>
        #       @div class: 'is-color syntax-color-function', '@syntax-color-function'
        #     @li class: 'list-color', =>
        #       @div class: 'is-color syntax-color-method', '@syntax-color-method'
        #     @li class: 'list-color', =>
        #       @div class: 'is-color syntax-color-class', '@syntax-color-class'
        #     @li class: 'list-color', =>
        #       @div class: 'is-color syntax-color-keyword', '@syntax-color-keyword'
        #     @li class: 'list-color', =>
        #       @div class: 'is-color syntax-color-tag', '@syntax-color-tag'
        #     @li class: 'list-color', =>
        #       @div class: 'is-color syntax-color-attribute', '@syntax-color-attribute'
        #     @li class: 'list-color', =>
        #       @div class: 'is-color syntax-color-import', '@syntax-color-import'
        #     @li class: 'list-color', =>
        #       @div class: 'is-color syntax-color-snippet', '@syntax-color-snippet'

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

  winTest3: (elem) ->
    bgColor = $(elem + 'x').css('background-color')
    # window.alert(elem + ' : ' + bgColor,'element - color')
    bgColor = colorUtil.formatColor(bgColor)
    elemText = $(elem).text() + '\n' + bgColor
    $(elem).text(elemText)

  attached: ->
    for i in [1 ... itemInfoReqd.itemCount] by 1
      @winTest3('#' + itemInfoReqd.itemPrefix + i)
