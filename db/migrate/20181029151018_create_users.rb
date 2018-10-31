class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :username
      t.string :password_digest
      t.string :profile_img_url
      t.string :pref_atmo_1
      t.string :pref_atmo_2
      t.string :pref_atmo_3
      t.integer :pref_busyness
      t.integer :pref_ambiance
      t.integer :pref_coffee_quality
      t.integer :pref_light_roast
      t.integer :pref_medium_roast
      t.integer :pref_dark_roast
      t.integer :pref_table_space
      t.integer :pref_noise_level
      t.integer :pref_studying


      t.timestamps
    end
  end
end
