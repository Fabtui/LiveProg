Bar.destroy_all if Rails.env.development?
User.destroy_all if Rails.env.development?
Band.destroy_all if Rails.env.development?
Style.destroy_all if Rails.env.development?
BandStyle.destroy_all if Rails.env.development?
BandFav.destroy_all if Rails.env.development?
BandReview.destroy_all if Rails.env.development?
Event.destroy_all if Rails.env.development?

# _______________________________STYLE_________________________________________

styles = %w(Hip\ Hop Rap Rock Metal Pop Electro Funk Rap Jazz House Reggae Punk Reprises Acoustique)

styles.each do |style|
  Style.create!(style_type: style)
end

# _______________________________BARS_________________________________________

le_shakpo = Bar.create!(
  name: "Le Shapko",
  address: "5 Rue Rossetti, 06300 Nice",
  description: "Café-Concert",
  opening_time: "21h00 - 01h00"
)
le_shakpo.photo.attach(io: File.open('app/assets/images/bars/shakpo2.JPG'), filename: 'shakpo2.jpg', content_type:'image/jpg')


bazar = Bar.create!(
  name: "Bazar café",
  address: "5 Rue de France, 06000 Nice",
  description: "Bar italien",
  opening_time: "09h00 - 02h00"
)
bazar.photo.attach(io: File.open('app/assets/images/bars/bazarcafe.JPG'), filename: 'bazarcafe.jpg', content_type:'image/jpg')

trafalbar = Bar.create!(
  name: "Trafalbar",
  address: "3 rue Barillerie, 06300 Nice",
  description: "Bar caribéen",
  opening_time: "21h00 - 02h30"
)
trafalbar.photo.attach(io: File.open('app/assets/images/bars/trafalbar.JPG'), filename: 'trafalbar.jpg', content_type:'image/jpg')

bateleur = Bar.create!(
  name: "Le Bateleur",
  address: "18 rue Centrale, 06300 Nice",
  description: "Bar à bière",
  opening_time: "21h00 - 02h30"
)
bateleur.photo.attach(io: File.open('app/assets/images/bars/bateleur.JPG'), filename: 'bateleur.jpg', content_type:'image/jpg')

vandiemen = Bar.create!(
  name: "Van Diemen's",
  address: "30 cours Saleya, 06300 Nice",
  description: "Pub australien",
  opening_time: "11h00 - 02h00"
)
vandiemen.photo.attach(io: File.open('app/assets/images/bars/vandiemen.JPG'), filename: 'vandiemen.jpg', content_type:'image/jpg')

waka = Bar.create!(
  name: "Waka Bar",
  address: "57 Quai des Etats-Unis, 06300 Nice",
  description: "Pub",
  opening_time: "10h00 - 02h00"
)
waka.photo.attach(io: File.open('app/assets/images/bars/waka.JPG'), filename: 'waka.jpg', content_type:'image/jpg')

masterhome = Bar.create!(
  name: "Master Home",
  address: "11 Rue de la Prefecture, 06300 Nice",
  description: "Pub",
  opening_time: "08h00 - 02h00"
)
masterhome.photo.attach(io: File.open('app/assets/images/bars/masterhome.JPG'), filename: 'masterhome.jpg', content_type:'image/jpg')

foam = Bar.create!(
  name: "Foam",
  address: "3 Quai Des Deux Emmanuels, 06300 Nice",
  description: "Bar méditerranéen",
  opening_time: "11h00 - 23h00"
)
foam.photo.attach(io: File.open('app/assets/images/bars/foam.JPG'), filename: 'foam.jpg', content_type:'image/jpg')

diane = Bar.create!(
  name: "Diane's, Bar a Potes",
  address: "6 rue Saint Vincent 06300 Nice",
  description: "Bar à bières",
  opening_time: "17h00 - 00h00"
)
diane.photo.attach(io: File.open('app/assets/images/bars/diane.jpg'), filename: 'diane.jpg', content_type:'image/jpg')

chupito = Bar.create!(
  name: "Chupito Loco",
  address: "7 Rue Raoul Bosio, 06300 Nice",
  description: "Bar",
  opening_time: "19h00 - 02h30"
)
chupito.photo.attach(io: File.open('app/assets/images/bars/chupito.JPG'), filename: 'chupito.jpg', content_type:'image/jpg')

