class Comment < ActiveRecord::Base
  attr_accessible :body, :post

  belongs_to :post, :counter_cache => true
end
