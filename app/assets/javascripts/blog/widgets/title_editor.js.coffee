class @TitleEditorWidget extends Joosy.Widget
  @view 'title_editor'

  @helpers 'Pirates'

  constructor: (post) ->
    @data = post: post

  elements:
    'titlePane': 'h1'
    'titleForm': 'form'

  events:
    'click $titlePane': (element) ->
      @titlePane.hide()
      @titleForm.show()

  @afterLoad ->
    Joosy.Form.attach @titleForm,
      resource: @data.post
      success: =>
        @data.post('title', @titleForm.find('input[type=text]').val())
        @titleForm.hide()
        @titlePane.show()