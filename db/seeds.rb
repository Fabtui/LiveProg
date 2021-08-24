Bar.destroy_all if Rails.env.development?
User.destroy_all if Rails.env.development?

la_degust = Bar.create!(
  name: "Bar de la Dégustation",
  address: "7 rue de la Prefecture, 06300 Nice France",
  description: "bistrot",
  menu: "7 balles la pinte",
)
la_degust.photo.attach(io: File.open('app/assets/images/bars/bar(2).jpg'), filename: 'bar3.jpg', content_type:'image/jpg')


le_duc = Bar.create!(
  name: "Le Duc des Lombards",
  address: "42 rue des Lombards, 75001 Paris",
  description: "bar à jazz",
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
