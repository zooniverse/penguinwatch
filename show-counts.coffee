currentProject = require 'zooniverse-readymade/current-project'
$ = window.jQuery

classifyPage = currentProject.classifyPages[0]
{subjectViewer, decisionTree} = classifyPage
markingSurface = subjectViewer.markingSurface
decisionTreeEl = $(decisionTree.el)

window.dt = decisionTree

# NOTE: This is super super hacky.
# Doing this for real will require a better DecisionTree class.

badges = {}

decisionTreeEl.on decisionTree.LOAD_TASK, ({originalEvent: detail: {task}}) ->
  if task.type is 'drawing'
    labels = decisionTreeEl.find '[data-task-type="drawing"] .readymade-choice-label'
    for choice, i in task.choices
      badges[choice.value] = $('<span class="count-badge" data-count="0">0</span>')
      badges[choice.value].insertAfter labels[i]

markingSurface.on 'marking-surface:add-tool', (tool) ->
  count = parseFloat(badges[tool.mark.value].html()) + 1
  badges[tool.mark.value].html count
  badges[tool.mark.value].attr 'data-count', count

markingSurface.on 'marking-surface:remove-tool', (tool) ->
  count = parseFloat(badges[tool.mark.value].html()) - 1
  badges[tool.mark.value].html count
  badges[tool.mark.value].attr 'data-count', count
