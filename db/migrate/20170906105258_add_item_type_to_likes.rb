class AddItemTypeToLikes < ActiveRecord::Migration[5.1]
  def change
    add_column :likes, :item_type, :string
  end
end
