require 'rails_helper'

# Validation test
RSpec.describe Like, type: :model do
  describe "Test the validation when create and save a Like to database" do
    context "do Like.create given some attributes" do
      it {should belong_to(:user)}
      it {should validate_presence_of(:item_id)}
      it {should validate_presence_of(:item_type)}
    end
  end
end


# Association test

# Instance method test