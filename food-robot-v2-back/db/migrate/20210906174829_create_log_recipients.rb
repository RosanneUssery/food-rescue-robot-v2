class CreateLogRecipients < ActiveRecord::Migration[6.1]
  def change
    create_table :log_recipients do |t|
      t.references :log, null: false, foreign_key: true
      t.references :recipient, null: false, foreign_key: true

      t.timestamps
    end
  end
end
