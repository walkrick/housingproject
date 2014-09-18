class User < ActiveRecord::Base
  has_secure_password
  
  has_many :hoas

  validates :username, presence: true, uniqueness: {case_sensitive: false}
  validates :password_digest, presence: true
  validates :email, presence: true, uniqueness: {case_sensitive: false}

end