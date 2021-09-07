class CreateFoodTypes < ActiveRecord::Migration[6.1]
  def change
    create_table :food_types do |t|
      t.string :name
      t.references :region, null: false, foreign_key: true
      t.boolean :active

      t.timestamps
    end
  end
end
