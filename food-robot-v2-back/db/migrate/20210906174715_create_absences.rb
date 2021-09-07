class CreateAbsences < ActiveRecord::Migration[6.1]
  def change
    create_table :absences do |t|
      t.references :volunteer, null: false, foreign_key: true
      t.date :start_date
      t.date :stop_date
      t.boolean :active
      t.textrails :comments
      t.string :generate
      t.string :scaffold
      t.string :AbsencesLog
      t.references :absence, null: false, foreign_key: true
      t.referencesrails :log
      t.string :generate
      t.string :scaffold
      t.string :Assignment
      t.references :volunteer, null: false, foreign_key: true
      t.references :region, null: false, foreign_key: true
      t.booleanrails :admin
      t.string :generate
      t.string :scaffold
      t.string :CellCarrier
      t.string :name
      t.stringrails :format
      t.string :generate
      t.string :scaffold
      t.string :FoodType
      t.string :name
      t.references :region, null: false, foreign_key: true
      t.booleanrails :active
      t.string :generate
      t.string :scaffold
      t.string :Location
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
      t.integerrails :location_type
      t.string :generate
      t.string :scaffold
      t.string :LogPart
      t.references :log, null: false, foreign_key: true
      t.references :food_type, null: false, foreign_key: true
      t.boolean :required
      t.decimal :weight
      t.integer :count
      t.textrails :description
      t.string :generate
      t.string :scaffold
      t.string :LogRecipient
      t.references :log, null: false, foreign_key: true
      t.referencesrails :recipient
      t.string :generate
      t.string :scaffold
      t.string :LogVolunteer
      t.references :log, null: false, foreign_key: true
      t.references :volunteer, null: false, foreign_key: true
      t.boolean :active
      t.booleanrails :covering
      t.string :generate
      t.string :scaffold
      t.string :Log
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
      t.decimalrails :hours_spent
      t.string :generate
      t.string :scaffold
      t.string :Region
      t.decimal :lat
      t.decimal :lng
      t.string :name
      t.string :website
      t.text :address
      t.text :notes
      t.string :handbook_url
      t.integer :prior_lbs_rescued
      t.integer :prior_num_pickups
      t.string :twitter_key
      t.string :twitter_secret
      t.string :twitter_token
      t.string :twitter_token_secret
      t.integer :twitter_last_poundage
      t.datetime :twitter_last_timestamp
      t.string :title
      t.string :tagline
      t.string :logo_file_name
      t.string :logo_content_type
      t.integer :logo_file_size
      t.datetime :logo_updated_at
      t.string :phone
      t.references :tax, null: false, foreign_key: true
      t.text :welcome_email_text
      t.text :splash_html
      t.string :weight_unit
      t.text :time_zone
      t.string :volunteer_coordinator_email
      t.boolean :post_pickup_emails
      t.booleanrails :unschedule_self
      t.string :generate
      t.string :scaffold
      t.string :ScaleType
      t.string :name
      t.string :weight_unit
      t.references :region, null: false, foreign_key: true
      t.booleanrails :active
      t.string :generate
      t.string :scaffold
      t.string :ScheduleChain
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
      t.booleanrails :active
      t.string :generate
      t.string :scaffold
      t.string :SchedulePart
      t.references :schedule, null: false, foreign_key: true
      t.references :food_type, null: false, foreign_key: true
      t.booleanrails :required
      t.string :generate
      t.string :scaffold
      t.string :ScheduleVolunteer
      t.references :volunteer, null: false, foreign_key: true
      t.boolean :active
      t.referencesrails :schedule_chain
      t.string :generate
      t.string :scaffold
      t.string :Schedule
      t.references :schedule_chain, null: false, foreign_key: true
      t.references :location, null: false, foreign_key: true
      t.integerrails :position
      t.string :generate
      t.string :scaffold
      t.string :TransportType
      t.string :name
      t.booleanrails :active
      t.string :generate
      t.string :scaffold
      t.string :Volunteer
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
