{Controller} = require 'spine'
template = require '../views/animal_details'
PopupButton = require './popup_button'
ImageChanger = require './image_changer'
Animal = require '../models/animal'

class AnimalDetails extends Controller
  animal: null
  classification: null
  set: null

  className: 'animal-details'

  events:
    'click button[name="change-image"]': 'onClickChangeImage'
    'change input': 'onInputChange'
    'click button[name="cancel"]': 'onClickCancel'
    'click button[name="identify"]': 'onClickIdentify'

  elements:
    'input[name="count"]': 'countRadios'
    'input[name="behavior"]': 'behaviorCheckboxes'
    'input[name="babies"]': 'babiesCheckbox'
    'button[name="identify"]': 'identifyButton'

  constructor: ->
    super

    @html template @animal
    @el.attr tabindex: 0
    @el.addClass 'hidden'

    for popupButton in @el.find '[data-popup]'
      PopupButton.fromDOM popupButton

    @imageChanger = new ImageChanger
      el: @el.find '.image-changer'
      sources: @animal.images

    @onInputChange()

  show: =>
    @hadFocus = document.activeElement
    @el.removeClass 'hidden'
    @el.focus()

  hide: =>
    $(@hadFocus).focus()
    @el.addClass 'hidden'
    setTimeout @release, 333

  onClickChangeImage: ({currentTarget}) ->
    delta = parseFloat $(currentTarget).val()
    @imageChanger.activate @imageChanger.active + delta

  # Add additional restrictions on "Identify" here. 
  # ex. @identifyButton.attr disabled: (not count) or (behaviors.length is 0)
  onInputChange: ->
    setTimeout =>
      count = @getCount()

      deerValues = @deerValues()
      deer = deerValues.length is 3 and deerValues.reduce (t, v) -> t + v

      @identifyButton.attr disabled: (not count) and (not deer)

  getCount: ->
    @countRadios.filter(':checked').val()

  getBehaviors: ->
    for checkbox in @behaviorCheckboxes
      continue unless checkbox.checked
      $(checkbox).val()

  getBabies: ->
    !!@babiesCheckbox.attr 'checked'

  onClickCancel: ->
    @hide()

  onClickIdentify: ->
    @classification.annotate
      species: @animal

      count: @getCount() ? @deerDisplayCount()
      deer: @getDeer()
      behavior: @getBehaviors()
      babies: @getBabies()

      filters: @set.options
      search: @set.searchString

    @hide()

  # Deer specific methods: Deer are handled separately
  # since the count is sub-divided by attribute and additional
  # classification data is required
  deerValues: -> (parseInt(v, 10) for _, v of @getDeer())

  deerDisplayCount: ->
    values = @deerValues()
    sum = values.reduce (t, v) -> t + v
    manyDeer = !!~values.indexOf(6)
    sum + (if manyDeer then '+' else '') # restore '+' character if user selected 6+ for any counts

  getDeer: ->
    Animal.deerAttributes.reduce (obj, name) =>
      val = @el.find("input[name='#{name}']:checked").val()
      obj[name] = val if parseInt(val, 10) >= 0
      obj
    , {}

module.exports = AnimalDetails
