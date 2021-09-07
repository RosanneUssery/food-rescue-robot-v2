class CreateLogVolunteers < ActiveRecord::Migration[6.1]
  def change
    create_table :log_volunteers do |t|
      t.references :log, null: false, foreign_key: true
      t.references :volunteer, null: false, foreign_key: true
      t.boolean :active
      t.boolean :covering

      t.timestamps
    end
  end
end
