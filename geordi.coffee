$ = require 'jqueryify'
User = require 'zooniverse/models/user'

devServer = !!(location.host.match(/localhost:3665/))
geordiHost = if devServer then 'localhost:3030' else 'geordi.zooniverse.org'
geordiUrl = 'http://' + geordiHost + '/api/events/'

###
This will log a competition opt-in in the Geordi API
###
exports.logEvent = (userZooniverseId) ->
  eventData =
    tme: Date.now()
    projectToken: 'penguin'
    userID: userZooniverseId
    type: 'competition'
    relatedID: 'opt-in'

  $.ajax
    url: geordiUrl
    type: 'POST'
    contentType: 'application/json; charset=utf-8'
    data: JSON.stringify eventData
    dataType: 'json'
