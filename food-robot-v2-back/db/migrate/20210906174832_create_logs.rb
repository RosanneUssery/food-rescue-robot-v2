class CreateLogs < ActiveRecord::Migration[6.1]
  def change
    create_table :logs do |t|
      t.date :when
      t.text :notes
      t.integer :num_reminders
      t.boolean :flag_for_admin
      t.references :donor, null: false, foreign_key: true
      t.references :transport_type, null: false, foreign_key: true
      t.references :region, null: false, foreign_key: true
      t.boolean :complete
      t.references :scale_type, null: false, foreign_key: true
      t.string :weight_unit
      t.references :schedule_chain, null: false, foreign_key: true
      t.integer :num_volunteers
      t.integer :why_zero
      t.decimal :hours_spent

      t.timestamps
    end
  end
end
