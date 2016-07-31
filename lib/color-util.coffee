$ = jQuery = require 'jquery'
math = require 'mathjs'

module.exports =

  # return the background color of the editor pane
  getEditorBgColorHex: () ->
    @formatHexColor(@getRGBfromString(@getEditorBgColor()))

  # find the background color of the editor
  getEditorBgColor: () ->
    editors = atom.workspace.getTextEditors()

    for i in [0 ... editors.length] by 1
      editor = atom.views.getView(editors[i])
      edBgColor = window.getComputedStyle(editor).getPropertyValue('background-color')
      if edBgColor.length > 0
        return edBgColor

    # return a default value of black if nothing found
    '#000000'

  # extract the R G B values from an RGB string (ie. from rgb(17,17,17)) with possible alpha
  getRGBfromString: (rgbString) ->
    patt = /(\d+)/g
    RGB = rgbString.match(patt)

    if RGB.length > 3
      patt = /(0\.\d+)/
      rgbString = rgbString.match(patt)
      if rgbString?
        RGB[3] = math.round(rgbString[0] * 255)
        # window.alert('got alpha: ' + rgbString + " : " + RGB[0] + " : " + RGB[1] + " : " + RGB[2] + " : " + RGB[3])
      else
        RGB[3] = 0

    {R: RGB[0], G: RGB[1], B: RGB[2], A: RGB[3]}

  # format the descrete R G B values into a traditional hex string
  formatHexColor: (RGB) ->
    if !(RGB.A?)
      "#" + @toHexString(RGB.R) + @toHexString(RGB.G) + @toHexString(RGB.B)
    else
      "#" + @toHexString(RGB.A) + " " + @toHexString(RGB.R) + @toHexString(RGB.G) + @toHexString(RGB.B)

  formatRGBcolor: (RGB) ->
    if !(RGB.A?)
      RGB.R + ' , ' + RGB.G + ' , ' + RGB.B
    else
      RGB.R + ' , ' + RGB.G + ' , ' + RGB.B + ', alpha: ' + RGB.A

  # convert a decimal value into a hex string - hex string length always even
  toHexString: (decString) ->
    hexStr = parseInt(decString).toString(16)
    if (hexStr.length % 2 != 0) then hexStr = '0' + hexStr
    hexStr.toUpperCase()

  # create the color value string
  # provide a css RGB string (eg. rgb(17,17,17))
  formatColor: (rgbString) ->

    RGB = @getRGBfromString(rgbString)

    @formatHexColor(RGB)  + '\n' + @formatRGBcolor(RGB)

  # add some non-breaking spaces
  addSpaces: (amount) ->
    (String.fromCharCode(160)).repeat(amount)

  showColorValues: (elem) ->
    bgColor = $(elem + 'x').css('background-color')
    bgColor = @formatColor(bgColor)
    elemText = $(elem).text() + bgColor
    $(elem).text(elemText)
