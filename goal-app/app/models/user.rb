class User < ApplicationRecord
  validates :username, :session_token, :password_digest, presence: true
  validates :password, presence: true, length: { minimum: 6 }

  # before_validation :ensure_session_token

  attr_reader :password

  def password=(password)
    self.password_digest = BCrypt::Password.create(password)
    @password = password
  end

  def self.find_by_credentials(username, password)
    user = User.find_by(username: username)
    # user&.is_password?(password)? user : nil
    if user && user.is_password?(password)
      user
    else
      nil
    end
  end

  def is_password?(password)
    BCrypt::Password.new(self.password_digest).is_password?(password)
  end

  def ensure_session_token
    self.session_token ||= SecureRandom::urlsafe_base64
  end

  has_many :comments 
  has_many :cheers 
  has_many :goals

end