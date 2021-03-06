{Controller} = require 'spine'
template = require '../views/subject_viewer'
AnnotationItem = require './annotation_item'
Subject = require 'zooniverse/models/subject'
splits = require '../lib/splits'
slides = require '../lib/tutorial_slides'

class SubjectViewer extends Controller
  classification: null
  active: NaN

  className: 'subject-viewer'

  playTimeouts: null

  events:
    'click button[name="favorite"]': 'onClickFavorite'
    'change input[name="nothing"]': 'onChangeNothingCheckbox'
    'click button[name="finish"]': 'onClickFinish'
    'click button[name="next"]': 'onClickNext'
    'click button[name="clear-filters"]': 'onClickClearFilters'
    'click button[name="start-tutorial"]': 'onClickStartTutorial'

  elements:
    '.subject-images figure': 'figures'
    'button[name="favorite"]': 'favoriteBtn'
    '.annotations': 'annotationsContainer'
    '.extra-message': 'extraMessageContainer'
    'input[name="nothing"]': 'nothingCheckbox'
    'button[name="finish"]': 'finishButton'
    'a.talk-link': 'talkLink'

  constructor: ->
    super
    @playTimeouts = []
    @el.attr tabindex: 0
    @setClassification @classification

    @slideTutorial = new SlideTutorial
      slides: slides

  setClassification: (classification) ->
    @el.removeClass 'finished'
    @classification?.off 'change', @onClassificationChange
    @classification?.off 'add-species', @onClassificationAddSpecies

    @classification = classification

    if @classification
      @classification.on 'change', @onClassificationChange
      @classification.on 'add-species', @onClassificationAddSpecies

      @html template @classification
      @onClassificationChange()
    else
      @html ''

  onClassificationChange:  =>
    noAnnotations = @classification.annotations.length is 0
    nothing = @classification.metadata.nothing
    isFavorite = !!@classification.favorite

    inSelection = @classification.metadata.inSelection
    @el.toggleClass 'no-annotations', noAnnotations
    @el.toggleClass 'favorite', isFavorite

    @finishButton.attr disabled: inSelection or (noAnnotations and not nothing)

  onClassificationAddSpecies: (classification, annotation) =>
    item = new AnnotationItem {@classification, annotation}
    item.el.appendTo @annotationsContainer
    @scrollToBottomOfAnnotations()

  scrollToBottomOfAnnotations: ->
    @annotationsContainer.animate({ scrollTop: @annotationsContainer[0].scrollHeight}, 1000)

  onClickFavorite: ->
    @classification.favorite = !@classification.favorite
    @toggleFavoriteIcon()

  toggleFavoriteIcon: ->
    @favoriteBtn.toggleClass "favorited", @classification.favorite

  onChangeNothingCheckbox: ->
    nothing = @nothingCheckbox.get(0).checked
    @classification.annotate {nothing}, true

  onClickFinish: ->
    message = splits.get 'classifier_messaging' unless @classification.subject.metadata.tutorial
    @extraMessageContainer.html message
    @extraMessageContainer.hide() unless message

    @el.addClass 'finished'
    @classification.send() unless @classification.subject.metadata.empty
    console?.log(@classification)

  onClickNext: ->
    Subject.next()

  handleFirstVisit: ->
    if @firstVisit
      @slideTutorial.start()
      @firstVisit = false

  onClickStartTutorial: ->
    @slideTutorial.start()

  onClickClearFilters: ->
    @animalSelector.clearFilters()

module.exports = SubjectViewer
