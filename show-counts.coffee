currentProject = require 'zooniverse-readymade/current-project'
$ = window.jQuery

classifyPage = currentProject.classifyPages[0]
{subjectViewer, decisionTree} = classifyPage

# NOTE: This is super super hacky.
# Doing this for real will require a better DecisionTree class.

badges = {}

$(decisionTree.el).on decisionTree.LOAD_TASK, ({originalEvent: detail: {task}}) ->
  if task.type is 'drawing'
    labels = $(decisionTree.el).find '[data-task-type="drawing"] .readymade-choice-label'
    for choice, i in task.choices
      badges[choice.value] = $('<span class="count-badge" data-count="0">0</span>')
      badges[choice.value].insertAfter labels[i]

subjectViewer.el.on 'add-tool', ({originalEvent: detail: [ms, tool]}) ->
  count = parseFloat(badges[tool.value].html()) + 1
  badges[tool.value].html count
  badges[tool.value].attr 'data-count', count

subjectViewer.el.on 'remove-tool', ({originalEvent: detail: [ms, tool]}) ->
  count = parseFloat(badges[tool.value].html()) - 1
  badges[tool.value].html count
  badges[tool.value].attr 'data-count', count
