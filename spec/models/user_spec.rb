require 'rails_helper'

RSpec.describe User, type: :model do
  
  # Validation test
  # THE Validation test is handled by Devise libirary 

  # Association test
  describe "test the association between User and other models" do
    context "Add a relationship to User" do
      it {should have_many(:designs).dependent(:destroy)}
      it {should have_many(:likes).dependent(:destroy)}
      it {should have_many(:comments).dependent(:destroy)}
      it {should have_many(:views).dependent(:destroy)}
    end
  end
  
  # Instance method test
end



