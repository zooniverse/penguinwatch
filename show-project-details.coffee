$ = window.jQuery
APIInfoContainer = require 'zooniverse-readymade/lib/api-info-container'
currentProject = require 'zooniverse-readymade/current-project'
translate = require 't7e'

classifications = new APIInfoContainer
  href: "/projects/#{currentProject.id}"
  template: """
    <span data-readymade-info-key="classification_count">···</span>
    #{translate 'span', 'classificationCount'}
  """

users = new APIInfoContainer
  href: "/projects/#{currentProject.id}"
  template: """
    <span data-readymade-info-key="user_count">···</span>
    #{translate 'span', 'userCount'}
  """

$(currentProject.homePage).find('.readymade-footer').prepend classifications.el
$(currentProject.homePage).find('.readymade-footer').append users.el
