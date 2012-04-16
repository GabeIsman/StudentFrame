class Post < ActiveRecord::Base
  belongs_to :blog

  has_attached_file :image0
  has_attached_file :image1
  has_attached_file :image2
end
