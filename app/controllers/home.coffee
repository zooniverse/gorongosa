{Controller} = require 'spine'
formatNumber =  require '../lib/format-number'
Api = require 'zooniverse/lib/api'

REFRESH_INTERVAL = 1000 * 60 * 5

isDev = if !!~location.host.indexOf 'demo' or +location.port > 1000 then true else false

class HomePage extends Controller
  className: 'home-page'
  template: require '../views/home_page'

  elements:
    '#user-count': 'userCount'
    '#classification-count': 'classificationCount'
    '#totalImages': 'totalImages'
    '#percent-complete': 'percentComplete'
  
  constructor: ->
    super
    @html @template @

    @fetchProject()
    setInterval @fetchProject, REFRESH_INTERVAL

    unless isDev
      @fetchProjectStats()
      setInterval @fetchProjectStats, REFRESH_INTERVAL

  fetchProject: =>
    Api.current.get '/projects/wisconsin', (project) =>
      @userCount.html formatNumber project.user_count || 0
      @classificationCount.html formatNumber project.classification_count || 0

  fetchProjectStats: =>
    Api.current.get '/projects/wisconsin/status?status_type=subjects', (subjectStatus) =>
      total = subjectStatus.reduce (pv, cv, i, arr) ->
        pv + cv.count
      , 0
      complete = subjectStatus[1].count # eh

      @totalImages.html formatNumber total
      @percentComplete.html "#{ (complete / total) * 100 }%"

module.exports = HomePage
