BasePoint = require 'zooniverse-readymade/lib/drawing-tools/point'

class Pinpoint extends BasePoint
  constructor: ->
    super
    @disc.attr 'class', 'pinpoint'

  rescale: (scale) ->
    super
    scaledRadius = @radius / scale

    # @ticks.attr
    #   d: """
    #     M #{-scaledRadius / 2} 0 L #{-scaledRadius / 4} 0 M #{scaledRadius / 2} 0 L #{scaledRadius / 4} 0
    #     M 0 #{-scaledRadius} L 0 #{-scaledRadius / 3} M 0 #{scaledRadius} L 0 #{scaledRadius / 3}
    #   """

    @disc.attr 'strokeWidth', 0

  render: ->
    super
    @controls.moveTo
      x: @mark.x + 20
      y: @mark.y

module.exports = Pinpoint
