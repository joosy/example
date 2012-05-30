Joosy.namespace 'Posts', ->

  class @ShowPage extends ApplicationPage
    @layout ApplicationLayout
    @view   'show'

    @fetch (complete) ->
      Post.find @params.id, (post) =>
        @data.post = post
        complete()