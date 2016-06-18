
module.exports =
class cgVariableColor2

  constructor: (idx, group, category, name, desc, top = '#ffffff', mid = '#808080', bot = '#000000') ->
    @order = idx
    @variableGroup = group
    @variableCategory = category
    @variableName = name
    @variableDesc = desc
    @bkgColorTop = top
    @bkgColorMid = mid
    @bkgColorBot = bot
