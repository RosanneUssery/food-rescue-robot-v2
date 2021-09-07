class CreateRegions < ActiveRecord::Migration[6.1]
  def change
    create_table :regions do |t|
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
      t.boolean :unschedule_self

      t.timestamps
    end
  end
end
