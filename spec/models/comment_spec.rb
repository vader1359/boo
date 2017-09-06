require 'rails_helper'

# # Validation test
RSpec.describe Comment, type: :model do
  describe "test the validation of Comment when created and save to database" do
    context "create a Comment with given attributes" do
      it {should belong_to(:user)}
      it {should belong_to(:design)}
      it {should validate_presence_of(:body)}
      it {should validate_presence_of(:parts)}
      it {should validate_presence_of(:comment_type)}
      it {should have_many(:likes).as(:item)}
    end
  end
end


# # Relationship test

# # Instance method test

