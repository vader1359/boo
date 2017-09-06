class AddDesignToComments < ActiveRecord::Migration[5.1]
  def change
    add_reference :comments, :design, foreign_key: true
  end
end
