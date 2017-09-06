class AddDesignIdToViews < ActiveRecord::Migration[5.1]
  def change
    add_reference :views, :design, foreign_key: true
  end
end
