{$$, View} = require 'atom-space-pen-views'

module.exports =
class ColorguideSyntaxView extends View
    @content: ->
        @div class: 'tool-panel padded package-panel', =>
            @div class: 'inset-panel', =>
                # @div class: 'panel-heading', outlet: 'title'
                @h2 'Syntax Theme Colors'
                @h3 outlet: 'title'
                @span class: 'inline-block', 'this is a test '
                @span class: 'inline-block', 'this is another test'
                @div class: 'panel-body padded', =>
                    @raw '''
                        <div class="is-color scrollbar-background-color">@scrollbar-background-color</div>
                        <div class="is-color true_red_50">@true_red_50</div>
                        <div class="is-color scrollbar-thumb-color">@scrollbar-thumb-color</div>
                    '''


    initialize: ->
