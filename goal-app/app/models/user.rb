class User < ApplicationRecord
  validates :username, :session_token, :password_digest, presence: true

end