{Controller} = require 'spine'

class ContentPage extends Controller
  className: 'content-page'

  elements:
    '.sub-nav': 'subNav'

  constructor: ->
    super
    @html @template @

    @subNav.on 'click', 'button', (e) =>
      ct = $(e.currentTarget)

      ct.siblings().removeClass 'active'
      ct.addClass 'active'

      targetSection = ct.attr 'name'

      @el.find('[data-nav]').hide()
      @el.find("[data-nav^=\"#{ targetSection }\"]").show()

    @subNav.children().first().click()

  snakerize: (displayName) ->
    displayName.replace(/\s/g, '-').toLowerCase()

  keyerize: (displayName) ->
    displayName.split(' ').pop().toLowerCase()

module.exports = ContentPage
