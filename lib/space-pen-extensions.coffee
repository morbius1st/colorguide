_ = require 'underscore-plus'
{$, $$, $$$, View} = require 'atom-space-pen-views'
colorUtil = require './color-util'

_.extend View,

  addListItems: (vars, groups, cats, prefix) ->

    if !(vars?)
      @p style: "padding-top: 5px", 'No Custom Syntax Variables Defined'
      return 0

    editorBgColor = colorUtil.getEditorBgColorHex()

    itemIdPrefix = prefix
    itemIdCode = 1

    currentGroup = ''
    currentCategory = ''

    if vars.variables?

      for x in vars.variables
        x.order = x.order + groups[x.variableGroup].value + cats[x.variableCategory].value

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
        @addListItemBlock(itemId, variableName, variableDesc, bkgColorTop, bkgColorMid, bkgColorBot, editorBgColor)

    else
      {order, variableCategory, variableGroup, variableName, variableDesc, bkgColorTop, bkgColorMid, bkgColorBot} = vars
      cgCategoryHeaderText = cats[variableCategory].description
      itemId = itemIdPrefix + itemIdCode++

      @addCategoryHeader(currentCategory, cgCategoryHeaderText)
      @addListItemBlock(itemId, variableName, variableDesc, bkgColorTop, bkgColorMid, bkgColorBot, editorBgColor)

    {itemPrefix: itemIdPrefix, itemCount: itemIdCode}

  addListItemBlock: (itemId, variableName, variableDesc, bkgColorTop, bkgColorMid, bkgColorBot, editorBgColor) ->

    @li class: 'list-color', =>
      @div class: "is-color-preface", =>
        @div class: "cg-#{variableName} is-text-bar-top", style: "background-color: #{bkgColorTop}", "Sample"
        @div class: "cg-#{variableName} is-text-bar-mid", style: "background-color: #{bkgColorMid}", "Sample"
        @div class: "cg-#{variableName} is-text-bar-bot", style: "background-color: #{bkgColorBot}", "Sample"
        @div class: "cg-#{variableName} is-text-bar-bkg", style: "background-color: #{editorBgColor}", "Sample"
      @div class: "is-color-preface", =>
        @div class: "cg-#{variableName} is-color-bar-top", style: "border-color: #{bkgColorTop}"
        @div class: "cg-#{variableName} is-color-bar-mid", style: "border-color: #{bkgColorMid}"
        @div class: "cg-#{variableName} is-color-bar-bot", style: "border-color: #{bkgColorBot}"
        @div class: "cg-#{variableName} is-color-bar-bkg", style: "border-color: #{editorBgColor}"
      @div id: "#{itemId}x", class: "cg-#{variableName} is-color-block"
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
