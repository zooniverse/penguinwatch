$ = window.jQuery
project = require 'zooniverse-readymade/current-project'
classifyPage = project.classifyPages[0]

rois = $.get('./roi.tsv').pipe (content) ->
  result = {}

  rows = content.split('\n').slice(1).filter Boolean
  rows.forEach (line) ->
    fields = line.split '\t'
    result[fields[0]] = fields[1...].map (both) ->
      coords = both.split /\,\s*/
      coords if coords.length is 2
    result[fields[0]] = result[fields[0]].filter Boolean

  result

preScaledROIs = ['bech1', 'bech3', 'ESTAa', 'gard1', 'gard2', 'magn1', 'wlch2']

nestingOutline = null

stopPropagation = (e) ->
  e.stopPropagation()

classifyPage.on classifyPage.LOAD_SUBJECT, (e, subject) ->
  nestingOutline?.destroy()
  nestingOutline = null

  $.when(rois).then (rois) ->
    site = subject.metadata.path.split('/')[1].split('_')[0]

    {width, height} = classifyPage.subjectViewer.markingSurface.svg.el.viewBox.animVal

    if site in preScaledROIs
      [scaleX, scaleY] = [1, 1]
    else
      scaleX = subject.metadata.original_size.width / width
      scaleY = subject.metadata.original_size.height / height

    # Reverse the points so they're counterclockwise and knock out the clockwise outer shape.
    nestingPoints = rois[site]?.slice(0).reverse()

    if nestingPoints?
      nestingOutline = classifyPage.subjectViewer.markingSurface.svg.addShape 'path.nesting-area',
        d: """
          M 0 0 L #{width + 0} 0 L #{width + 0} #{height + 0} L 0 #{height + 0}
          L 0 0

          M #{nestingPoints[0][0] / scaleX}, #{nestingPoints[0][1] / scaleY}
          #{("L #{[x / scaleX, y / scaleY]}" for [x, y] in nestingPoints[1...]).join '\n'}
          L #{nestingPoints[0][0] / scaleX}, #{nestingPoints[0][1] / scaleY}
        """

      nestingOutline.addEvent 'mousedown', stopPropagation
      nestingOutline.addEvent 'touchstart', stopPropagation
      nestingOutline.addEvent 'mousemove', stopPropagation
      nestingOutline.addEvent 'touchmove', stopPropagation
