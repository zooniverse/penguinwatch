Controller = require 'zooniverse/controllers/base-controller'
currentProject = require 'zooniverse-readymade/current-project'

class APIInfoContainer extends Controller
  tagName: 'span'
  className: 'readymade-api-info-container'

  href: ''

  events:
    click: 'refresh'

  constructor: ->
    super
    @refresh()

  refresh: ->
    projectInfo = currentProject.api.get @href
    projectInfo.then (info) =>
      for container in @el.find '[data-readymade-info-key]'
        container.innerHTML = info[container.getAttribute('data-readymade-info-key')].toLocaleString()

module.exports = APIInfoContainer