oneil = Bar.create!(
  name: "O'Neill's Pub",
  address: "40 rue Droite, 06300 Nice",
  description: "Pub irlandais",
  opening_time: "18h00 - 02h30"
)
oneil.photo.attach(io: File.open('app/assets/images/bars/oneil.JPG'), filename: 'oneil.jpg', content_type:'image/jpg')

beerdistrict = Bar.create!(
  name: "Beer District",
  address: "1 Place Philippe Randon, 06000 Nice",
  description: "Bar à bières",
  opening_time: "18h00 - 00h30"
)
beerdistrict.photo.attach(io: File.open('app/assets/images/bars/beerdistrict.jpg'), filename: 'beerdistrict.jpg', content_type:'image/jpg')

manolanport = Bar.create!(
  name: "Ma Nolan's Nice Port",
  address: "5 Quai des Deux Emmanuels, 06300 Nice",
  description: "Pub irlandais",
  opening_time: "11h00 - 02h00"
)
manolanport.photo.attach(io: File.open('app/assets/images/bars/manolansport.JPG'), filename: 'manolanport.jpg', content_type:'image/jpg')

manolan = Bar.create!(
  name: "Ma Nolan's Vieux Nice",
  address: "2, rue Saint-François de Paule, 06300 Nice",
  description: "Pub irlandais",
  opening_time: "11h00 - 02h00"
)
manolan.photo.attach(io: File.open('app/assets/images/bars/manolan.jpg'), filename: 'manolan.jpg', content_type:'image/jpg')

yolo = Bar.create!(
  name: "Yolo Wine Bar",
  address: "10 rue du Marechal Joffre, 06000 Nice",
  description: "Bar à vin",
  opening_time: "18h00 - 00h30"
)
yolo.photo.attach(io: File.open('app/assets/images/bars/yolo.JPG'), filename: 'yolo.jpg', content_type:'image/jpg')

