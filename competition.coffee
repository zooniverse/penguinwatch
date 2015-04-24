{ logEvent } = require './geordi'
User = require 'zooniverse/models/user'
loginDialog = require 'zooniverse/controllers/login-dialog'

template = """
  <div class="competition">
    <div class="competition-container">
      <div class="competition-header-image"><img src="./competition/official-contest.png"></div>
      <div class="competition-header-text">By marking penguins today, you could earn the chance to win the trip of a lifetime to see these amazing little creatures in their natural habitat!</div>
      <div class="competition-body-text">Between April 25 and May 25, every day that you classify at least 10 photos, you can receive an entry into a prize-drawing to win an 11-day <span class="highlight">Antarctic Explorer: Discovering the 7th Continent</span> expedition with Quark Expeditions®. Click on "Enter Competition" below to register, and "Learn More" to get more read up on the details of the competition!</div>

      <button class="competition-button enter">-</button>
      <a href="http://info.quarkexpeditions.com/penguinwatch" target="_blank">
        <button class="competition-button learn-more">Learn More</button>
      </a>

      <br><br>

      <div class="competition-footer">
        <div class="competition-footer-text">By participating in this competition, you agree to be contacted by Quark in the event of winning.</div>
        <div class="competition-quark-logo"><img src="./competition/quark-logo.png"></div>
        <div class="competition-small-text">
          <b>The Small Print</b><br>
          Please note that this competition is being run by Quark Expeditions, and all <a href="http://www.quarkexpeditions.com/en/penguin-watch-and-quark-expeditions-competition?_ga=1.211591762.698748156.1429627101">Quark Expeditions Terms & Conditions</a> apply.
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
