class HomeController < ApplicationController
  def index
    base_url = "https://www.behance.net/v2/projects?"
    ui_field = "ui%2Fux"
    query = "ios"
    client_id = ENV["BEHANCE_CLIENT"]
    behance_url = "#{base_url}field=#{}&q=#{query}&client_id=#{client_id}"
    json_data = HTTP.get(behance_url)
    data = JSON.parse(json_data)
    @design_list = data["projects"].shuffle![0..99].map {|design| design["covers"]["original"]}
  end
  
  def test
    
    url = "https://www.behance.net/v2/projects/?api_key=dNPpNVimepzJIOPUQECK0838tQgYR2sT"
    json_data = HTTP.get(url)
    data = JSON.parse(json_data)
    @design_list = data["projects"][0..99].map {|design| design["covers"]["original"]}
    @design_list.shuffle!
  end
end
