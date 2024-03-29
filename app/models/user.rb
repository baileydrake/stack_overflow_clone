class User < ActiveRecord::Base
  has_many :questions
  has_secure_password
  validates_uniqueness_of :email
end
