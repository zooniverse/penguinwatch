currentProject = require 'zooniverse-readymade/current-project'
Dialog = require 'zooniverse/controllers/dialog'
translate = require 't7e'

{decisionTree, subjectViewer} = currentProject.classifyPages[0]
markingSurface = subjectViewer.markingSurface

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

markingSurface.on 'marking-surface:add-tool', (tool) ->
  count = (true for {mark} in markingSurface.tools when mark.value is tool.mark.value).length

  if count > LIMIT
    stopThatDialog.show() unless hasBeenOpened
    stopThatDialog.el.find('button').focus()
    hasBeenOpened = true
  
  setTimeout => # ewwwwwww
    t7e.refresh()