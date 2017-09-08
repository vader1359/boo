require 'rails_helper'

RSpec.describe 'Behance API', type: :request do
  before(:each) do
    base_url = "https://www.behance.net/v2/projects?"
    ui_field = "ui%2Fux"
    client_id = ENV["BEHANCE_CLIENT"]
    behance_url = "#{base_url}field=#{}&client_id=#{client_id}"
  end
  # Test suite for GET /designs
  describe 'GET API page' do
    context "User go to the home page" do
      
      # make HTTP get request before each example
      before { get '/' }
      
      it 'should the behance_url be corrected' do
        expect(behance_url).to eq("https://www.behance.net/v2/projects?field=&client_id=dNPpNVimepzJIOPUQECK0838tQgYR2sT")
      end
      
      it "should the json gotten from behance_url not empty & data type is Hash" do
        json_data = HTTP.get(behance_url)
        data = JSON.parse(json_data)
        expect(data).not_to be_empty
        expect(data.class).to eq(Hash)
      end
      
      it "should the data in response attribute not empty" do
        json_data = HTTP.get(behance_url)
        data = JSON.parse(json_data)
        expect(data["projects"]).not_to be_empty
        project = data["projects"].first
        expect(project["covers"]["original"]).not_to be_empty
        # owner = project["owners"].first
        # expect(owner["display_name"]).not_to be_empty
        # expect(owner["id"]).not_to be_empty
        # expect(owner["images"]["100"]).not_to be_empty
        # expect(owner["comments"]).not_to be_empty
        
      end
      
      it "should the design_list not be empty" do
        json_data = HTTP.get(behance_url)
        data = JSON.parse(json_data)
        @design_list = data["projects"].shuffle![0..39].map {|design| design["covers"]["original"]}
        expect(@design_list).not_to be_empty
        expect(@design_list.count).to eq(40)
        
      end
    end
    
  end
  
  describe "Create fake design based on Behance API" do
    describe "Create fake user" do
      context "do User.create based on API response" do
        base_url = "https://www.behance.net/v2/projects?"
        ui_field = "ui%2Fux"
        client_id = ENV["BEHANCE_CLIENT"]
        behance_url = "#{base_url}field=#{}&client_id=#{client_id}"
        before(:each) do
          json_data = HTTP.get(behance_url)
          data = JSON.parse(json_data)
          project = data["projects"].first
          owner = project["owners"].first
        end
        
        it "Test if the attributes need for creating User not empty" do
          expect(owner).not_to be_empty
          expect(owner["display_name"]).not_to be_empty
          expect(owner["id"]).not_to be_empty
          expect(owner["images"]["100"]).not_to be_empty
          expect(owner["comments"]).not_to be_empty
        end
        
        it "Test if user created matched with given attributes" do
          user = User.create(
          name: owner["display_name"],
          email: "#{owner["id"]}@ianmail.com",
          password: "abcdef"
          )

          expect(user.name).to eq(owner["display_name"])
        end
      end
    end
  end
  
  
end
