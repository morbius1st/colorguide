
module.exports =
class cgVariableColor2

  constructor: (idx, group, category, name, desc, top = 0xffffff, mid = 0x808080, bot = 0x000000) ->
    @order = idx
    @variableGroup = group
    @variableCategory = category
    @variableName = name
    @variableDesc = desc
    @bkgColorTop = top
    @bkgColorMid = mid
    @bkgColorBot = bot
