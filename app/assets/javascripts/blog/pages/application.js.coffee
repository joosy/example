# Base ancestor of every page you use
class @ApplicationPage extends Joosy.Page

  # Happens when previous page was unloaded and hidden
  @beforePaint (container, complete) ->
    complete()

  # Determines the way new page will appear
  @paint (container, complete) ->
    container.fadeTo 80, 0, =>
      complete().fadeTo 400, 1

  # Determines the way page will be hidden
  @erase (container, complete) ->
    container.fadeTo 320, 0.2, =>
      complete()