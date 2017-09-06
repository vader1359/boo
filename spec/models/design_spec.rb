require 'rails_helper'


RSpec.describe Design, type: :model do

  # Validation test
  describe "test the validation when create a Design and save it to database" do
    context "Calling Design.create will do" do 
      it {validate_presence_of(:image)}
      it {validate_presence_of(:parts)}

    end
  end

  # Association test
  describe "test the validation when create a Design and save it to database" do
    context "Add a relationship to Design.rb" do 
      it {should belong_to(:user)}
      it {should have_many(:comments)}
      it {should have_many(:likes)}
      it {should have_many(:views)}
    end
  end

  # Instance methods test

end




