class Blog < ActiveRecord::Base
  has_many :posts
  belongs_to :agenda
  belongs_to :user
end
