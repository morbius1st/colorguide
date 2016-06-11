_ = require 'underscore-plus'
{$, $$, $$$, View} = require 'atom-space-pen-views'
cgSyntaxVariablesReqd = require './cg-variables-syntax-required'
cgListView = require './cg-list-view'

colorUtil = require './color-util'

_.extend View,

  addListItems: () ->
    editorBgColor = colorUtil.getEditorBgColorHex()

    cgGroupHeaders = cgSyntaxVariablesReqd.syntaxVarsReqdHeaders()
    cgSyntaxVarsReqd  = cgSyntaxVariablesReqd.syntaxVarsReqd()

    message = ''

    itemIdPrefix = 'reqd'
    itemIdCode = 1

    if cgSyntaxVarsReqd.variables?
      (cgSyntaxVarsReqd.variables).sort((a, b) -> a.order - b.order)
      for {order, variablegroup, variablename, variabledesc, bkgcolortop, bkgcolormid, bkgcolorbot} in cgSyntaxVarsReqd.variables
          cgGroupHeaderText = cgGroupHeaders[variablegroup].description
          itemId = itemIdPrefix + itemIdCode
          @addListItemBlock3(itemId, variablename, variabledesc, editorBgColor)
          itemIdCode++

    else
      {order, variablegroup, variablename, variabledesc, bkgcolortop, bkgcolormid, bkgcolorbot} = cgSyntaxVarsReqd
      cgGroupHeaderText = cgGroupHeaders[variablegroup].description
      itemId = itemIdPrefix + itemIdCode++
      @addListItemBlock(itemId, variablename, variabledesc)

    {itemPrefix: itemIdPrefix, itemCount: --itemIdCode}

  addListItemBlock3: (itemId, variablename, variabledesc, editorBgColor) ->
    @li class: 'list-color', =>
      @raw """
        <div class="is-color-preface">
          <div class="cg-#{variablename} is-color-bar-top"></div>
          <div class="cg-#{variablename} is-color-bar-mid"></div>
          <div class="cg-#{variablename} is-color-bar-bot"></div>
          <div class="cg-#{variablename} is-color-bar-bkg" style = 'border-color: #{editorBgColor}'"></div>
        </div>
        <div id="#{itemId}x" class="is-color-block cg-#{variablename}"></div>
        <div class="list-item">
          <p class="variable-name">#{variablename}</p>
          <p>#{variabledesc}</p>
          <p id="#{itemId}"></p>
        </div>
        """
  showColorValues: (elem) ->
    window.alert(elem, "element id")
    bgColor = $(elem + 'x').css('background-color')
    # window.alert(bgColor, "bg color")
    colorValueString = colorUtil.formatColor($(elem + 'x').css('background-color'))

    elemText = $(elem).text() + "\n" + colorValueString
    $(elem).text(elemText)
