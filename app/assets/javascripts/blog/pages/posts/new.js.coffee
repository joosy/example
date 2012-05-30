Joosy.namespace 'Posts', ->

  class @NewPage extends ApplicationPage
    @layout ApplicationLayout
    @view   'new'

    elements:
      'rawForm': 'form'

    @fetch (complete) ->
      @data.post = Post.build()
      complete()

    @afterLoad ->
      @form = Joosy.Form.attach @rawForm,
        resource: @data.post
        success: (data) => @navigate '/'