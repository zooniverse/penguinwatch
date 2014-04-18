BasePoint = require 'zooniverse-readymade/lib/drawing-tools/point'

class Pinpoint extends BasePoint
  constructor: ->
    super

    @ticks.el.style.display = 'none'
    @disc.el.style.display = 'none'

    @pin = @addShape 'path', stroke: 'currentColor', fill: 'transparent'
    @addEvent 'move', 'path', @onMove

  rescale: (scale) ->
    super

    radius = (@radius * 2) / scale
    strokeWidth = @strokeWidth / scale

    @pin.attr
      strokeWidth: strokeWidth,
      d: """
        M 0 0
        C 0 #{radius * (-25 / 100)} #{radius * (-33 / 100)} #{radius * (-45 / 100)} #{radius * (-33 / 100)} #{radius * (-67 / 100)}
        S #{radius * (-15 / 100)} #{radius * (-100 / 100)} 0 #{radius * (-100 / 100)}
        S #{radius * (33 / 100)} #{radius * (-85 / 100)} #{radius * (33 / 100)} #{radius * (-67 / 100)}
        S 0 #{radius * (-25 / 100)} 0 0
        Z
      """

  onMove: (e) ->
    {x, y} = @coords e
    x += -10
    y += 20
    @mark.set {x, y}

  render: ->
    super

module.exports = Pinpoint
