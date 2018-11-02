class LocationSerializer < ActiveModel::Serializer
  has_many :reviews
  attributes :id, :name, :address_line_1, :address_line_2, :lat, :lng, :reviews, :averages, :regional_avg

  def regional_avg
    Review.regional_avg
  end



end
