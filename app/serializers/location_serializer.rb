class LocationSerializer < ActiveModel::Serializer
  attributes :id, :name, :address_line_1, :address_line_2, :lat, :lng
  has_many :reviews

  # write methods to render user and location data here
  def avg_rating
  end

  def comparison_data
  end

  

end
