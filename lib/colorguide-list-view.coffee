{$$, View} = require 'atom-space-pen-views'
$ = jQuery = require 'jquery'

# sV = require'C:/Users/Jeff/.atom/packages/cs-dark-syntax/lib/syntax-variables-cg'

module.exports =
class ColorguideListView extends View
  @content: ->
    @div class: 'tool-panel padded package-panel', =>
      @div class: 'inset-panel', =>
        @h2 'Syntax Theme Colors'
        @h3 outlet: 'title'
        @div class: 'panel-body', =>
          @div class: 'bar', ''
          @button 'data-name': 'officialSynVariables', class: 'btn-division-header', click: 'toggle', 'Official Syntax Variables'
          @div id: 'officialSynVariables', class: 'atom-panel top padded-right bordered', =>

            @button 'data-name': 'genColors', class: 'btn btn-section-header syntax-cursor-color', click: 'toggle', 'General Color'
            @ul outlet: 'list', class: 'list-group', =>
              @li class: 'list-color', =>
                @div class: 'is-color-preface', =>
                  @div class: 'is-color2 syntax-text-color is-color-bar-top'
                  @div class: 'is-color2 syntax-text-color is-color-bar-mid'
                  @div class: 'is-color2 syntax-text-color is-color-bar-bot'
                @div id: "li1x", class: 'is-color-block is-color2 syntax-text-color'
                @div class: 'list-item', =>
                  @pre id: "li1", class: 'list-item', '@syntax-text-color'
              @li class: 'list-color', =>
                @div class: 'is-color-preface', =>
                  @div class: 'is-color2 syntax-cursor-color is-color-bar-top'
                  @div class: 'is-color2 syntax-cursor-color is-color-bar-mid'
                  @div class: 'is-color2 syntax-cursor-color is-color-bar-bot'
                @div id: "li2x", class: 'is-color-block is-color2 syntax-cursor-color'
                @div class: 'list-item', =>
                  @pre id: "li2", class: 'list-item', '@syntax-cursor-color'




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
                @div class: 'is-color-blank'
              @li class: 'list-color', =>
                @div id: "li5", class: "is-color syntax-background-color", '@syntax-background-color'
              @li class: 'list-color', =>
                @div id: "li6", class: 'is-color syntax-invisible-character-color', '@syntax-invisible-character-color'

            @button 'data-name': 'guideColors', class: 'btn btn-section-header', click: 'toggle', 'Guide Colors'
            @ul id: 'guideColors', class: 'list-group', =>
              @li class: 'list-color', =>
                @div class: 'is-color syntax-wrap-guide-color', '@syntax-wrap-guide-color'
              @li class: 'list-color', =>
                @div class: 'is-color syntax-indent-guide-color', '@syntax-indent-guide-color'

            @button 'data-name': 'findColors', class: 'btn btn-section-header', click: 'toggle', 'Find and Replace Colors'
            @ul id: 'findColors', class: 'list-group', =>
              @li class: 'list-color', =>
                @div class: 'is-color syntax-result-marker-color', '@syntax-result-marker-color'
              @li class: 'list-color', =>
                @div class: 'is-color syntax-result-marker-color-selected', '@syntax-result-marker-color-selected'

            @button 'data-name': 'gutterColors', class: 'btn btn-section-header', click: 'toggle', 'Gutter Colors'
            @ul id: 'gutterColors', class: 'list-group', =>
              @li class: 'list-color', =>
                @div class: 'is-color syntax-gutter-text-color', '@syntax-gutter-text-color'
              @li class: 'list-color', =>
                @div class: 'is-color syntax-gutter-text-color-selected', '@syntax-gutter-text-color-selected'
              @li class: 'list-color', =>
                @div class: 'is-color syntax-gutter-background-color', '@syntax-gutter-background-color'
              @li class: 'list-color', =>
                @div class: 'is-color syntax-gutter-background-color-selected', '@syntax-gutter-background-color-selected'

            @button 'data-name': 'gitColors', class: 'btn btn-section-header', click: 'toggle', 'Git Colors'
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
          @button 'data-name': 'basicLanguageVariables', class: 'btn-division-header', click: 'toggle', 'Basic Language Variables'
          @div id: 'basicLanguageVariables', class: 'atom-panel top padded-right bordered', =>

            # @button 'data-name': 'languageColors', class: 'btn btn-section-header', click: 'toggle', 'Language Entity Colors'
            @ul id: 'languageVariables', class: 'list-group', =>
              @li class: 'list-color', =>
                @div class: 'is-color syntax-color-variable', '@syntax-color-variable'
              @li class: 'list-color', =>
                @div class: 'is-color syntax-color-constant', '@syntax-color-constant'
              @li class: 'list-color', =>
                @div class: 'is-color syntax-color-property', '@syntax-color-property'
              @li class: 'list-color', =>
                @div class: 'is-color syntax-color-value', '@syntax-color-value'
              @li class: 'list-color', =>
                @div class: 'is-color syntax-color-function', '@syntax-color-function'
              @li class: 'list-color', =>
                @div class: 'is-color syntax-color-method', '@syntax-color-method'
              @li class: 'list-color', =>
                @div class: 'is-color syntax-color-class', '@syntax-color-class'
              @li class: 'list-color', =>
                @div class: 'is-color syntax-color-keyword', '@syntax-color-keyword'
              @li class: 'list-color', =>
                @div class: 'is-color syntax-color-tag', '@syntax-color-tag'
              @li class: 'list-color', =>
                @div class: 'is-color syntax-color-attribute', '@syntax-color-attribute'
              @li class: 'list-color', =>
                @div class: 'is-color syntax-color-import', '@syntax-color-import'
              @li class: 'list-color', =>
                @div class: 'is-color syntax-color-snippet', '@syntax-color-snippet'

          @div class: 'bar', ''
          @button 'data-name': 'customVariables', class: 'btn-division-header', click: 'toggle','Custom Syntax Variables'
          @div id: 'customVariables', class: 'atom-panel top padded-right bordered', =>
            @button class: 'btn btn-section-header', 'New Syntax Variables'
            @ul id: 'test3', class: 'list-group', =>
              @li class: 'list-color',  =>
                @div class: 'is-color bracket-matcher-border-color', attached: 'winLoad', '@bracket-matcher-border-color'

              # @li class: 'list-color', =>
              #   @div class: 'is-color syntax-deprecated-fg', '@syntax-deprecated-fg'
              # @li class: 'list-color', =>
              #   @div class: 'is-color syntax-deprecated-bg', '@syntax-deprecated-bg'
              # @li class: 'list-color', =>
              #   @div class: 'is-color syntax-illegal-fg', '@syntax-illegal-fg'
              # @li class: 'list-color', =>
              #   @div class: 'is-color syntax-illegal-bg', '@syntax-illegal-bg'

          # @raw '''
          #   <ul class='list-group'>
          #     <li class='list-item text-info'>This is text - line 1</li>
          #     <li class='list-item'>
          #       <span>This is text - line 2</span>
          #     </li>
          # '''

  synVars2 =
    [
      ['li3', 'syntax-selection-color']
      ['li4', 'syntax-selection-flash-color']
    ]

  initialize: ->

    # message = ""
    # for a in synVars2
    #   message += 'a: ' + a[0] + ' b: ' + a[1] + '\n'
    #
    # window.alert(sV.length)

  #
  # getColorVariables: ->
  #   for (i = 0; i < document.styleSheets.length; i++) {
  #       a = document.styleSheets[i].cssRules;
  #       for (j = 0; j < a.length; j++) {
  #         b=a[j].selectorText;
  #         if (b !== undefined && b.startsWith(".theme-syntax")) {
  #           console.log(b);
  #         }
  #       }
  #     }

  addListItem: ->
    # message = ""
    # for colorItem in synVars2
    #   message += "a: #{colorItem[0]}  b: #{colorItem[1]}\n"
    #
    # window.alert(message)
    #

    for colorItem in synVars2
      li = document.createElement("li")
      li.className = "list-color"
      html = """
        <div class="is-color-preface">
          <div class="cg-#{colorItem[1]} is-color-bar-top"></div>
          <div class="cg-#{colorItem[1]} is-color-bar-mid"></div>
          <div class="cg-#{colorItem[1]} is-color-bar-bot"></div>
        </div>
        <div id="#{colorItem[0]}x" class="is-color-block cg-#{colorItem[1]}"></div>
        <div class="list-item">
          <pre id="#{colorItem[0]}" class="list-item">@#{colorItem[1]}</pre>
        </div>
      """
      li.innerHTML = html

      @list.append(li)

    # for colorItem in synVars2
    #   li = document.createElement("li")
    #   li.className = "list-color"
    #   html = """
    #     <div class="is-color-preface">
    #       <div class="is-color2 theme-#{colorItem[1]} is-color-bar-top"></div>
    #       <div class="is-color2 theme-#{colorItem[1]} is-color-bar-mid"></div>
    #       <div class="is-color2 theme-#{colorItem[1]} is-color-bar-bot"></div>
    #     </div>
    #     <div id="#{colorItem[0]}x" class="is-color-block is-color2 theme-#{colorItem[1]}"></div>
    #     <div class="list-item">
    #       <pre id="#{colorItem[0]}" class="list-item">@#{colorItem[1]}</pre>
    #     </div>
    #   """
    #   li.innerHTML = html
    #
    #   @list.append(li)

  toggle: (event, element) ->
    leId = '#' + element.attr('data-name')

    if ($(leId).hasClass('hide'))
      $(leId).removeClass('hide')
    else
      $(leId).addClass('hide')

  toHexString: (decString) ->
    hexStr = parseInt(decString).toString(16)
    if (hexStr.length % 2 != 0) then hexStr = '0' + hexStr
    hexStr.toUpperCase();

  addSpaces: (amount) ->
    (String.fromCharCode(160)).repeat(amount)

  formatColor: (rgbString) ->
    strSpace = String.fromCharCode(160)
    lPren = 4
    comma1 = rgbString.indexOf(",", lPren + 1)
    comma2 = rgbString.indexOf(",", comma1 + 1)
    rPren = rgbString.indexOf(")", comma2 + 1)
    R = rgbString.slice(lPren, comma1)
    G = rgbString.slice(comma1 + 2, comma2)
    B = rgbString.slice(comma2 + 2, rPren)
    "#" + @toHexString(R) + @toHexString(G) + @toHexString(B) + @addSpaces(5) + R + ' , ' + G + ' , ' + B

  winTest: (elem) ->
    bgColor = @formatColor(window.getComputedStyle(document.querySelector(elem), ':before').getPropertyValue('background-color'))
    elemText = $(elem).text() + @addSpaces(5) + bgColor
    $(elem).text(elemText)

  winTest2: (elem) ->
    bgColor = @formatColor($(elem + 'x').css('background-color'))
    # bgColor = ($(elem + 'x').css('background-color'))
    elemText = $(elem).text() + "\n" + bgColor
    $(elem).text(elemText)

  attached: ->
    @addListItem()
    @winTest2('#li1')
    @winTest2('#li2')
    @winTest2('#li3')
    @winTest2('#li4')
    @winTest('#li5')
    @winTest('#li6')
