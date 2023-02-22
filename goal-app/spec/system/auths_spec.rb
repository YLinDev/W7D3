require 'rails_helper'

RSpec.describe "Auths", type: :system do
  before do
    driven_by(:rack_test)
  end

  describe "the sign up process" do
    it "has a new user page"
    it "shows username on the homepage after signup"
  end

  describe "logging in" do
    it "shows username on the homepage after login"
  end

  describe "logging out" do
    it "begins with a logged out state"
    it "doesn't show username on the homepage after logout"
  end
end
