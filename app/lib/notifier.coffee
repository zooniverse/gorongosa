$ = window.jQuery

# Notifier.init() to add to document
# Notifier.message("foo") to display html
# pass in a background color: Notifier.message("bar", "#fff")
# add a continue button to the bottom of it: Notifier.message("bar", "#000", true)
# it will display below the anchor element
# Notifier.hide() to close it

Notifier =
  init: ->
    @el = $("
      <div id='notifier'>
        <img class='notifier-close' src='./images/x-icon.svg'>
        <div class='notifier-content'></div>
        <button class='action-button'>Continue</button>
      </div>
      ")
    @el.appendTo $('body')

    @content = @el.find('.notifier-content')
    @actionButton = @el.find('.action-button')
    @closeIcon = @el.find('.notifier-close, .action-button')
      .on 'click', => @hide()

    window.onresize = => @setPosition() if @notifierIsVisible()

  green: "#3EA535"
  grey: "#808080"
  red: "#ee4737"
  blue: "#2099de"
  white: "#fff"

  anchor: -> $(".site-navigation")

  show: (transitionTime = 150) ->
    @setPosition().slideDown(transitionTime)

  notifierIsVisible: ->
    @el.is(':visible')

  setPosition: ->
    @el.css {top: @topOffset()}

  topOffset: ->
    anchor = @anchor()
    anchor.innerHeight() - anchor.position().top

  hide: (transitionTime = 150) ->
    @el.slideUp(transitionTime)

  message: (message, backgroundColor = @white, action = false) ->
    setTimeout =>
      @show().css {backgroundColor: backgroundColor}
      @content.html message
      @actionButton.toggle(action)

module?.exports = Notifier
