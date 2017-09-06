FactoryGirl.define do
  factory :comment do
    user nil
    body {"This is such a great design"}
    parts {Array(1..12)}
    comment_type {:good}

  end
end
