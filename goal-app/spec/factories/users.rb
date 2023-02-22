FactoryBot.define do
  factory :user do
    username { Faker::Movies::HarryPotter.character }
    # session_token { Faker::Internet.device_token }
    password_digest { BCrypt::Password.create('password', cost: 4) }
  end
end
