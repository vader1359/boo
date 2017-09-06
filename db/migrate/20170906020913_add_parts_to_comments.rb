class AddPartsToComments < ActiveRecord::Migration[5.1]
  def change
    add_column :comments, :parts, :integer, array: true, default: []
  end
end
