
module.exports =
class cgVariableColor

  constructor: (idx, category, name, desc, top = 0xffffff, mid = 0x808080, bot = 0x000000) ->
    @order = idx
    # @variableGroup = group
    @variableCategory = category
    @variableName = name
    @variableDesc = desc
    @bkgColorTop = top
    @bkgColorMid = mid
    @bkgColorBot = bot
