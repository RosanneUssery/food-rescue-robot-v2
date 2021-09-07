class CreateVolunteers < ActiveRecord::Migration[6.1]
  def change
    create_table :volunteers do |t|
      t.string :email
      t.string :name
      t.string :phone
      t.string :preferred_contact
      t.boolean :has_car
      t.text :admin_notes
      t.text :pickup_prefs
      t.boolean :is_disabled
      t.boolean :on_email_list
      t.string :encrypted_password
      t.string :reset_password_token
      t.datetime :reset_password_sent_at
      t.datetime :remember_created_at
      t.integer :sign_in_count
      t.datetime :current_sign_in_at
      t.datetime :last_sign_in_at
      t.string :current_sign_in_ip
      t.string :last_sign_in_ip
      t.boolean :admin
      t.references :transport_type, null: false, foreign_key: true
      t.references :cell_carrier, null: false, foreign_key: true
      t.boolean :sms_too
      t.boolean :pre_reminders_too
      t.string :photo_file_name
      t.string :photo_content_type
      t.integer :photo_file_size
      t.datetime :photo_updated_at
      t.boolean :get_sncs_email
      t.boolean :waiver_signed
      t.datetime :waiver_signed_at
      t.boolean :assigned
      t.references :requested_region, null: false, foreign_key: true
      t.string :authentication_token
      t.boolean :active

      t.timestamps
    end
  end
end
