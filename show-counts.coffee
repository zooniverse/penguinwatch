currentProject = require 'zooniverse-readymade/current-project'
$ = window.jQuery

classifyPage = currentProject.classifyPages[0]
{subjectViewer, decisionTree} = classifyPage
{markingSurface} = subjectViewer
decisionTreeEl = $(decisionTree.el)

window.dt = decisionTree

# NOTE: This is super super hacky.
# Doing this for real will require a better DecisionTree class.

badges = {}

getCount = (value) ->
  (mark for {mark} in markingSurface.tools when mark.value is value).length

decisionTreeEl.on decisionTree.LOAD_TASK, ({originalEvent: detail: {task}}) ->
  if task.type is 'drawing'
    labels = decisionTreeEl.find '[data-task-type="drawing"] .readymade-choice-label'
    for {value}, i in task.choices
      count = getCount value
      badges[value]?.remove()
      badges[value] = $("<span class='count-badge' data-count='#{count}'>#{count}</span>")
      badges[value].insertAfter labels[i]

markingSurface.on 'marking-surface:add-tool', (tool) ->
  count = getCount tool.mark.value
  badges[tool.mark.value].html count
  badges[tool.mark.value].attr 'data-count', count

markingSurface.on 'marking-surface:remove-tool', (tool) ->
  count = getCount tool.mark.value
  badges[tool.mark.value].html count
  badges[tool.mark.value].attr 'data-count', count
