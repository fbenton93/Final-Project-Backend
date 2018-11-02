class ReviewSerializer < ActiveModel::Serializer
  belongs_to :user
  attributes :id, :user, :title, :written_content, :atmosphere, :time_visited,
  :score_busyness, :score_ambiance, :score_ambiance, :score_table_space,
  :score_noise_level, :score_studying, :score_friendliness, :score_value,
  :score_coffee_quality, :score_roast, :img_url


  # write methods to render user and location data here

end
