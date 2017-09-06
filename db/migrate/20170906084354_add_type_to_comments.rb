class AddTypeToComments < ActiveRecord::Migration[5.1]
  def change
    add_column :comments, :comment_type, :integer
  end
end
