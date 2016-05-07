{$$, View} = require 'atom-space-pen-views'

module.exports =
class ColorguideSyntaxView extends View
  @content: ->
    @div class: 'tool-panel padded package-panel', =>
      @div class: 'inset-panel', =>
        @h2 'Syntax Theme Colors'
       	@h3 outlet: 'title'
        @div class: 'panel-body padded', =>
          @raw '''
            <div class="is-color scrollbar-background-color">@scrollbar-background-color</div>
            <div class="is-color true_red_500">@true_red_500</div>
						<div class="is-color-blank"></div>
            <div class="is-color scrollbar-thumb-color">@scrollbar-thumb-color</div>
          '''


  initialize: ->
