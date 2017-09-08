class RemoveDesignIdFromLikes < ActiveRecord::Migration[5.1]
  def change
    remove_column :likes, :design_id, :string
  end
end
