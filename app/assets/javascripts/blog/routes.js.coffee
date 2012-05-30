Joosy.Router.map
  404             : (path) -> alert "Page '#{path}' was not found :("
  '/'             : -> @navigate '/posts'
  '/posts'        :
    '/'           : Posts.IndexPage
    '/new'        : Posts.NewPage
    '/:id/edit'   : Posts.EditPage
    '/:id'        : Posts.ShowPage