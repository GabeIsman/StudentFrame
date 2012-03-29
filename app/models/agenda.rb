class Agenda < ActiveRecord::Base
  has_many :articles
  has_many :blogs
end
