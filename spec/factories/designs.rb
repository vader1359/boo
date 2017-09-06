FactoryGirl.define do
  factory :design do
    user {User.first}
    parts {[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12]}
    image {"https://i.pinimg.com/originals/b6/f5/a9/b6f5a950d08fba8f2e569e3d3d0315d5.png"}
  end
end
