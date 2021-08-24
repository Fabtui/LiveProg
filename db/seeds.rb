Bar.destroy_all if Rails.env.development?
User.destroy_all if Rails.env.development?

la_degust = Bar.create!(
  name: "Bar de la Dégustation",
  address: "7 rue de la Prefecture, 06300 Nice France",
  genre: "bistrot",
  menu: "7 balles la pinte",
)

le_duc = Bar.create!(
  name: "Le Duc des Lombards",
  adress: "42 rue des Lombards, 75001 Paris",
  genre: "bar à jazz",
  menu: "bon vin pas cher",
)

le_black_sheep = Bar.create!(
  name: "Le Black Sheep",
  address: "21 bd Louis Blanc, 34000 Montpellier",
  genre: "pub",
  menu: "de la bière et du fun",
)

User.create!(
  email: "chuck@gmail.com",
  password: "12345678",
  nickname: "Norris",
  # user: Band.create! (
  #   name: "elmer food beat"
  #   style: "rock"
  #   youtube: "ulr"
  #   facebook:
  )

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