bulldog = Bar.create!(
  name: "Bulldog-Pub Pompei",
  address: "16, Rue De L'Abbaye, 06000 Nice",
  description: "Bar-Concert",
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

User.create!(
  email: "Selup@gmail.com",
  password: "12345678",
  nickname: "Selup"
)
User.create!(
  email: "namjera@gmail.com",
  password: "12345678",
  nickname: "Namjera"
)
User.create!(
  email: "luckyluke@gmail.com",
  password: "12345678",
  nickname: "luckyluke"
)
User.create!(
  email: "milou@gmail.com",
  password: "12345678",
  nickname: "milou"
)
User.create!(
  email: "marvin@gmail.com",
  password: "12345678",
  nickname: "marvin"
)
User.create!(
  email: "herbert@gmail.com",
  password: "12345678",
  nickname: "herbert"
)
User.create!(
  email: "blueberry@gmail.com",
  password: "12345678",
  nickname: "blueberry"
)
User.create!(
  email: "michel@gmail.com",
  password: "12345678",
  nickname: "Michel"
)

User.create!(
  email: "sebsaunier@gmail.com",
  password: "12345678",
  nickname: "Seb Saunier"
)

User.create!(
  email: "caroline.bayle@lewagon.org",
  password: "12345678",
  nickname: "Mat"
)

# _______________________________BANDS-EVENTS_________________________________________

vulfpeck = Band.create!(
  name: "Vulfpeck",
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
  youtube_url: "https://www.youtube.com/embed/Tri6GPixwJE",
  facebook_url: "https://fr-fr.facebook.com/ElmerFoodBeatOfficiel",
  user_id: "2",
  description: "Elmer Food Beat est un groupe de rock français, originaire de Nantes et fondé en 1986. Il est notamment caractérisé par des textes égrillards et humoristiques."
)
efb.photos.attach(io: File.open('app/assets/images/bands/EFB.jpg'), filename: 'EFB.jpg', content_type:'image/jpg')

efb_waka = Event.create!(
  band_id: "2",
  bar_id: "6",
  start_date: "2021-09-04T21:30",
  name: "Elmer Food Beat au Waka",
  description: "Elmer Food Beat en concert au Waka bar pour une soirée barrée!"
)

djpone = Band.create!(
  name: "DJ Pone",
  youtube_url: "https://www.youtube.com/embed/sjXELnm315U",
  facebook_url: "",
  user_id: "3",
  description: "DJ Pone, est un DJ et compositeur français. Il a collaboré avec de nombreux groupes de rap français tels que TTC, les Casseurs Flowters, et surtout les Svinkels"
)
djpone.photos.attach(io: File.open('app/assets/images/bands/djpone.jpg'), filename: 'djpone.jpg', content_type:'image/jpg')

djpone_chupito = Event.create!(
  band_id: "3",
  bar_id: "10",
  start_date: "2021-09-23T22:30",
  name: "DJ Pone au Chupito Loco",
  description: "DJ Pone pour un live set exclusif au Chupito Loco."
)

shokinpapa = Band.create!(
  name: "The Shockin' Papas",
  youtube_url: "https://www.youtube.com/embed/7NA5EKhPjpU",
  facebook_url: "https://www.facebook.com/The-Shockin-Papas-504598226390356/",
  user_id: "4",
  description: "Groupe Rock/Blues/Folk niçois de reprise et morceau originaux, électrique ou acoustique."
)
shokinpapa.photos.attach(io: File.open('app/assets/images/bands/shokinpapa.jpg'), filename: 'shokinpapa.jpg', content_type:'image/jpg')

shokinpapa_bulldog = Event.create!(
  band_id: "4",
  bar_id: "16",
  start_date: "2021-09-04T21:30",
  name: "The Shokin' Papas au Bulldog",
  description: "Les Shokin' Papas viennent décoller le papier peint des murs du Bulldog."
)

ofenbach = Band.create!(
  name: "Ofenbach",
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

brotherockers = Band.create!(
  name: "The Brotherockers",
  youtube_url: "https://www.youtube.com/embed/u67TLNYMgP0",
  user_id: "6",
  description:"The Brotherockers est un groupe Niçois fondé en 2015. Avec une set list de plus de 200 musiques dans plusieurs languages et dans presque tous les styles, le groupe s'est fait une mission de proposer de la musique pour tous."
)
brotherockers.photos.attach(io: File.open('app/assets/images/bands/brother.jpeg'), filename: 'brother.jpeg', content_type:'image/jpeg')

seluj = Band.create!(
  name: "Seluj & Léon x Shoka",
  youtube_url: "https://www.youtube.com/embed/y_l5Vj7-6Xg",
  user_id: "7",
  description:"Seluj & Léon x Shoka, deux frères qui rappent et un multi-instrumentiste. Nous proposons un univers entre rap et chanson, multicolore."
)
seluj.photos.attach(io: File.open('app/assets/images/bands/seluj.png'), filename: 'seluj.png', content_type:'image/png')

nam = Band.create!(
  name: "Namjera",
  youtube_url: "https://www.youtube.com/embed/TCIrUtevUf4",
  user_id: "8",
  description:"Groupe de métal français qui propose un voyage dans des atmosphères violentes. Les rythmes et mélodies sinueux de ce groupe aux influences psychédéliques, décrivent une vision chaotique du monde."
)
nam.photos.attach(io: File.open('app/assets/images/bands/namjera.jpeg'), filename: 'namjera.jpeg', content_type:'image/jpeg')

theAvener = Band.create!(
  name: "The Avener",
  youtube_url: "https://www.youtube.com/embed/hqwU7nv3hTM",
  user_id: "9",
  description:"The Avener est un DJ niçois d'electro house de renommée internationale. Initialement DJ résident au High Club, il continu ajourd'hui de créer avec et pour les plus grands."
)
theAvener.photos.attach(io: File.open('app/assets/images/bands/avener.jpg'), filename: 'avener.jpg', content_type:'image/jpg')

theAvener_waka = Event.create!(
  band_id: "9",
  bar_id: "6",
  start_date: "2021-09-18T21:30",
  name: "The Avener au Waka bar",
  description: "Le Waka est ravi de vous accueillir à l'occasion du passage d'une figure locale de la musique electronique."
)

feder = Band.create!(
  name: "Feder",
  youtube_url: "https://www.youtube.com/embed/Mptdcx36qZU",
  user_id: "10",
  description:"Feder est un DJ français originaire de Nice. Sa House electrique fait bouger les dance floor de Miami à Ibiza."
)
feder.photos.attach(io: File.open('app/assets/images/bands/feder.jpg'), filename: 'feder.jpg', content_type:'image/jpg')

feder_bulldog = Event.create!(
  band_id: "10",
  bar_id: "16",
  start_date: "2021-09-03T21:30",
  name: "Feder au Bulldog",
  description: "Tout frais, tout beau, venez écouter le nouvel EP de Feder au Bulldog."
)

thoj = Band.create!(
  name: "Thoj",
  youtube_url: "https://www.youtube.com/embed/rtLhoBcVIr8",
  user_id: "11",
  description:"Le musicien niçois fait son chemin dans le milieu de la musique électronique est porte haut les couleurs de la Côte-d'Azur."
)
thoj.photos.attach(io: File.open('app/assets/images/bands/thoj.jpg'), filename: 'thoj.jpg', content_type:'image/jpg')

thoj_oneils = Event.create!(
  band_id: "11",
  bar_id: "11",
  start_date: "2021-09-03T20:30",
  name: "Thoj au Oneils",
  description: "Venez écouter Thoj, l'étoile montante de la scène locale."
)

l2duo = Band.create!(
  name: "L2 Duo",
  user_id: "12",
  description: "Un duo composé de Luisa Kelly et Liam Berthelot. Ils ont un répertoire très varié, chansons françaises et anglaises de tous styles."
)
l2duo.photos.attach(io: File.open('app/assets/images/bands/l2duo.jpg'), filename: 'l2duo.jpg', content_type:'image/jpg')

l2duo_bateleur = Event.create!(
  band_id: "12",
  bar_id: "4",
  start_date: "2021-09-25T21:00",
  name: "L2 Duo au Bateleur",
  description: "Ce duo habitué des lieux revient nous enchanter avec leur reprises accoustiques entrainante."
)

kamini = Band.create!(
  name: "Kamini",
  user_id: "13",
  youtube_url: "https://www.youtube.com/embed/D782Iv9GXSU",
  description: "Rappeur français, connu pour être l'auteur de Marly-Gomont, chanson qui a remporté un vif succès et dont le clip est devenu un phénomène sur Internet"
)
kamini.photos.attach(io: File.open('app/assets/images/bands/kamini.jpg'), filename: 'kamini.jpg', content_type:'image/jpg')


kamini_bateleur = Event.create!(
  band_id: "13",
  bar_id: "13",
  start_date: "2021-09-12T21:00",
  name: "Kamini au MaNolan's du Port",
  description: "Kamini est de retour au Manolan's du POrt de Nice, avec son flow et son humour!"
)

claudio = Band.create!(
  name: "Claudio & friends",
  user_id: "14",
  youtube_url: "https://www.youtube.com/embed/j-TWQA5EIdw",
  description: "Claudio & friends, groupe de jazz niçois touche à tout, l'aise dans tout les styles!"
)
claudio.photos.attach(io: File.open('app/assets/images/bands/claudio.jpg'), filename: 'claudio.jpg', content_type:'image/jpg')

claudio_shapko = Event.create!(
  band_id: "14",
  bar_id: "1",
  start_date: "2021-09-03T22:00",
  name: "Claudio & friends au Shapko!",
  description: "Claudio & friends en live au Shapko pour un set-list Jazz/Rock de folie!"
)

saunier = Band.create!(
  name: "Seb Saunier's Trio",
  user_id: "15",
  youtube_url: "https://www.youtube.com/embed/FcoUvu0mGog",
  description: "Seb Saunier Cofondateur du Wagon et son groupe de Death Metal mélange le code et la musique trash pour notre plus grand bonheur!"
)
saunier.photos.attach(io: File.open('app/assets/images/bands/saunier.jpg'), filename: 'saunier.jpg', content_type:'image/jpg')


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

BandStyle.create!(
  band_id: "6",
  style_id: "3"
)
BandStyle.create!(
  band_id: "6",
  style_id: "5"
)
BandStyle.create!(
  band_id: "7",
  style_id: "1"
)
BandStyle.create!(
  band_id: "7",
  style_id: "2"
)
BandStyle.create!(
  band_id: "8",
  style_id: "4"
)
BandStyle.create!(
  band_id: "9",
  style_id: "10"
)
BandStyle.create!(
  band_id: "9",
  style_id: "6"
)
BandStyle.create!(
  band_id: "10",
  style_id: "10"
)
BandStyle.create!(
  band_id: "11",
  style_id: "10"
)
BandStyle.create!(
  band_id: "11",
  style_id: "6"
)
BandStyle.create!(
  band_id: "12",
  style_id: "13"
)

BandStyle.create!(
  band_id: "13",
  style_id: "2"
)

BandStyle.create!(
  band_id: "14",
  style_id: "3"
)

BandStyle.create!(
  band_id: "14",
  style_id: "9"
)

BandStyle.create!(
  band_id: "15",
  style_id: "4"
)

# ______________________________________________________________________________________

347.times do
  like = BandFav.new
  like.band = Band.find(1)
  like.user = User.first
  like.save(validation: false)
end

387.times do
  like = BandFav.new
  like.band = Band.find(2)
  like.user = User.first
  like.save(validation: false)
end

456.times do
  like = BandFav.new
  like.band = Band.find(3)
  like.user = User.first
  like.save(validation: false)
end

665.times do
  like = BandFav.new
  like.band = Band.find(4)
  like.user = User.first
  like.save(validation: false)
end

456.times do
  like = BandFav.new
  like.band = Band.find(5)
  like.user = User.first
  like.save(validation: false)
end

423.times do
  like = BandFav.new
  like.band = Band.find(6)
  like.user = User.first
  like.save(validation: false)
end

312.times do
  like = BandFav.new
  like.band = Band.find(7)
  like.user = User.first
  like.save(validation: false)
end

259.times do
  like = BandFav.new
  like.band = Band.find(8)
  like.user = User.first
  like.save(validation: false)
end

243.times do
  like = BandFav.new
  like.band = Band.find(9)
  like.user = User.first
  like.save(validation: false)
end

189.times do
  like = BandFav.new
  like.band = Band.find(10)
  like.user = User.first
  like.save(validation: false)
end

280.times do
  like = BandFav.new
  like.band = Band.find(11)
  like.user = User.first
  like.save(validation: false)
end

176.times do
  like = BandFav.new
  like.band = Band.find(12)
  like.user = User.first
  like.save(validation: false)
end

276.times do
  like = BandFav.new
  like.band = Band.find(13)
  like.user = User.first
  like.save(validation: false)
end

236.times do
  like = BandFav.new
  like.band = Band.find(14)
  like.user = User.first
  like.save(validation: false)
end

36.times do
  like = BandFav.new
  like.band = Band.find(15)
  like.user = User.first
  like.save(validation: false)
end
# ______________________________________________________________________________________

BandReview.create!(
  user_id: "10",
  band_id: "1",
  comment: "Trop cool! Super son!",
  rating: 4,
)

BandReview.create!(
  user_id: "3",
  band_id: "6",
  comment: "Pas ouf..",
  rating: 2,
)

BandReview.create!(
  user_id: "9",
  band_id: "6",
  comment: "Pas fan du nouveau style.",
  rating: 3,
)

BandReview.create!(
  user_id: "9",
  band_id: "4",
  comment: "Enorme!",
  rating: 5,
)

BandReview.create!(
  user_id: "15",
  band_id: "4",
  comment: "Super son!",
  rating: 4,
)

# ______________________________________________________________________________________


puts "#{Style.all.count} styles created"
puts "#{Bar.all.count} bars created"
puts "#{User.all.count} users created"
puts "#{Band.all.count} bands created"
puts "#{Event.all.count} events created"
puts "#{BandStyle.all.count} band styles created"
puts "#{BandFav.all.count} band favs created"
puts "#{BandReview.all.count} band review created"
