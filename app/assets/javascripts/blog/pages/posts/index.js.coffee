Joosy.namespace 'Posts', ->
  
  # Page that lists posts
  class @IndexPage extends ApplicationPage
    # Deterimes which Layout to wrap this page in
    @layout ApplicationLayout
    # Determines which template at `templates/pages/posts` folder to use
    @view   'index'

    # Data fetching hook
    @fetch (complete) ->
      Post.find 'all', (posts) =>
        # Passes collection to the template
        @data.posts = posts
        complete()