{Controller} = require 'spine'
translate = require "t7e"

Profile = require 'zooniverse/controllers/profile'
ProfileItemTemplate = require '../views/profile-item'

class ProfilePage extends Controller
  className: 'profile'

  constructor: ->
    super

    @profile ?= new Profile
      recentTemplate: ProfileItemTemplate
      favoriteTemplate: ProfileItemTemplate

    @html @profile.el

    @el.prepend "<div class='secondary-header'><h1>#{translate 'profile.header'}</h1></div>"

module.exports = ProfilePage
