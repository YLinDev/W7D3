FactoryBot.define do
  factory :user do
    # username { Faker::Movies::HarryPotter.character }
    # password { Faker::Internet::password }
    # password_digest { BCrypt::Password.create(password, cost: 4) }
    # session_token { SecureRandom::urlsafe_base64 }
    username { "MyString" }
    session_token { "MyString" }
    password_digest { "MyString" }
  end
end
