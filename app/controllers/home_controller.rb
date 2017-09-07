class HomeController < ApplicationController
  def index
    url = "https://www.behance.net/v2/projects/?api_key=dNPpNVimepzJIOPUQECK0838tQgYR2sT"
    json_data = HTTP.get(url)
    data = JSON.parse(json_data)
    @design_list = data["projects"][0..99].map {|design| design["covers"]["original"]}
    @design_list.shuffle!
  end
  
  def test
    url = "https://www.behance.net/v2/projects/?api_key=dNPpNVimepzJIOPUQECK0838tQgYR2sT"
    json_data = HTTP.get(url)
    data = JSON.parse(json_data)
    @design_list = data["projects"][0..99].map {|design| design["covers"]["original"]}
    @design_list.shuffle!
  end
end
