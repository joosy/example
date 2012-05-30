class Post < ActiveRecord::Base
  attr_accessible :body, :comments_count, :title

  has_many :comments

  validates :body, :presence => true
  validates :title, :presence => true
end
