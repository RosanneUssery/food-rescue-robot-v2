class CreateScheduleChains < ActiveRecord::Migration[6.1]
  def change
    create_table :schedule_chains do |t|
      t.time :detailed_start_time
      t.time :detailed_stop_time
      t.date :detailed_date
      t.references :transport_type, null: false, foreign_key: true
      t.boolean :backup
      t.boolean :temporary
      t.boolean :irregular
      t.integer :difficulty_rating
      t.integer :hilliness
      t.references :scale_type, null: false, foreign_key: true
      t.references :region, null: false, foreign_key: true
      t.text :frequency
      t.integer :day_of_week
      t.integer :expected_weight
      t.text :public_notes
      t.text :admin_notes
      t.integer :num_volunteers
      t.boolean :active

      t.timestamps
    end
  end
end
