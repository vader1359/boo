class CreateDesigns < ActiveRecord::Migration[5.1]
  def change
    create_table :designs do |t|
      t.references :user, foreign_key: true
      t.integer :parts, default: Array(1..12), array: true

      t.timestamps
    end
  end
end
