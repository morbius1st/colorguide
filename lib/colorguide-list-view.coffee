{$$, View} = require 'atom-space-pen-views'
$ = jQuery = require 'jquery'

module.exports =
class ColorguideListView extends View
  @content: ->
    @div class: 'tool-panel padded package-panel', =>
      @div class: 'inset-panel', =>
        @h2 'Syntax Theme Colors - as a list'
        @h3 outlet: 'title'
        @div class: 'panel-body', =>
          @div class: 'bar', ''
          @button 'data-name': 'officialSynVariables', class: 'btn-division-header', click: 'toggle', 'Official Syntax Variables'
          @div id: 'officialSynVariables', class: 'atom-panel top padded-right bordered', =>

            @button 'data-name': 'genColors', class: 'btn btn-section-header', click: 'toggle', 'General Color'
            @ul id: 'genColors', class: 'list-group', =>
              @li class: 'list-color', =>
                @div class: 'is-color syntax-text-color', '@syntax-text-color'
              @li class: 'list-color', =>
                @div class: 'is-color syntax-cursor-color', '@syntax-cursor-color'
              @li class: 'list-color', =>
                @div class: "is-color syntax-selection-color", '@syntax-selection-color'
              @li class: 'list-color', =>
                @div class: "is-color syntax-selection-flash-color", '@syntax-selection-flash-color'
              @li class: 'list-color', =>
                @div class: "is-color syntax-background-color", '@syntax-background-color'
              @li class: 'list-color', =>
                @div class: 'is-color syntax-invisible-character-color', '@syntax-invisible-character-color'

            @button 'data-name': 'guideColors', class: 'btn btn-section-header', 'Guide Colors'
            @ul id: 'guideColors', class: 'list-group', =>
              @li class: 'list-color', =>
                @div class: 'is-color syntax-wrap-guide-color', '@syntax-wrap-guide-color'
              @li class: 'list-color', =>
                @div class: 'is-color syntax-indent-guide-color', '@syntax-indent-guide-color'

            @button 'data-name': 'findColors', class: 'btn btn-section-header', 'Find and Replace Colors'
            @ul id: 'findColors', class: 'list-group', =>
              @li class: 'list-color', =>
                @div class: 'is-color syntax-result-marker-color', '@syntax-result-marker-color'
              @li class: 'list-color', =>
                @div class: 'is-color syntax-result-marker-color-selected', '@syntax-result-marker-color-selected'

            @button 'data-name': 'gutterColors', class: 'btn btn-section-header', 'Gutter Colors'
            @ul id: 'gutterColors', class: 'list-group', =>
              @li class: 'list-color', =>
                @div class: 'is-color syntax-gutter-text-color', '@syntax-gutter-text-color'
              @li class: 'list-color', =>
                @div class: 'is-color syntax-gutter-text-color-selected', '@syntax-gutter-text-color-selected'
              @li class: 'list-color', =>
                @div class: 'is-color syntax-gutter-background-color', '@syntax-gutter-background-color'
              @li class: 'list-color', =>
                @div class: 'is-color syntax-gutter-background-color-selected', '@syntax-gutter-background-color-selected'

            @button 'data-name': 'gitColors', class: 'btn btn-section-header', 'Git Colors'
            @ul id: 'gitColors', class: 'list-group', =>
              @li class: 'list-color', =>
                @div class: 'is-color syntax-color-renamed', '@syntax-color-renamed'
              @li class: 'list-color', =>
                @div class: 'is-color syntax-color-added', '@syntax-color-added'
              @li class: 'list-color', =>
                @div class: 'is-color syntax-color-modified', '@syntax-color-modified'
              @li class: 'list-color', =>
                @div class: 'is-color syntax-color-removed', '@syntax-color-removed'






          @div class: 'bar', ''
          @button 'data-name': 'customVariables', class: 'btn-division-header', click: 'toggle','Custom Variables'
          @div id: 'customVariables', class: 'atom-panel top padded-right bordered', =>
            @button class: 'btn btn-section-header', 'New Syntax Variables'
            @ul id: 'test3', class: 'list-group', =>
              @li class: 'list-color', =>
                @div class: 'is-color scrollbar-corner-color-editor', '@scrollbar-corner-color-editor'
              @li class: 'list-color', =>
                @div class: 'is-color scrollbar-thumb-color-editor', '@scrollbar-thumb-color-editor'





          # @raw '''
          #   <ul class='list-group'>
          #     <li class='list-item text-info'>This is text - line 1</li>
          #     <li class='list-item'>
          #       <span>This is text - line 2</span>
          #     </li>
          # '''

  initialize: ->

  toggle: (event, element) ->
    leId = '#' + element.attr('data-name')

    if ($(leId).hasClass('hide'))
      $(leId).removeClass('hide')
    else
      $(leId).addClass('hide')
