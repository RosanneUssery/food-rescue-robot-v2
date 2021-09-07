class CreateAssignments < ActiveRecord::Migration[6.1]
  def change
    create_table :assignments do |t|
      t.references :volunteer, null: false, foreign_key: true
      t.references :region, null: false, foreign_key: true
      t.boolean :admin

      t.timestamps
    end
  end
end
