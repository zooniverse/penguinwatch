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
    site = subject.metadata.path.split('/')[1].split('_')[0]

    {width, height} = classifyPage.subjectViewer.markingSurface.svg.el.viewBox.animVal

    scaleX = subject.metadata.original_size.width / width
    scaleY = subject.metadata.original_size.height / height

    # Reverse the points so they're counterclockwise and knock out the clockwise outer shape.
    nestingPoints = roi[site].slice(0).reverse()

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
