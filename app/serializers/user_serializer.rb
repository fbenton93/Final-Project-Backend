class UserSerializer < ActiveModel::Serializer
  attributes :username, :profile_img_url
  has_many :reviews

  # write methods to render review and location data here
end
