class User < ActiveRecord::Base
  has_secure_password
  has_many :assignments
  has_many :projects, :through => :assignments

  validates :email, uniqueness: true
  validates :email, :name, :password, :presence => true
end
