class Design < ApplicationRecord
  validates :image, presence: true
  validates :parts, presence: true

  belongs_to :user
  has_many :comments
  has_many :likes, as: :item
  has_many :views
end
