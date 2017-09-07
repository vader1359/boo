require 'rails_helper'

RSpec.describe 'Behance API', type: :request do
  # Test suite for GET /designs
  describe 'GET API page' do
    context "User go to the home page" do
      base_url = "https://www.behance.net/v2/projects?"
      ui_field = "ui%2Fux"
      client_id = ENV["BEHANCE_CLIENT"]
      behance_url = "#{base_url}field=#{}&client_id=#{client_id}"
      
      # make HTTP get request before each example
      before { get '/' }
      
      it 'should the behance_url be corrected' do
        expect(behance_url).to eq("https://www.behance.net/v2/projects?field=&client_id=dNPpNVimepzJIOPUQECK0838tQgYR2sT")
      end
      
      it "should the json gotten from behance_url not empty" do
        json_data = HTTP.get(behance_url)
        data = JSON.parse(json_data)
        expect(data.class).to eq(Hash)
      end
    end
    
    # behance_url = "#{base_url}field=#{}&q=#{query}&client_id=#{client_id}"
    # json_data = HTTP.get(behance_url)
    # data = JSON.parse(json_data)
    # @design_list = data["projects"].shuffle![0..99].map {|design| design["covers"]["original"]}
    
    
  end
  
end
