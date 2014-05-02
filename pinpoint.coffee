BasePoint = require 'zooniverse-readymade/lib/drawing-tools/point'

class Pinpoint extends BasePoint
  scaledRadius: @::radius

  dragOffset:
    x: -10
    y: 20

  constructor: ->
    super

    @ticks.el.style.display = 'none'
    @disc.el.style.display = 'none'

    @pin = @addShape 'path.pinpoint', stroke: 'currentColor', fill: 'transparent'
    @addEvent 'move', 'path', @onMove

  rescale: (scale) ->
    super

    @scaledRadius = (@radius * 2) / scale
    @scaledStrokeWidth = @strokeWidth / scale

    @pin.attr
      strokeWidth: @scaledStrokeWidth
      d: """
        M 0 0
        C 0 #{@scaledRadius * (-25 / 100)} #{@scaledRadius * (-33 / 100)} #{@scaledRadius * (-45 / 100)} #{@scaledRadius * (-33 / 100)} #{@scaledRadius * (-67 / 100)}
        S #{@scaledRadius * (-15 / 100)} #{@scaledRadius * (-100 / 100)} 0 #{@scaledRadius * (-100 / 100)}
        S #{@scaledRadius * (33 / 100)} #{@scaledRadius * (-85 / 100)} #{@scaledRadius * (33 / 100)} #{@scaledRadius * (-67 / 100)}
        S 0 #{@scaledRadius * (-25 / 100)} 0 0
        Z
      """

  onMove: (e) ->
    {x, y} = @coords e
    x += @dragOffset.x
    y += @dragOffset.y
    @mark.set {x, y}

  render: ->
    super
    {x, y} = @mark
    x += @scaledRadius / 2
    y -= @scaledRadius
    @controls?.moveTo {x, y}

module.exports = Pinpoint
