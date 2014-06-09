currentProject = require 'zooniverse-readymade/current-project'
Dialog = require 'zooniverse/controllers/dialog'
translate = require 't7e'

{decisionTree, subjectViewer} = currentProject.classifyPages[0]

LIMIT = 25

hasBeenOpened = false

stopThatDialog = new Dialog
  warning: true
  content: """
    <form><button type="button" name="close-dialog">&times;</button>
    #{translate 'div', 'limitNumberOfMarks'}
  """

$(decisionTree.el).on decisionTree.RESET, ->
  hasBeenOpened = false

subjectViewer.el.on 'add-tool', ({originalEvent: detail: [ms, tool]}) ->
  count = (true for {mark} in ms.tools when mark.value is tool.mark.value).length

  if count > LIMIT
    stopThatDialog.show() unless hasBeenOpened
    hasBeenOpened = true

    # setTimeout ->
    #   tool.mark.destroy()
