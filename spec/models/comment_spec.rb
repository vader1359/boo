require 'rails_helper'


RSpec.describe Comment, type: :model do
  # Validation test
  describe "test the validation of Comment when created and save to database" do
    context "create a Comment with given attributes" do
      it {should validate_presence_of(:body)}
      it {should validate_presence_of(:parts)}
      it {should validate_presence_of(:comment_type)}
    end
  end

  # Association test
  describe "test the association of Comment with other models" do
    context "add relationship to Comment.rb" do
      it {should belong_to(:user)}
      it {should belong_to(:design)}
      it {should have_many(:likes)}
    end
  end

  # Instance method test
end





