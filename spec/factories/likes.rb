FactoryGirl.define do
  factory :like do
    user_id {User.first.id}
    # item_id {}
  end
end
