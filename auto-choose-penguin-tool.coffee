currentProject = require 'zooniverse-readymade/current-project'
$ = window.jQuery

classifyPage = currentProject.classifyPages[0]

classifyPage.on classifyPage.LOAD_SUBJECT, ->
  $('input[name="marking"][value="adult"]').click()
