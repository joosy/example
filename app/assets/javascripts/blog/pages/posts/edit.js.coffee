Joosy.namespace 'Posts', ->

  class @EditPage extends ApplicationPage
    @layout ApplicationLayout
    @view   'edit'

    elements:
      'rawForm': 'form'

    @fetch (complete) ->
      Post.find @params.id, (post) =>
        @data.post = post
        complete()

    @afterLoad ->
      @form = Joosy.Form.attach @rawForm,
        resource: @data.post
        success: (data) => @navigate '/'