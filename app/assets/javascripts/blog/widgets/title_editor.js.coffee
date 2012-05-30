class @TitleEditorWidget extends Joosy.Widget
  # Determines which template at `templates/widgets` folder to use
  @view 'title_editor'

  # Includes namespaced helpers to this widget's view
  @helpers 'Pirates'

  constructor: (post) ->
    # Passes post to the template
    @data = post: post

  # Maps DOM selectors (on the right) to instance variables (on the left)
  elements:
    'titlePane': 'h1'
    'titleForm': 'form'

  # Binds events to given selectors
  events:
    'click $titlePane': (element) ->
      @titlePane.hide()
      @titleForm.show()

  # Happens just after the widget was loaded. Activates form.
  @afterLoad ->
    Joosy.Form.attach @titleForm,
      resource: @data.post
      success: =>
        @data.post('title', @titleForm.find('input[type=text]').val())
        @titleForm.hide()
        @titlePane.show()