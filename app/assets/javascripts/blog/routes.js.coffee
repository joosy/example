# Path is on the left and the resulting page (or lambda to call) is on the right
Joosy.Router.map
  # Wildcard route. If nothing matched will fallback here.
  404             : (path) -> alert "Page '#{path}' was not found :("
  # Typical redirect to another path
  '/'             : -> @navigate '/posts'
  # Set of routes for the posts
  '/posts'        :
    '/'           : Posts.IndexPage
    '/new'        : Posts.NewPage
    '/:id/edit'   : Posts.EditPage
    '/:id'        : Posts.ShowPage