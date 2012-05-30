class @ApplicationLayout extends Joosy.Layout
  @view 'application'

  elements:
    'navigationBar': '.navbar'
    'clocks':        '.navbar .pull-right a'

  events:
    'mouseenter $navigationBar': -> @clocks.show()
    'mouseleave $navigationBar': -> @clocks.hide()

  @afterLoad ->
    updateClocks = => 
      @clocks.html new Date().format('{dd} {Mon} {yyyy}, {hh}:{mm}:{ss}')

    updateClocks()
    @setInterval 1000, updateClocks