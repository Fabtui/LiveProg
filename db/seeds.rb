Bar.destroy_all if Rails.env.development?
User.destroy_all if Rails.env.development?
Band.destroy_all if Rails.env.development?
Style.destroy_all if Rails.env.development?
BandStyle.destroy_all if Rails.env.development?

# _______________________________STYLE_________________________________________

styles = %w(Hip\ Hop Rap Rock Metal Pop Electro Funk Rap Jazz House Reggae Divers Reprises Acoustique)

styles.each do |style|
  Style.create!(style_type: style)
end

# _______________________________BARS_________________________________________

le_shakpo = Bar.create!(
  name: "Le Shakpo",
  address: "5 Rue Rossetti, 06300 Nice",
  description: "Café-Concert",
  menu: "Repas, boissons",
  opening_time: "21h00 - 01h00"
)
le_shakpo.photo.attach(io: File.open('app/assets/images/bars/shakpo2.JPG'), filename: 'shakpo2.jpg', content_type:'image/jpg')


bazar = Bar.create!(
  name: "Bazar café",
  address: "5 Rue de France Zone Pietonne, 06000 Nice",
  description: "Bar italien",
  menu: "Repas, boissons",
  opening_time: "09h00 - 02h00"
)
bazar.photo.attach(io: File.open('app/assets/images/bars/bazarcafe.JPG'), filename: 'bazarcafe.jpg', content_type:'image/jpg')

trafalbar = Bar.create!(
  name: "Trafalbar",
  address: "3 rue Barillerie, 06300 Nice",
  description: "Bar caribéen",
  menu: "Repas, boissons",
  opening_time: "21h00 - 02h30"
)
trafalbar.photo.attach(io: File.open('app/assets/images/bars/trafalbar.JPG'), filename: 'trafalbar.jpg', content_type:'image/jpg')

bateleur = Bar.create!(
  name: "Le Bateleur",
  address: "18 rue Centrale, 06300 Nice",
  description: "Bar à bière",
  menu: "Repas, boissons",
  opening_time: "21h00 - 02h30"
)
bateleur.photo.attach(io: File.open('app/assets/images/bars/bateleur.JPG'), filename: 'bateleur.jpg', content_type:'image/jpg')

vandiemen = Bar.create!(
  name: "Van Diemen's",
  address: "30 cours Saleya, 06300 Nice",
  description: "Pub australien",
  menu: "Repas, boissons",
  opening_time: "11h00 - 02h00"
)
vandiemen.photo.attach(io: File.open('app/assets/images/bars/vandiemen.JPG'), filename: 'vandiemen.jpg', content_type:'image/jpg')

waka = Bar.create!(
  name: "Waka Bar",
  address: "57 Quai des Etats-Unis, 06300 Nice",
  description: "Pub",
  menu: "Repas, boissons",
  opening_time: "10h00 - 02h00"
)
waka.photo.attach(io: File.open('app/assets/images/bars/waka.JPG'), filename: 'waka.jpg', content_type:'image/jpg')

masterhome = Bar.create!(
  name: "Master Home",
  address: "11 Rue de la Prefecture, 06300 Nice",
  description: "Pub",
  menu: "Petit déjeuner, boissons",
  opening_time: "08h00 - 02h00"
)
masterhome.photo.attach(io: File.open('app/assets/images/bars/masterhome.JPG'), filename: 'masterhome.jpg', content_type:'image/jpg')

foam = Bar.create!(
  name: "Foam",
  address: "3 Quai Des Deux Emmanuels, 06300 Nice",
  description: "Bar méditerranéen",
  menu: "Repas, boissons",
  opening_time: "11h00 - 23h00"
)
foam.photo.attach(io: File.open('app/assets/images/bars/foam.JPG'), filename: 'foam.jpg', content_type:'image/jpg')

diane = Bar.create!(
  name: "Diane's, Bar a Potes",
  address: "6 rue Saint Vincent 06300 Nice",
  description: "Bar à bières",
  menu: "Repas, boissons",
  opening_time: "17h00 - 00h00"
)
diane.photo.attach(io: File.open('app/assets/images/bars/diane.jpg'), filename: 'diane.jpg', content_type:'image/jpg')

chupito = Bar.create!(
  name: "Chupito Loco",
  address: "7 Rue Raoul Bosio, 06300 Nice",
  description: "Bar",
  menu: "Repas, boissons",
  opening_time: "19h00 - 02h30"
)
chupito.photo.attach(io: File.open('app/assets/images/bars/chupito.JPG'), filename: 'chupito.jpg', content_type:'image/jpg')

