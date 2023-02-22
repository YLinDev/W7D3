require 'rails_helper'
require 'shoulda-matchers'

RSpec.describe User, type: :model do
  describe "validations" do 
    it { should validate_presence_of(:username) }
    it { should validate_presence_of(:session_token) }
    it { should validate_presence_of(:password_digest) }
    it { should validate_presence_of(:password) }
    it { should validate_length_of(:password).is_at_least(6) }
  end
  
  describe "associations" do
    it { should have_many(:comments) }
    it { should have_many(:goals) }
    it { should have_many(:cheers) }  
  end
  
  describe ":find_by_credentials" do
    # before :each do
    #   create(:user)
    # end
    
    # it "returns user given good credentials" do
    #   expect(User.find_by_credentials(:user.username, :user.password)).to eq(:user)
    # end
    
    # it "returns nil given bad credentials" do
    #   expect(User.find_by_credentials(:user.username, Faker::Internet::password)).to eq(nil)
    # end

    subject(:user) do
      User.create!(
        username: 'username',
        password: 'password123',
        session_token: SecureRandom::urlsafe_base64
      )
    end

    # before { user.save! }
    
    it "returns user given good credentials" do
      expect(User.find_by_credentials('username', 'password123')).to eq(user)
    end

    it "returns nil given bad credentials" do
      expect(User.find_by_credentials('losername', 'pa$$word321')).to eq(nil)
    end

  end

end
