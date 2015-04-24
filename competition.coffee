{ logEvent } = require './geordi'
User = require 'zooniverse/models/user'
loginDialog = require 'zooniverse/controllers/login-dialog'

template = """
  <div class="competition">
    <div class="competition-container">
      <div class="competition-header-image"><img src="./competition/official-contest.png"></div>
      <div class="competition-header-text">By marking penguins today, you could earn the chance of winning the trip of a lifetime to see these amazing little creatures in their natural habitat!</div>
      <div class="competition-body-text">Between April 25 and May 25, every day that you classify at least 10 photos, you can receive an entry into a prize-drawing to <span class="highlight">win an 11-day Antarctic Explorer: Discovering the 7th Continent expedition with Quark Expeditions®.</span> Simply check the "Enter Competition" button below to participate.</div>

      <button class="competition-button enter">-</button>
      <button class="competition-button learn-more">Learn More</button>

      <br><br>

      <div class="competition-footer">
        <div class="competition-quark-logo"><img src="./competition/quark-logo.png"></div>

        <div class="competition-footer-text">By opting into this competition, you may be contacted by Quark Expeditions in the event of winning.</div>

        <div class="competition-small-text">
          <b>The Small Print</b><br>
          The Zooniverse reserves the right to disqualify any user from the competition if it is determined that they are not performing the markings to the best of their ability in order to gain an advantage in the prize draw. Zooniverse and Quark Expeditions employees, family and friends are not eligible to win the competition. All decisions made by the Zooniverse and Quark Expeditions with regard to competition are final.
        </div>
      </div>
    </div>
  </div>
"""

enableElement = (element) ->
  element.className = element.className.split(' ').filter((v) -> v != 'entered').join(' ')
  element.removeAttribute 'disabled'

disableElement = (element, addClass = true) ->
  element.className += ' entered' if addClass
  element.setAttribute 'disabled', 'disabled'

document.querySelector('.readymade-home-page-content').insertAdjacentHTML 'afterend', template

enterButton = document.querySelector '.competition-button.enter'
enterButton.addEventListener 'click', (e) ->
  if User.current && !!~User.current.preferences?.penguin?.competition_opt_in
    logEvent User.current.zooniverse_id
    User.current.setPreference 'competition_opt_in', true
    enterButton.innerHTML = '<i class="fa fa-spinner fa-spin"></i>'
    setTimeout ->
      enterButton.innerHTML = 'Entered! Good luck!'
      disableElement enterButton
    , 1000
  else
    loginDialog.show()

User.on 'change', (e, user) ->
  if user?
    if user.preferences?.penguin?.competition_opt_in
      enterButton.innerHTML = 'Already entered!'
      disableElement enterButton
    else
      enterButton.innerHTML = 'Enter Competition'
      enableElement enterButton
  else
    enterButton.innerHTML = 'Must be logged in'
    enableElement enterButton
