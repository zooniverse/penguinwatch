# Default the first question to 'yes'
currentProject = require 'zooniverse-readymade/current-project'
classifyPage = currentProject.classifyPages[0]
{decisionTree} = classifyPage
  
classifyPage.el.on decisionTree.LOAD_TASK, ({originalEvent: detail: {task}})->
  task.reset 'yes' if task.key is 'animalsPresent'