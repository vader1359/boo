require 'rails_helper'


RSpec.describe Like, type: :model do
  # Validation test
  describe "Test the validation when create and save a Like to database" do
    context "do Like.create given some attributes" do
      it {should validate_presence_of(:item_type)}
    end
  end

  # Association test
  describe "Test the association with other models" do
    context "add relationship to model like" do
      it {should belong_to(:user)}
      it {should belong_to(:item)}
    end
  end
  
  # Instance method test
  
end




