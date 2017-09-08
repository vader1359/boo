# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Seed designs from Behance

def random_parts
  rand(10..82)
end

def fake_parts
  array = []
  rand(1..5).times { array << rand(1..12) }
  array
end

def fake_comment
  comments = [
  "Your design is so good, I appreciate it.",
  "Hey I have a good job for you as Graphic Design",
  "Do you want to work for me?",
  "Do you know how to draw this UI/UX",
  "Hey can you comment on my design?",
  "You need to make it bigger",
  "It's really difficult to see that button",
  "The structure is not good at all"
]
end

if Design.all.count == 0 
  base_url = "https://www.behance.net/v2/projects?"
  ui_field = "ui%2Fux"
  query = "ios"
  client_id = ENV["BEHANCE_CLIENT"]
  behance_url = "#{base_url}field=#{}&q=#{query}&client_id=#{client_id}&per_page=50"
  
  json_data = HTTP.get(behance_url)
  data = JSON.parse(json_data)
  
  @design_list = data["projects"].shuffle![0..99].map do |project|
    owner = project["owners"].first
    design = Design.create(
    user: User.new(
    name: owner["display_name"],
    email: "#{owner["id"]}@ianmail.com",
    password: "abcdef"
    ),
    image: project["covers"]["original"])
    
    random_parts.times {View.create(user: User.all.sample, design_id: design.id)}
    
    
    random_parts.times {
    Like.create!(
    user:User.all.sample, 
    item_id: design.id, 
    item_type: "Design")}
    
    
    
    random_parts.times {
    Comment.create!(
    user:User.all.sample, 
    design: Design.all.sample,
    body: fake_comment.sample, 
    parts: fake_parts, 
    comment_type: ["good", "bad", "neutral"].sample)}
    
    design
  end

end






