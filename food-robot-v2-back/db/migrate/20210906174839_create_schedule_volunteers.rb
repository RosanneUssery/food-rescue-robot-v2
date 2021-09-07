class CreateScheduleVolunteers < ActiveRecord::Migration[6.1]
  def change
    create_table :schedule_volunteers do |t|
      t.references :volunteer, null: false, foreign_key: true
      t.boolean :active
      t.references :schedule_chain, null: false, foreign_key: true

      t.timestamps
    end
  end
end
