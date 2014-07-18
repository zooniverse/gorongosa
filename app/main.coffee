translate = require 't7e'
enUs = require './lib/en-us'
translate.load enUs

$ = window.jQuery
require 'spine'

Navigation = require './controllers/navigation'

Route = require 'spine/lib/route'
AboutPage = require './controllers/about_page'
HomePage = require './controllers/home_page'
Classifier = require './controllers/classifier'
Profile = require './controllers/profile'
Api = require 'zooniverse/lib/api'
Project  = require 'zooniverse/models/project'

TopBar = require 'zooniverse/controllers/top-bar'
Footer = require 'zooniverse/controllers/footer'
User = require 'zooniverse/models/user'

{ Stack } = require 'spine/lib/manager'
ContentPage = require './controllers/content_page'
feedbackContent = require './views/feedback_page'

app = {}
api = new Api project: 'serengeti'

#TODO do we need this
$('.before-load').remove()

app.stack = new Stack
  className: "main #{Stack::className}"

  controllers:
    home: HomePage
    about: AboutPage
    classify: Classifier
    profile: Profile

  routes:
    '/home': 'home'
    '/about': 'about'
    '/classify': 'classify'
    '/profile': 'profile'

  default: 'home'

Route.setup()

User.fetch()

app.topBar = new TopBar
app.footer = new Footer

#TODO note Navigation does not extend from Controller c.f. Condors:app/controllers/SiteNavigation
navigation = new Navigation
app.navigation = navigation

app.navigation.el.appendTo  'body'
app.stack.el.appendTo  'body'
app.topBar.el.appendTo 'body'

siteFooter = $('<div class="site-footer"></div>').append app.footer.el
siteFooter.appendTo 'body'

Project.fetch()

window.app = app
module.exports = window.app
