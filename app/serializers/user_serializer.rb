class UserSerializer < ActiveModel::Serializer
  attributes :username, :profile_img_url, :id, :pref_busyness, :pref_ambiance,
  :pref_coffee_quality, :pref_light_roast, :pref_medium_roast, :pref_dark_roast,
  :pref_table_space, :pref_noise_level, :pref_studying, :disabled


  # write methods to render review and location data here
end
