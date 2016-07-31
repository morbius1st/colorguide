+_ = require 'underscore-plus'
{$, $$, $$$, View} = require 'atom-space-pen-views'
colorUtil = require './color-util'

_.extend View,

  addListItems: (varInfo, prefix) ->

    if !(varInfo?)
      @p class: "p-nothing-defined", 'Nothing Defined'
      return 0

    vars = varInfo.variables()
    groups = varInfo.groups()
    cats = varInfo.categories()

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
          @addCategoryHeader(currentGroup, currentCategory, cgCategoryHeaderText)

        itemId = itemIdPrefix + itemIdCode++
        @addListItemBlock(itemId, variableName, variableDesc, bkgColorTop, bkgColorMid, bkgColorBot, editorBgColor)

    else
      {order, variableCategory, variableGroup, variableName, variableDesc, bkgColorTop, bkgColorMid, bkgColorBot} = vars
      cgCategoryHeaderText = cats[variableCategory].description
      itemId = itemIdPrefix + itemIdCode++

      @addCategoryHeader(currentGroup, currentCategory, cgCategoryHeaderText)
      @addListItemBlock(itemId, variableName, variableDesc, bkgColorTop, bkgColorMid, bkgColorBot, editorBgColor, itemIdPrefix)

    {itemPrefix: itemIdPrefix, itemCount: itemIdCode}

  addListItemBlock: (itemId, variableName, variableDesc, bkgColorTop, bkgColorMid, bkgColorBot, editorBgColor) ->

    @li class: "list-color", =>
      @div class: 'right', =>
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
      @div class: 'left', =>
        @div class: 'list-item', =>
          @p class: "variable-name", "#{variableName}"
          @pre "#{variableDesc}"
          @pre id: "#{itemId}", ""


  addGroupHeader: (group, description) ->
    @div class: 'btn-align', =>
      @div class: 'div-section-collaspe-btn',  =>
        @button 'data-name': "#{group}", class: 'btn-anmie btn-header btn-top-margin btn-icon fa fa-sort', click: "toggle2", ""
      @div class: 'div-section-header-btn',  =>
        @button 'data-name': "#{group}", class: 'btn-anmie btn-header btn-group-header btn-top-margin', click: 'toggle', "#{description}"

    @raw """
      <div id = "#{group}" class = "list-category" >
    """

  addCategoryHeader: (group, category, description) ->
    @button 'data-name': "#{group}-#{category}", class: "btn-anmie btn-header btn-section-header", click: 'toggle2', "#{description}"
    @raw """
      <div class = "div-spacer #{group}\-#{category} #{group} hide"></div>
      <ul class = "list-category ul-bot-margin #{group} #{group}\-#{category} hide" >
    """

  addPanel: (title, dataName, vars, prefix, version) ->
    @div class: 'panel-body', =>
      @div class: 'bar', ''
      @button 'data-name': dataName, class: 'btn-division-header', click: 'toggle', title
      @div =>
        @span class: 'span-at-right',  'version: ' + version
      @div id: dataName, class: 'atom-panel top padded-right bordered', =>
        @itemInfo = @addListItems(vars, prefix)

    return @itemInfo
