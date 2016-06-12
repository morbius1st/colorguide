
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

  # extract the R G B values from an RGB string (ie. from rgb(17,17,17))
  getRGBfromString: (rgbString) ->
    patt = /(\d+)/g
    RGB = rgbString.match(patt)
    {R: RGB[0], G: RGB[1], B: RGB[2]}


  # format the descrete R G B values into a traditional hex string
  formatHexColor: (RGB) ->
    "#" + @toHexString(RGB.R) + @toHexString(RGB.G) + @toHexString(RGB.B)

  formatRGBcolor: (RGB) ->
    RGB.R + ' , ' + RGB.G + ' , ' + RGB.B

  # convert a decimal value into a hex string - hex string length always even
  toHexString: (decString) ->
    hexStr = parseInt(decString).toString(16)
    if (hexStr.length % 2 != 0) then hexStr = '0' + hexStr
    hexStr.toUpperCase()

  # create the color value string
  # provide a css RGB string (eg. rgb(17,17,17))
  formatColor: (rgbString) ->
    RGB = @getRGBfromString(rgbString)
    @formatHexColor(RGB)  + @addSpaces(5) + @formatRGBcolor(RGB)

  # add some non-breaking spaces
  addSpaces: (amount) ->
    (String.fromCharCode(160)).repeat(amount)
