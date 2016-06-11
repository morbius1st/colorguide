
module.exports =

  # return the background color of the editor pane
  getEditorBgColorHex: () ->
    @formatHexColor2(@getRGBfromString2(@getEditorBgColor2()))

  # find the background color of the editor
  getEditorBgColor2: () ->
    editors = atom.workspace.getTextEditors()

    for i in [0 ... editors.length] by 1
      editor = atom.views.getView(editors[i])
      edBgColor = window.getComputedStyle(editor).getPropertyValue('background-color')
      if edBgColor.length > 0
        return edBgColor

    # return a default value of black if nothing found
    '#000000'

  # extract the R G B values from an RGB string (ie. from rgb(17,17,17))
  getRGBfromString2: (rgbString) ->
    patt = /(\d+)/g
    RGB = rgbString.match(patt)
    {R: RGB[0], G: RGB[1], B: RGB[2]}


  # format the descrete R G B values into a traditional hex string
  formatHexColor2: (RGB) ->
    "#" + @toHexString(RGB.R) + @toHexString(RGB.G) + @toHexString(RGB.B)

  formatRGBcolor2: (RGB) ->
    RGB.R + ' , ' + RGB.G + ' , ' + RGB.B

  # convert a decimal value into a hex string - hex string length always even
  toHexString: (decString) ->
    hexStr = parseInt(decString).toString(16)
    if (hexStr.length % 2 != 0) then hexStr = '0' + hexStr
    hexStr.toUpperCase()

  # create the color value string
  # provide a css RGB string (eg. rgb(17,17,17))
  formatColor: (rgbString) ->
    RGB = @getRGBfromString2(rgbString)
    @formatHexColor2(RGB)  + @addSpaces2(5) + @formatRGBcolor2(RGB)

  # add some non-breaking spaces
  addSpaces2: (amount) ->
    (String.fromCharCode(160)).repeat(amount)
