class User < ActiveRecord::Base
  has_many :blogs
  has_many :articles
  has_secure_password
  
  attr_accessible :password, :password_confirmation, :email
  validates_presence_of :email
  validates_uniqueness_of :email

  def self.authenticate( email, password )
    User.find_by_email( email ).try( :authenticate, password )
  end
end
