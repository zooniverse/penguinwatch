$ = require('jqueryify')
User = require 'zooniverse/models/user'

dev_server = !!(location.host.match(/localhost:3665/))
server_prefix = 'http://'
server_suffix = '/api/events/'
geordi_host_port = if dev_server then 'localhost:3030' else 'geordi.zooniverse.org'
exports.geordi_host = server_prefix + geordi_host_port + server_suffix

###
log event with Geordi v2
###
logToGeordi = (eventData) =>
  $.ajax {
    url: exports.geordi_host,
    type: 'POST',
    contentType: 'application/json; charset=utf-8',
    data: JSON.stringify(eventData),
    dataType: 'json'
  }

###
This will log a competition opt-in in the Geordi API
###
logEvent = (user_id) =>
  eventData = buildEventData(user_id)
  logToGeordi eventData

###
This will log the user competition opt-in in the Geordi analytics API
###
buildEventData = (user_id) ->
  eventData = {}
  eventData['time'] = Date.now()
  eventData['projectToken'] = 'penguin'
  eventData['userID'] = user_id
  eventData['type'] = "competition"
  eventData['relatedID'] = 'opt-in'
  eventData

getZooUserId = ->
  User.current?.zooniverse_id

loggedIn = ->
  !!getZooUserId()

#bind up the opt-in button to log the data
$('#competition-button').click ->
  #test if the user is logged in or has logged in since we
  if loggedIn()
    logEvent(getZooUserId())
    # console.log("logged in as " + getZooUserId())
    # change the text of the button
    $(this).text("Thanks - You have opted into the competition!");
    $("#competition").delay(1000).fadeOut(500)
    #TODO - put a delay on here to and some local cookie store to not show this again?
  else
    # console.log("not logged in")
    alert("Sorry - You must be logged in to enter this competition")
  return
