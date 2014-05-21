BasePoint = require 'zooniverse-readymade/lib/drawing-tools/point'

class Pinpoint extends BasePoint
  constructor: ->
    super
    @disc.attr 'class', 'pinpoint'

  rescale: (scale) ->
    super
    @disc.attr 'strokeWidth', 0

  onMove: (e) ->
    {x, y} = @coords e
    @mark.set {x, y}

  render: ->
    @attr 'transform', "translate(#{@mark.x}, #{@mark.y})"
    @controls.moveTo
      x: @mark.x + 30
      y: @mark.y

module.exports = Pinpoint
