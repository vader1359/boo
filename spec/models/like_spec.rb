require 'rails_helper'

# Validation test
RSpec.describe Like, type: :model do
  describe "Like.create" do
    context "given no user_id" do
      it "should not allow Like created without user_id" do
        like = build(:like)
        expect(like).to eq(nil)
      end
      
      # it "should not allow Like created without item_id" do

      # end
    end
  end
end


# Relationship test

# Instance method test