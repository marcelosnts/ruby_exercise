class User < ApplicationRecord  
  has_secure_password

  validates_uniqueness_of :email, :message => :user_exist

  validates_presence_of :full_name
  validates_presence_of :email
  validates_presence_of :avatar_image
  validates_presence_of :role
  validates_presence_of :password
  validates_presence_of :password_confirmation
end
