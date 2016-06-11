
module.exports =
class cgVariableColor

  constructor: (idx, group, name, desc, top = 0xffffff, mid = 0x808080, bot = 0x000000) ->
    @order = idx
    @variablegroup = group
    @variablename = name
    @variabledesc = desc
    @bkgcolortop = top
    @bkgcolormid = mid
    @bkgcolorbot = bot
