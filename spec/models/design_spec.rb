require 'rails_helper'

# Validate test
RSpec.describe Design, type: :model do
  describe "test the validation when create a Design and save it to database" do
    context "Calling Design.create will do" do 
      it {should belong_to(:user)}
      it {should have_many(:comments)}
      it {should have_many(:likes).as(:item)}
      it {should have_many(:views)}
    end
  end
end

# Association test

# Instance methods test
