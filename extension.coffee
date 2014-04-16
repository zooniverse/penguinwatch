$ = window.jQuery
project = require 'zooniverse-readymade/current-project'
classifyPage = project.classifyPages[0]

roi = $.get('./roi.tsv').pipe (content) ->
  result = {}

  rows = content.split('\n').slice(1).filter Boolean
  rows.forEach (line) ->
    fields = line.split '\t'
    result[fields[0]] = fields[1...].map (both) ->
      coords = both.split /\,\s*/
      coords if coords.length is 2
    result[fields[0]] = result[fields[0]].filter Boolean

  result

nestingOutline = null

classifyPage.on classifyPage.LOAD_SUBJECT, (e, subject) ->
  nestingOutline?.remove()

  $.when(roi).then (roi) ->
    {width, height} = classifyPage.subjectViewer.markingSurface.svg.el.viewBox.animVal

    site = subject.metadata.site ? Object.keys(roi)[Math.floor Math.random() * Object.keys(roi).length]
    nestingPoints = roi[site].reverse() # Assuming they're stored clockwise.

    # TODO: Store original image dimensions on the subject so this can be calculated.
    # Or just use lower quality, higher res images to start with.
    scaleX = 1920 / width
    scaleY = 1080 / height

    nestingOutline = classifyPage.subjectViewer.markingSurface.addShape 'path.nesting-area',
      d: """
        M -10 -10 L #{width + 10} -10 L #{width + 10} #{height + 10} L -10 #{height + 10}
        L -10 -10

        M #{nestingPoints[0][0] / scaleX}, #{nestingPoints[0][1] / scaleY}
        #{("L #{[x / scaleX, y / scaleY]}" for [x, y] in nestingPoints[1...]).join '\n'}
        L #{nestingPoints[0][0] / scaleX}, #{nestingPoints[0][1] / scaleY}
      """

    # Bump it out of the main drawing group.
    nestingOutline.el.parentNode.parentNode.appendChild nestingOutline.el
