class BlogController < ApplicationController
  helper 'joosy/sprockets'

  def index
    render nothing: true, layout: 'blog'
  end
end
