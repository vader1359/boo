require 'rails_helper'

# Validation test
RSpec.describe User, type: :model do
  describe "self.create" do
    it "check the email" do
      user = build(:user, name: "Tan")
      expect(user.email).to eq("tanFuck")
    end
  end
end

# Relationship test

# Instance method test

