class @ApplicationPage extends Joosy.Page

  @beforePaint (container, complete) ->
    #@layout.showSystemPreloader() if !@data
    complete()

  @paint (container, complete) ->
    #@layout.hideSystemPreloader()
    container.fadeTo 80, 0, =>
      complete().fadeTo 400, 1

  @erase (container, complete) ->
    container.fadeTo 320, 0.2, =>
      complete()