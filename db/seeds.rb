# # user1
@fbenton = User.create(
  username: "FBenton",
  password: "Password",
  profile_img_url: "https://i.imgur.com/rbdD6a8.jpg",
  pref_atmo_1: "Modern",
  pref_atmo_2: "Rustic",
  pref_atmo_3: "Cozy",
  pref_busyness: 6,
  pref_ambiance: 6,
  pref_coffee_quality: 8,
  pref_light_roast: 8,
  pref_medium_roast: 8,
  pref_dark_roast: 4,
  pref_table_space: 8,
  pref_noise_level: 4,
  pref_studying: 9
)
#
# #user2
@terranceq = User.create(
  username: "TerranceQ",
  password: "password",
  profile_img_url: "",
  pref_atmo_1: "Corporate",
  pref_atmo_2: "Chic",
  pref_atmo_3: "Modern",
  pref_busyness: 6,
  pref_ambiance: 6,
  pref_coffee_quality: 8,
  pref_light_roast: 8,
  pref_medium_roast: 8,
  pref_dark_roast: 4,
  pref_table_space: 8,
  pref_noise_level: 4,
  pref_studying: 9

)
#
# #user3
@andrewl = User.create(
  username: "AndrewL",
  password: "password",
  profile_img_url: "",
  pref_atmo_1: "Corporate",
  pref_atmo_2: "Chic",
  pref_atmo_3: "Modern",
  pref_busyness: 6,
  pref_ambiance: 6,
  pref_coffee_quality: 8,
  pref_light_roast: 8,
  pref_medium_roast: 8,
  pref_dark_roast: 4,
  pref_table_space: 8,
  pref_noise_level: 4,
  pref_studying: 9
)
#
# #location1
@grumpy = Location.create(
  name: "Cafe Grumpy",
  address_line_1: "20 Stone St.",
  address_line_2: "New York, NY 10004",
  lat: 40.703960,
  lng: -74.011960
)
#
# #location2
@toby = Location.create(
  name: "Toby's Estate Coffee",
  address_line_1: "44 Charles St.",
  address_line_2: "New York, NY 10014",
  lat: 40.734920,
  lng: -74.002290
)
#
# #location3
@bluestone = Location.create(
  name: "Bluestone Lane",
  address_line_1: "30 Broad St.",
  address_line_2: "New York, NY 10004",
  lat: 40.705900,
  lng: -74.011710
)
#
# #location4
@kava = Location.create(
  name: "Kava Cafe",
  address_line_1: "803 Washington St.",
  address_line_2: "New York, NY 10014",
  lat: 40.738970,
  lng: -74.007940
)
#
# #location5
@sey = Location.create(
  name: "SEY Coffee",
  address_line_1: "18 Grattan St.",
  address_line_2: "Brooklyn, NY 11206",
  lat: 40.705320,
  lng: -73.932400
)
#
#
Review.create(
  user_id: @fbenton.id,
  location_id: @grumpy.id,
  img_url: "https://villagevoice.freetls.fastly.net/wp-content/uploads/2017/05/FEATURE_05172017_Coffee_Cafe-Grumpy-FiDi-2_PaolaMurray.jpg",
  title: "Best Coffee in Fidi",
  written_content: "This is my favorite place to go for a latte. My on...",
  atmosphere: "Chic",
  time_visited: 6.5,
  score_busyness: 7,
  score_ambiance: 6,
  score_table_space: 4,
  score_noise_level: 5,
  score_studying: 2,
  score_friendliness: 8,
  score_value: 5,
  score_coffee_quality: 9,
  score_roast: "medium"
)
#
Review.create(
  user_id: @terranceq.id,
  location_id: @sey.id,
  img_url: "http://foodcurated.com/wp-content/uploads/2018/03/IMG_0082-950x535.jpg",
  title: "My Favorite Coffee in BK",
  written_content: "For those of you who remember Lofted Coffee, this is a store brought by the same two founders. The quality is very good and incredibly fresh. ",
  atmosphere: "Bohemian",
  time_visited: 7.0,
  score_busyness: 6,
  score_ambiance: 8,
  score_table_space: 4,
  score_noise_level: 6,
  score_studying: 5,
  score_friendliness: 10,
  score_value: 6,
  score_coffee_quality: 9,
  score_roast: "Medium"
)
#
Review.create(
  user_id: @fbenton.id,
  location_id: @sey.id,
  img_url: "https://331mrnu3ylm2k3db3s1xd1hg-wpengine.netdna-ssl.com/wp-content/uploads/2017/08/Sey_Coffee_Bushwick_Liz_Clayton-6-1170x780.jpg",
  title: "Great Place to Visit in the Summer",
  written_content: "While the coffee is excellent, the open layout of this shop is what I love most :)",
  atmosphere: "Modern",
  time_visited: 10.0,
  score_busyness: 6,
  score_ambiance: 10,
  score_table_space: 5,
  score_noise_level: 5,
  score_studying: 6,
  score_friendliness: 8,
  score_value: 8,
  score_coffee_quality: 7,
  score_roast: "Medium"
)
#
Review.create(
  user_id: @fbenton.id,
  location_id: @bluestone.id,
  img_url: "https://331mrnu3ylm2k3db3s1xd1hg-wpengine.netdna-ssl.com/wp-content/uploads/2017/08/Sey_Coffee_Bushwick_Liz_Clayton-6-1170x780.jpg",
  title: "Australian Charm",
  written_content: "The coffee ice cream float here is insane.",
  atmosphere: "Modern",
  time_visited: 16.0,
  score_busyness: 3,
  score_ambiance: 3,
  score_table_space: 5,
  score_noise_level: 6,
  score_studying: 2,
  score_friendliness: 8,
  score_value: 8,
  score_coffee_quality: 7,
  score_roast: "Medium"
)
#
Review.create(
  user_id: @andrewl.id,
  location_id: @toby.id,
  img_url: "https://lifeandthyme.com/wp-content/uploads/2015/02/tobys-estate-15.jpg",
  title: "My favorite place to study!",
  written_content: "They could use more table space, but it's still a great spot to get some work done.",
  atmosphere: "Modern",
  time_visited: 11.0,
  score_busyness: 8,
  score_ambiance: 7,
  score_table_space: 7,
  score_noise_level: 4,
  score_studying: 9,
  score_friendliness: 7,
  score_value: 8,
  score_coffee_quality: 8,
  score_roast: "Medium"
)
#
Review.create(
  user_id: @fbenton.id,
  location_id: @kava.id,
  img_url: "https://static1.squarespace.com/static/53f900bfe4b09b5739f1c09a/53f9060be4b0a085e8d23e63/5414a39ee4b014f5fe7c233c/1410638751525/KAVA+CAFE_2011_LORES_ADRIAN+GAUT+%2822%29.jpg?format=750w",
  title: "Cramped and Poor Service",
  written_content: "It's a charming hole in the wall, but that's where my compliments end.",
  atmosphere: "Rustic",
  time_visited: 7.0,
  score_busyness: 6,
  score_ambiance: 7,
  score_table_space: 3,
  score_noise_level: 5,
  score_studying: 1,
  score_friendliness: 3,
  score_value: 3,
  score_coffee_quality: 4,
  score_roast: "Dark"
)
#
#
#
Review.create(
  user_id: @andrewl.id,
  location_id: @grumpy.id,
  img_url: "https://villagevoice.freetls.fastly.net/wp-content/uploads/2017/05/FEATURE_05172017_Coffee_Cafe-Grumpy-FiDi-2_PaolaMurray.jpg",
  title: "I'm a Sucker for a Good Latte",
  written_content: "My best friend and confidant, Yicheng, showed me this place recently. Conveniently located and with an excellent roast, it's my favorite place in lower manhattan.",
  atmosphere: "Modern",
  time_visited: 10.5,
  score_busyness: 3,
  score_ambiance: 4,
  score_table_space: 8,
  score_noise_level: 6,
  score_studying: 6,
  score_friendliness: 7,
  score_value: 6,
  score_coffee_quality: 10,
  score_roast: "Medium"
)
