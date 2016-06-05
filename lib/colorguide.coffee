ColorguideView = null
cgView = null
ColorguideViewURI = 'atom://colorguide'
$ = jQuery = require 'jquery'

module.exports =
  activate: ->
      atom.workspace.addOpener (filePath) =>
          @createColorguideView(uri: ColorguideViewURI) if filePath is ColorguideViewURI

      atom.commands.add 'atom-workspace', 'colorguide:show', ->
          atom.workspace.open(ColorguideViewURI)

  createColorguideView: (state) ->
      ColorguideView ?= require './cg-view'
      new ColorguideView(state)

  consumeThemeVars: (options={}) ->
    cgVar = options.name

if parseFloat(atom.getVersion()) < 1.7
    atom.deserializers.add
        name: 'ColorguideView'
        deserialize: module.exports.createColorguideView.bind(module.exports)
