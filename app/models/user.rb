class User < ApplicationRecord
  validates :username, presence: true, uniqueness: { case_sensitive: false }, length: { minimum: 3, maximium: 20 }
  has_many :messages
  has_secure_password
end
