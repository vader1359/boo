class Comment < ApplicationRecord
  enum comment_type: {
    neutral: 0,
    good: 1,
    bad: 2
  }
  
  belongs_to :user
end
