# colorguide

$ = jQuery = require 'jquery'

module.exports =

  toggle2: (event, element) ->
    leClass = '.' + element.attr('data-name')

    if ($(leClass).hasClass('hide'))
      $(leClass).removeClass('hide')
    else
      $(leClass).addClass('hide')

  toggle: (event, element) ->
    leId = '#' + element.attr('data-name')

    if ($(leId).hasClass('hide'))
      $(leId).removeClass('hide')
    else
      $(leId).addClass('hide')
