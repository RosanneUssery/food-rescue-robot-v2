class CreateLocations < ActiveRecord::Migration[6.1]
  def change
    create_table :locations do |t|
      t.string :recip_category
      t.string :donor_type
      t.text :address
      t.string :name
      t.decimal :lat
      t.decimal :lng
      t.text :contact
      t.string :website
      t.text :admin_notes
      t.text :public_notes
      t.text :hours
      t.references :region, null: false, foreign_key: true
      t.string :twitter_handle
      t.string :receipt_key
      t.text :detailed_hours_json
      t.text :email
      t.text :phone
      t.text :equipment_storage_info
      t.text :food_storage_info
      t.text :entry_info
      t.text :exit_info
      t.text :onsite_contact_info
      t.boolean :active
      t.integer :location_type

      t.timestamps
    end
  end
end
