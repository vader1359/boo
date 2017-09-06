require 'rails_helper'

RSpec.describe View, type: :model do
  # Validation test
  
  # Association test
  describe "test the association of View with other models" do
    context "Add a relationship to view.rb" do
      it {should belong_to(:user)}
      it {should belong_to(:design)}
    end
  end
end
