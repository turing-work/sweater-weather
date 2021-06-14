class User < ApplicationRecord
  has_secure_password
  has_secure_token :auth_token

  validates :email, presence: true, uniqueness: true
  validates :password_digest, presence: true
end