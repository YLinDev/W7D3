class User < ApplicationRecord
  validates :username, :session_token, :password_digest, presence: true

  has_many :comments 
  has_many :cheers 
  has_many :goals

end