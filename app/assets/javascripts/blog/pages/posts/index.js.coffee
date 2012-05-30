Joosy.namespace 'Posts', ->

  class @IndexPage extends ApplicationPage
    @layout ApplicationLayout
    @view   'index'

    @fetch (complete) ->
      Post.find 'all', (posts) =>
        @data.posts = posts
        complete()