class Like < ApplicationRecord
  validates :item_type, presence: true

  belongs_to :user
  belongs_to :item, polymorphic: true
  
end
