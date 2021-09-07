class CreateScaleTypes < ActiveRecord::Migration[6.1]
  def change
    create_table :scale_types do |t|
      t.string :name
      t.string :weight_unit
      t.references :region, null: false, foreign_key: true
      t.boolean :active

      t.timestamps
    end
  end
end
