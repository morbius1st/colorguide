{$$, View} = require 'atom-space-pen-views'

module.exports =
class ColorguideUiView extends View
	@content: ->
    @div class: 'tool-panel padded package-panel', =>
      @div class: 'inset-panel', =>
        @h2 'UI Theme Colors'
        @h3  outlet: 'title'
        @div class: 'panel-body padded', =>
          @raw '''
            <div class="is-color text-color">@text-color</div>
						<div class="is-color-blank"></div>
            <div class="is-color text-color-subtle">@text-color-subtle</div>
            <div class="is-color ui-fg">@ui-fg</div>
          '''


  initialize: ->
