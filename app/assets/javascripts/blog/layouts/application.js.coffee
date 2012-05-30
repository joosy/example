# This is the basic layout of our application. In current project there's just one layout
# but you can manage a lot of them. This one will be generated and used by default.
class @ApplicationLayout extends Joosy.Layout
  # Determines which template at `templates/layouts` folder to use
  @view 'application'

  # Maps DOM selectors (on the right) to instance variables (on the left)
  elements:
    'navigationBar': '.navbar'
    'clocks':        '.navbar .pull-right a'

  # Binds events to given selectors
  events:
    'mouseenter $navigationBar': -> @clocks.show()
    'mouseleave $navigationBar': -> @clocks.hide()

  # Happens just after the page was loaded. Makes layout clock alive.
  @afterLoad ->
    updateClocks = => 
      @clocks.html new Date().format('{dd} {Mon} {yyyy}, {hh}:{mm}:{ss}')

    updateClocks()
    # Joosy wrapper for setInterval method. 
    # Automaticaly clears when the layout gets inactive.
    @setInterval 1000, updateClocks