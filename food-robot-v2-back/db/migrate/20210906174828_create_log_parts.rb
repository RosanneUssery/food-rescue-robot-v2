class CreateLogParts < ActiveRecord::Migration[6.1]
  def change
    create_table :log_parts do |t|
      t.references :log, null: false, foreign_key: true
      t.references :food_type, null: false, foreign_key: true
      t.boolean :required
      t.decimal :weight
      t.integer :count
      t.text :description

      t.timestamps
    end
  end
end
