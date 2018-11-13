class ReviewSerializer < ActiveModel::Serializer
  belongs_to :user
  attributes :id, :user, :title, :written_content, :atmosphere, :time_visited,
  :score_busyness, :score_ambiance, :score_ambiance, :score_table_space,
  :score_noise_level, :score_studying, :score_friendliness, :score_value,
  :score_coffee_quality, :score_roast, :img_url, :location_name


  def location_name
    object.location_name
  end

end
