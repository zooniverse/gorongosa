{Controller, Route} = require 'spine'

class ContentPage extends Controller
  className: 'content-page'

  constructor: ->
    super
    @html @template

module.exports = ContentPage
