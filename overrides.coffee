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
