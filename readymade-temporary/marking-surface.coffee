MarkingSurface = require 'marking-surface'

MarkingSurface.prototype.rescale = (x, y, width, height) ->
  root = @root.el.getBoundingClientRect()
  return if root.width is 0 # don't rescale when surface isn't visible
  return unless @maxWidth? # don't rescale until image has been loaded
  currentViewBox = @svg.attr('viewBox')?.split /\s+/
  x ?= parseInt currentViewBox?[0] ? 0
  y ?= parseInt currentViewBox?[1] ? 0
  width ?= parseInt currentViewBox?[2] ? @maxWidth
  height ?= parseInt currentViewBox?[3] ? @maxHeight
  @svg.attr 'viewBox', [x, y, width, height].join ' '
  
  root = @root.el.getBoundingClientRect()
  @scaleX = root.width / @maxWidth
  @scaleY = root.height / @maxHeight
  @magnification = (@scaleX + @scaleY) / 2
  
  # recalculate the viewbox so that the aspect ratio matches the SVG element
  w = parseInt @svg.attr 'width'
  h = parseInt @svg.attr 'height'
  w = w / @scaleX
  h = h / @scaleY
  x = x + .5 * (width - w)
  y = y + .5 * (height - h)
  x = Math.max x, 0
  y = Math.max y, 0
  x = Math.min x, @maxWidth - w
  y = Math.min y, @maxHeight - h
  @svg.attr 'viewBox', [x, y, w, h].join ' '
  @renderTools()

MarkingSurface.prototype.screenPixelToScale = ({x, y}) ->
  if @svg.el.viewBox.animVal?
    x = x / @scaleX
    y = y / @scaleY
    viewBox = @svg.el.viewBox.animVal
    x += viewBox.x
    y += viewBox.y
  {x, y}

MarkingSurface.prototype.scalePixelToScreen = ({x, y}) ->
  if @svg.el.viewBox.animVal?
    viewBox = @svg.el.viewBox.animVal
    x -= viewBox.x
    y -= viewBox.y
    x = x * @scaleX
    y = y * @scaleY
  {x, y}