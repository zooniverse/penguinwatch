currentProject = require 'zooniverse-readymade/current-project'
Dialog = require 'zooniverse/controllers/dialog'
translate = require 't7e'

{decisionTree, subjectViewer} = currentProject.classifyPages[0]

LIMIT = 30

hasBeenOpened = false

stopThatDialog = new Dialog
  warning: true
  content: """
    <p>#{translate 'div', 'limitNumberOfMarks'}</p>
    <div class="action">#{translate 'button', 'limitNumberOfMarksDismiss', name: 'close-dialog'}</div>
  """

$(decisionTree.el).on decisionTree.RESET, ->
  hasBeenOpened = false

subjectViewer.el.on 'add-tool', ({originalEvent: detail: [ms, tool]}) ->
  count = (true for {mark} in ms.tools when mark.value is tool.mark.value).length

  if count > LIMIT
    stopThatDialog.show() unless hasBeenOpened
    hasBeenOpened = true
