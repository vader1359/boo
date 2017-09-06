class AddDesignIdToLikes < ActiveRecord::Migration[5.1]
  def change
    add_reference :likes, :design, foreign_key: true
  end
end
