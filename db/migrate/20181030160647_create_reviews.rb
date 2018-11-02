class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.integer :user_id
      t.integer :location_id
      t.string :img_url
      t.string :title
      t.text :written_content
      t.string :atmosphere
      t.string :time_visited
      t.integer :score_busyness
      t.integer :score_ambiance
      t.integer :score_table_space
      t.integer :score_noise_level
      t.integer :score_studying
      t.integer :score_friendliness
      t.integer :score_value
      t.integer :score_coffee_quality
      t.string :score_roast

      t.timestamps
    end
  end
end
