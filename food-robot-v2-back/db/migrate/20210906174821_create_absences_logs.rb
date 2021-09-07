class CreateAbsencesLogs < ActiveRecord::Migration[6.1]
  def change
    create_table :absences_logs do |t|
      t.references :absence, null: false, foreign_key: true
      t.references :log, null: false, foreign_key: true

      t.timestamps
    end
  end
end
