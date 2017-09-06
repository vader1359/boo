class Comment < ApplicationRecord
  validates :body, presence: true
  validates :parts, presence: true
  validates :comment_type, presence: true

  belongs_to :user
  belongs_to :design
  has_many :likes, as: :item


  enum comment_type: {
    neutral: 0,
    good: 1,
    bad: 2
  }
  
  belongs_to :user
end
