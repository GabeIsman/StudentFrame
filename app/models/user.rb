class User < ActiveRecord::Base
  has_many :blogs
  has_many :articles
end
