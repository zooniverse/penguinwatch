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
        #If the container's data is numeric, we can modify the numbers if necessary (for example, to include Classifications already accounted for from an earlier project.)
        if container.getAttribute('data-readymade-info-isNumeric') == 'true' and container.getAttribute('data-readymade-info-offset')
          container.innerHTML = (parseInt(info[container.getAttribute('data-readymade-info-key')]) + parseInt(container.getAttribute('data-readymade-info-offset'))).toLocaleString()
        #For everything else, we show the container's data as is.
        else
          container.innerHTML = info[container.getAttribute('data-readymade-info-key')].toLocaleString()

module.exports = APIInfoContainer