translate = require 't7e'
enUs = require './lib/en-us'
translate.load enUs

$ = window.jQuery

require 'spine'
Route = require 'spine/lib/route'
{ Stack } = require 'spine/lib/manager'

Api = require 'zooniverse/lib/api'
User = require 'zooniverse/models/user'

api = new Api project: 'wisconsin'

TopBar = require 'zooniverse/controllers/top-bar'
topBar = new TopBar
topBar.el.appendTo 'body'

Navigation = require './controllers/navigation'
navigation = new Navigation
navigation.el.appendTo  'body'

ContentPage = require './controllers/content-page'
stack = new Stack
  className: "main #{Stack::className}"

  controllers:
    home: require './controllers/home'
    classify: require './controllers/classifier'
    profile: require './controllers/profile'
    about: (class extends ContentPage then template: require './views/about')
    science: (class extends ContentPage then template: require './views/science')

  routes:
    '/home': 'home'
    '/about': 'about'
    '/science': 'science'
    '/classify': 'classify'
    '/profile': 'profile'

  default: 'home'

stack.el.appendTo  'body'

Footer = require 'zooniverse/controllers/footer'
footer = new Footer
siteFooter = $('<div class="site-footer"></div>').append footer.el
siteFooter.appendTo 'body'

Route.setup()
User.fetch()

window.app = { stack, api }
module.exports = window.app
