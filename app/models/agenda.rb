class Agenda < ActiveRecord::Base
  has_many :articles
  has_many :blogs
  has_attached_file :image, :styles => {:large => "500x500", :medium => "300x300", :thumb => "100x100" }
end
