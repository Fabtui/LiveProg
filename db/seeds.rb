Bar.destroy_all if Rails.env.development?
User.destroy_all if Rails.env.development?

le_shakpo = Bar.create!(
  name: "Le Shakpo",
  address: "7 rue de la Prefecture, 06300 Nice France",
  description: "bistrot",
  menu: "7 balles la pinte",
)
le_shakpo.photo.attach(io: File.open('app/assets/images/bars/bar(2).jpg'), filename: 'bar3.jpg', content_type:'image/jpg')


le_duc = Bar.create!(
  name: "Le Duc des Lombards",
  address: "5 Rue Rossetti, 06300 Nice",
  description: "concert en tout genre",
  menu: "bon vin pas cher",
)
le_duc.photo.attach(io: File.open('app/assets/images/bars/bar(2).jpg'), filename: 'bar2.jpg', content_type:'image/jpg')


le_black_sheep = Bar.create!(
  name: "Le Black Sheep",
  address: "21 bd Louis Blanc, 34000 Montpellier",
  description: "pub",
  menu: "de la bière et du fun",
)
le_black_sheep.photo.attach(io: File.open('app/assets/images/bars/bar(1).jpg'), filename: 'bar1.jpg', content_type:'image/jpg')


chuck = User.create!(
  email: "chuck@gmail.com",
  password: "12345678",
  nickname: "Norris",
  # user: Band.create! (
  #   name: "elmer food beat"
  #   style: "rock"
  #   youtube: "ulr"
  #   facebook:
  )
chuck.avatar.attach(io: File.open('app/assets/images/bars/boris_retreat_2017.jpg'), filename: 'chuck.jpg', content_type:'image/jpg')


User.create!(
  email: "Bob@gmail.com",
  password: "12345678",
  nickname: "Sponge"
)

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
