require 'rails_helper'

RSpec.describe View, type: :model do
  describe "test the validation of View when created and save to database" do
    context "call View.create given some attributes" do
      it {should belong_to(:user)}
      it {should belong_to(:design)}
      
    end
  end
end
