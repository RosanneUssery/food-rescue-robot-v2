class CreateScheduleParts < ActiveRecord::Migration[6.1]
  def change
    create_table :schedule_parts do |t|
      t.references :schedule, null: false, foreign_key: true
      t.references :food_type, null: false, foreign_key: true
      t.boolean :required

      t.timestamps
    end
  end
end
