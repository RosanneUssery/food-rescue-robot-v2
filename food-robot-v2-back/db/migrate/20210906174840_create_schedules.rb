class CreateSchedules < ActiveRecord::Migration[6.1]
  def change
    create_table :schedules do |t|
      t.references :schedule_chain, null: false, foreign_key: true
      t.references :location, null: false, foreign_key: true
      t.integer :position

      t.timestamps
    end
  end
end
