FieldGuide = require 'zooniverse-readymade/lib/field-guide'
FieldGuide::template = (examples) -> "
    <div class='readymade-field-guide-tabs'>
      #{("
        <button id='fg-tab-#{i}' name='readymade-field-guide-tab'>#{page.label}</button>
      " for page, i in examples).join '\n'}
    </div>

    <div class='readymade-field-guide-pages'>
      #{("
        <div class='readymade-field-guide-page'>
          <div class='readymade-field-guide-content'>#{page.content ? ''}</div>
          <div class='readymade-field-guide-examples'>
            #{("
              <div class='readymade-field-guide-example'>
                <div class='readymade-field-guide-caption'>#{figure.label}</div>
                <img src='#{figure.image}' alt='#{figure.alt}' class='readymade-field-guide-image' />
              </div>
            " for figure in page.figures).join '\n'}
          </div>
        </div>
      " for page, i in examples).join '\n'}
    </div>
  "

currentProject = require 'zooniverse-readymade/current-project'
classify_page = currentProject.classifyPages[0]

tag = document.createElement('script')
tag.src = './you_tube_iframe_player.js'
firstScriptTag = document.getElementsByTagName('script')[0]
firstScriptTag.parentNode.insertBefore tag, firstScriptTag

require './show-project-details'
require './show-roi'
require './auto-choose-penguin-tool'
require './limit-marks'
require './show-counts'
require './attribute-background-image'
require './confirm-button-label'
require './task-defaults'

GoogleAnalytics = require 'zooniverse/lib/google-analytics'
analytics = new GoogleAnalytics
  account: 'UA-1224199-57'
  domain: 'www.penguinwatch.org'



# TEMPORARY ADDITION
# Requested by @grant on 2017.03.06
# based on https://github.com/zooniverse/sciencegossip/tree/challenge/readymade
# After two weeks, please do the following:
# * Revert overrides.coffee
# * Rever penguins.styl
# * Delete /readymade-temporary
# --------------------------------
# Add some API stats to the home page
APIInfoContainer = require './readymade-temporary/api-info-container'

# Add a banner for the email challenge
TARGET = 250000
classifications = new APIInfoContainer
  href: "/projects/#{currentProject.id}"
  template: """
    <span data-readymade-info-key="classification_count">···</span>
  """
banner = """
  <div class="challenge">
    <p> classifications submitted. Help us reach <b>#{TARGET.toLocaleString()}</b> classifications.</p>
  </div>
  """

$('#wrapper')
  .prepend banner
  .find '.challenge p'
  .prepend classifications.el
  
# --------------------------------
