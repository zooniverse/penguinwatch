# Update the confirm button label for the first task, according to the current choice.
currentProject = require 'zooniverse-readymade/current-project'
translate = require 't7e'

{decisionTree} = currentProject.classifyPages[0]
  
$(decisionTree.el).on decisionTree.LOAD_TASK, ({originalEvent: detail: {task}})->
  task.confirmButton.innerHTML = translate 'span', 'ok' if task.key is 'animalsPresent'
  
$(decisionTree.el).on decisionTree.CHANGE, ({originalEvent: detail: {key, value}}) ->
  
  if key is 'animalsPresent'
    switch value
      when 'yes'
        label = translate 'span', 'ok'
      when 'no', 'cant_tell'
        label = translate 'span', 'finish'
    
    decisionTree.tasks[key].confirmButton.innerHTML = label if label?