oneil = Bar.create!(
  name: "O'Neill's Pub",
  address: "40 rue Droite, 06300 Nice",
  description: "Pub irlandais",
  menu: "Repas, boissons",
  opening_time: "18h00 - 02h30"
)
oneil.photo.attach(io: File.open('app/assets/images/bars/oneil.JPG'), filename: 'oneil.jpg', content_type:'image/jpg')

beerdistrict = Bar.create!(
  name: "Beer District",
  address: "1 Place Philippe Randon, 06000 Nice",
  description: "Bar à bières",
  menu: "Repas, boissons",
  opening_time: "18h00 - 00h30"
)
beerdistrict.photo.attach(io: File.open('app/assets/images/bars/beerdistrict.jpg'), filename: 'beerdistrict.jpg', content_type:'image/jpg')

manolanport = Bar.create!(
  name: "Ma Nolan's Nice Port",
  address: "5 quai des 2 Emmanuel 06300, Nice",
  description: "Pub irlandais",
  menu: "Repas, boissons",
  opening_time: "11h00 - 02h00"
)
manolanport.photo.attach(io: File.open('app/assets/images/bars/manolansport.JPG'), filename: 'manolanport.jpg', content_type:'image/jpg')

manolan = Bar.create!(
  name: "Ma Nolan's Vieux Nice",
  address: "2, rue Saint-François de Paule, 06300 Nice",
  description: "Pub irlandais",
  menu: "Repas, boissons",
  opening_time: "11h00 - 02h00"
)
manolan.photo.attach(io: File.open('app/assets/images/bars/manolan.jpg'), filename: 'manolan.jpg', content_type:'image/jpg')

yolo = Bar.create!(
  name: "Yolo Wine Bar",
  address: "10 rue Marechal Joffre, 06000 Nice",
  description: "Bar à vin",
  menu: "Repas, boissons",
  opening_time: "18h00 - 00h30"
)
yolo.photo.attach(io: File.open('app/assets/images/bars/yolo.JPG'), filename: 'yolo.jpg', content_type:'image/jpg')

bulldog = Bar.create!(
  name: "Bulldog-Pub Pompei",
  address: "16, Rue De L'Abbaye, 06000 Nice",
  description: "Bar-Concert",
  menu: "Repas, boissons",
  opening_time: "18h00 - 02h30"
)
bulldog.photo.attach(io: File.open('app/assets/images/bars/bulldog.JPG'), filename: 'bulldog.JPG', content_type:'image/jpg')

# _______________________________USERS_________________________________________

chuck = User.create!(
  email: "chuck@gmail.com",
  password: "12345678",
  nickname: "Norris",
  )
chuck.avatar.attach(io: File.open('app/assets/images/bars/boris_retreat_2017.jpg'), filename: 'chuck.jpg', content_type:'image/jpg')

User.create!(
  email: "Bob@gmail.com",
  password: "12345678",
  nickname: "Sponge"
)

User.create!(
  email: "Mimi@gmail.com",
  password: "12345678",
  nickname: "Mimi"
)

User.create!(
  email: "Matlamenace@gmail.com",
  password: "12345678",
  nickname: "BDSMat"
)

User.create!(
  email: "Basouonimus@gmail.com",
  password: "12345678",
  nickname: "Maximus Onimus"
)

User.create!(
  email: "Soupaseb@gmail.com",
  password: "12345678",
  nickname: "Sebounoob"
)

# _______________________________BANDS-EVENTS_________________________________________

vulfpeck = Band.create!(
  name: "Vulfpeck",
  style: "Funk",
  youtube_url: "https://www.youtube.com/embed/le0BLAEO93g",
  facebook_url: "https://www.facebook.com/vulfpeck",
  user_id: "1",
  description: "Vulfpeck est un groupe de funk américain fondé en 2011 à Ann Arbor, dans le Michigan."
)
vulfpeck.photos.attach(io: File.open('app/assets/images/bands/Vulfpeck.jpg'), filename: 'Vulfpeck.jpg', content_type:'image/jpg')

vulfpeck_diane = Event.create!(
  band_id: "1",
  bar_id: "9",
  start_date: "2021-09-16T20:30",
  name: "Vulfpeck au Diane's Bar",
  description: "Venez passer une soirée funky avec Vulfpeck en live au Diane's bar."
)

