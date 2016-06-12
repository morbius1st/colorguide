_ = require 'underscore-plus'
{$, $$, $$$, View} = require 'atom-space-pen-views'
cgSyntaxVars = require './cg-variables-syntax-required2'
cgListView = require './cg-list-view'
colorUtil = require './color-util'

# cgSynVarReqd2 = require './cg-variables-syntax-required2'

_.extend View,

  addListItems: (vars, groups, cats) ->

    editorBgColor = colorUtil.getEditorBgColorHex()

    itemIdPrefix = 'reqd'
    itemIdCode = 1

    currentGroup = ''
    currentCategory = ''

    if vars.variables?
      (vars.variables).sort((a, b) -> a.order - b.order)

      for {order, variableGroup, variableCategory, variableName, variableDesc, bkgColorTop, bkgColorMid, bkgColorBot} in vars.variables
        if currentGroup != variableGroup
          cgGroupHeaderText = groups[variableGroup].description
          if currentGroup != ''
            @raw '''</div>'''

          currentGroup = variableGroup
          @addGroupHeader(currentGroup, cgGroupHeaderText)

        if currentCategory != variableCategory
          cgCategoryHeaderText = cats[variableCategory].description
          if currentCategory != ''
            @raw '''</ul>'''

          currentCategory = variableCategory
          @addCategoryHeader(currentCategory, cgCategoryHeaderText)

        itemId = itemIdPrefix + itemIdCode++
        @addListItemBlock(itemId, variableName, variableDesc, editorBgColor)

    else
      {order, variableCategory, variableGroup, variableName, variableDesc, bkgColorTop, bkgColorMid, bkgColorBot} = vars
      cgCategoryHeaderText = cats[variableCategory].description
      itemId = itemIdPrefix + itemIdCode++

      @addCategoryHeader(currentCategory, cgCategoryHeaderText)
      @addListItemBlock(itemId, variableName, variableDesc)

    {itemPrefix: itemIdPrefix, itemCount: --itemIdCode}

  addListItemBlock: (itemId, variableName, variableDesc, editorBgColor) ->

    @li class: 'list-color', =>
      @div class: "is-color-preface", =>
        @div class: "cg-#{variableName} is-color-bar-top"
        @div class: "cg-#{variableName} is-color-bar-mid"
        @div class: "cg-#{variableName} is-color-bar-bot"
        @div class: "cg-#{variableName} is-color-bar-bkg", style: "border-color: #{editorBgColor}"
      @div id: "#{itemId}x", class: "is-color-block cg-#{variableName}"
      @div class: "list-item", =>
        @p class: "variable-name", "#{variableName}"
        @p "#{variableDesc}"
        @p id: "#{itemId}", ""

  addCategoryHeader: (category, description) ->
    @button 'data-name': "#{category}", class: 'btn btn-section-header syntax-cursor-color', click: 'toggle', "#{description}"
    @raw """
      <ul id = "#{category}" class = 'list-category' >
    """

  addGroupHeader: (group, description) ->
    @button 'data-name': "#{group}", class: 'btn btn-section-header syntax-cursor-color', click: 'toggle', "#{description}"
    @raw """
      <div id = "#{group}" class = 'list-category' >
    """

  showColorValues: (elem) ->
    window.alert(elem, "element id")
    bgColor = $(elem + 'x').css('background-color')
    # window.alert(bgColor, "bg color")
    colorValueString = colorUtil.formatColor($(elem + 'x').css('background-color'))

    elemText = $(elem).text() + "\n" + colorValueString
    $(elem).text(elemText)
