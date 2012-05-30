Joosy.namespace 'Posts', ->
  
  # Page containing edit form
  class @NewPage extends ApplicationPage
    # Deterimes which Layout to wrap this page in
    @layout ApplicationLayout
    # Determines which template at `templates/pages/posts` folder to use
    @view   'new'

    # Maps DOM selectors (on the right) to instance variables (on the left)
    elements:
      'rawForm': 'form'

    # Data fetching hook
    @fetch (complete) ->
      # Passes post to the template
      @data.post = Post.build()
      complete()

    # Happens just after the page was loaded. Activates form.
    @afterLoad ->
      @form = Joosy.Form.attach @rawForm,
        resource: @data.post
        success: (data) => @navigate '/'