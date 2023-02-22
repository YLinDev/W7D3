require 'rails_helper'
require 'shoulda-matchers'

RSpec.describe User, type: :model do
  describe "validations" do 
    it { should validate_presence_of(:username) }
    it { should validate_presence_of(:session_token) }
    it { should validate_presence_of(:password_digest) }
  end

end