efb = Band.create!(
  name: "Elmer Food Beat",
  style: "Rock",
  youtube_url: "https://www.youtube.com/embed/Tri6GPixwJE",
  facebook_url: "https://fr-fr.facebook.com/ElmerFoodBeatOfficiel",
  user_id: "2",
  description: "Elmer Food Beat est un groupe de rock français, originaire de Nantes et fondé en 1986. Il est notamment caractérisé par des textes égrillards et humoristiques."
)
efb.photos.attach(io: File.open('app/assets/images/bands/EFB.jpg'), filename: 'EFB.jpg', content_type:'image/jpg')

efb_waka = Event.create!(
  band_id: "2",
  bar_id: "6",
  start_date: "2021-09-02T21:30",
  name: "Elmer Food Beat au Waka",
  description: "Elmer Food Beat en concert au Waka bar pour une soirée barrée!"
)

djpone = Band.create!(
  name: "DJ Pone",
  style: "Electro",
  youtube_url: "https://www.youtube.com/embed/sjXELnm315U",
  facebook_url: "",
  user_id: "3",
  description: "DJ Pone, est un DJ et compositeur français. Il a collaboré avec de nombreux groupes de rap français tels que TTC, les Casseurs Flowters, et surtout les Svinkels"
)
djpone.photos.attach(io: File.open('app/assets/images/bands/djpone.jpg'), filename: 'djpone.jpg', content_type:'image/jpg')

djpone_chupito = Event.create!(
  band_id: "3",
  bar_id: "10",
  start_date: "2021-08-31T22:30",
  name: "DJ Pone au Chupito Loco",
  description: "DJ Pone pour un live set exclusif au Chupito Loco."
)

shokinpapa = Band.create!(
  name: "The Shockin' Papas",
  style: "Rock",
  youtube_url: "https://www.youtube.com/embed/7NA5EKhPjpU",
  facebook_url: "https://www.facebook.com/The-Shockin-Papas-504598226390356/",
  user_id: "4",
  description: "Groupe Rock/Blues/Folk niçois de reprise et morceau originaux, électrique ou acoustique."
)
shokinpapa.photos.attach(io: File.open('app/assets/images/bands/shokinpapa.jpg'), filename: 'shokinpapa.jpg', content_type:'image/jpg')

shokinpapa_bulldog = Event.create!(
  band_id: "4",
  bar_id: "16",
  start_date: "2021-09-20T21:30",
  name: "The Shokin' Papas au Bulldog",
  description: "Les Shokin' Papas viennent décoller le papier peint des murs du Bulldog."
)

ofenbach = Band.create!(
  name: "Ofenbach",
  style: "Electro",
  youtube_url: "https://www.youtube.com/embed/Ycg5oOSdpPQ",
  facebook_url: "https://www.facebook.com/weareofenbach",
  user_id: "5",
  description: "Ofenbach est un duo de DJ français réunissant Dorian et César, deux amis d'enfance parisiens aux influences deep house, rock et pop."
)
ofenbach.photos.attach(io: File.open('app/assets/images/bands/ofenbach.JPG'), filename: 'ofenbach.jpg', content_type:'image/jpg')

ofenbach_yolo = Event.create!(
  band_id: "5",
  bar_id: "15",
  start_date: "2021-09-24T21:30",
  name: "Ofenbach au Yolo",
  description: "Ofenback pose ses platines au Yolo pour une soirée mouvementée!"
)

# _______________________________BANDS-STYLES_________________________________________

BandStyle.create!(
  band_id: "1",
  style_id: "7"
)

BandStyle.create!(
  band_id: "2",
  style_id: "3"
)

BandStyle.create!(
  band_id: "3",
  style_id: "6"
)

BandStyle.create!(
  band_id: "4",
  style_id: "3"
)

BandStyle.create!(
  band_id: "4",
  style_id: "13"
)

BandStyle.create!(
  band_id: "4",
  style_id: "5"
)

BandStyle.create!(
  band_id: "5",
  style_id: "6"
)

BandStyle.create!(
  band_id: "5",
  style_id: "10"
)
# ______________________________________________________________________________________


puts "#{Style.all.count} styles created"
puts "#{Bar.all.count} bars created"
puts "#{User.all.count} users created"
puts "#{Band.all.count} bands created"
puts "#{Event.all.count} events created"
puts "#{BandStyle.all.count} band styles created"
