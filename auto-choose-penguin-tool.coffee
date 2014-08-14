currentProject = require 'zooniverse-readymade/current-project'
$ = window.jQuery

{decisionTree} = currentProject.classifyPages[0]

$(decisionTree.el).on decisionTree.LOAD_TASK, ({originalEvent: detail: {task}}) ->
  if task.type is 'drawing'
    $('input[name="marking"][value="adult"]').click()
