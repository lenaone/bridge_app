# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


# Trello - medium: using seeds.rb (database seed task) - add some test data and do a rough sketch of the home page (only home page)

# create all campuses

News.delete_all
Service.delete_all
Event.delete_all
Podcast.delete_all
Campus.delete_all

west_campus = Campus.create(image_url: "../db/app/assets/images/location-west", address: "10 GRIFFITHS ST RICHMOND 3121")
city_campus = Campus.create(image_url: "../db/app/assets/images/location-city", address: "VICTORIA UNI, BUILDING 9101, VICTORIA UNIVERSITY ST ALBANS CAMPUS MCKECHNIE ST, ST ALBANS")
east_campus = Campus.create(image_url: "../db/app/assets/images/location-east", address: "VILLAGE CINEMAS DONCASTER WESTFIELD SHOPPING TOWN 619 DONCASTER RD, DONCASTER VIC")
south_campus = Campus.create(image_url: "../db/app/assets/images/location-south", address: "VILLAGE CINEMAS SOUTHLAND WESTFIELD SHOPPING CENTRE 1239 NEPEAN HWY, CHELTENHAM VIC")
bangkok_campus = Campus.create(image_url: "../db/app/assets/images/location-bangkok", address: "Arize Hotel Phrom Pong (Sukhumvit 26)")

campuses = Campus.all
campuses.each do |campus|
  p campus.address
end


# Create 5 news

News.create(image_url: "../db/app/assets/images/Revival_Night_Website_Banner.jpg", date: "28/07/19", title: "coffee car's back", description: "Someone stolen west campus coffee car but we have a new coffee car in west campus!! how amazing it is. Now we can have a coffee again. Let's check out!", campus_id: west_campus.id)
News.create(image_url: "../db/app/assets/images/Revival_Night_Website_Banner.jpg", date: "21/07/2019", title: "Supernatural Life series", description: "Join us today for the first week of Supernatural life series", campus_id: west_campus.id)
News.create(image_url: "../db/app/assets/images/Revival_Night_Website_Banner.jpg", date: "10/07/2019", title: "Happy birthday Sonia", description: " Happiest of birthdays to Pastor Sonia! we love you so much", campus_id: west_campus.id)
News.create(image_url: "../db/app/assets/images/Revival_Night_Website_Banner.jpg", date: "15/06/2019", title: "Happy birthday Dave", description: " Happiest of birthdays to Pastor Dave! we love you so much", campus_id: west_campus.id)
News.create(image_url: "../db/app/assets/images/Revival_Night_Website_Banner.jpg", date: "07/05/2019", title: "Celebration of 1yr at West campus", description: "our 1yr celebration in the wildwildwest 🎉 What a blessing it is", campus_id: west_campus.id)


news = News.all
news.each do |each_news|
  p each_news.description
end

# create 6 events

Event.create(image_url: "../db/app/assets/images/Revival_Night_Website_Banner.jpg", date: "30/07/2019", time: 7, speaker:"Ps Corey Turner", campus_id: city_campus.id, address: "10 GRIFFITHS ST RICHMOND 3121" )
Event.create(image_url: "../db/app/assets/images/Revival_Night_Website_Banner.jpg", date: "31/07/2019", time: 7, speaker:"Ps Jemima Varughese", campus_id: city_campus.id, address: "10 GRIFFITHS ST RICHMOND 3121" )
Event.create(image_url: "../db/app/assets/images/Revival_Night_Website_Banner.jpg", date: "01/08/2019", time: 7, speaker:"Ps Joel Ramsey", campus_id: city_campus.id, address: "10 GRIFFITHS ST RICHMOND 3121" )
Event.create(image_url: "../db/app/assets/images/Revival_Night_Website_Banner.jpg", date: "02/08/2019", time: 7, speaker:"Ps Mike Connell", campus_id: city_campus.id, address: "10 GRIFFITHS ST RICHMOND 3121" )
Event.create(image_url: "../db/app/assets/images/Revival_Night_Website_Banner.jpg", date: "20/06/2019", time: 7, speaker:"Ps Mike Maiden", campus_id: city_campus.id, address: "10 GRIFFITHS ST RICHMOND 3121" )

events = Event.all
events.each do |event|
  p event.speaker
end


# create services for each campus
 # city service - every sunday - 9am, 11:30 & 17:30pm also 16:00pm prayer power service
 # east - every sunday - 9am, 11am
 # south and west - every sunday - 10am
 Service.create(campus_id: city_campus.id, start_time: 9, day_of_week: "sunday")
 Service.create(campus_id: city_campus.id, start_time: 11.30, day_of_week: "sunday")
 Service.create(campus_id: city_campus.id, start_time: 16, day_of_week: "sunday")
 Service.create(campus_id: city_campus.id, start_time: 17.30, day_of_week: "sunday")

 Service.create(campus_id: east_campus.id, start_time: 9, day_of_week: "sunday")
 Service.create(campus_id: east_campus.id, start_time: 11, day_of_week: "sunday")

 Service.create(campus_id: south_campus.id, start_time: 10, day_of_week: "sunday")

 Service.create(campus_id: west_campus.id, start_time: 10, day_of_week: "sunday")


 services = Service.all
 services.each do |service|
    p service.start_time
  end


# create a few podcasts (5)

Podcast.create( date: "04/08/2019", title:"Thirst Quencher - Ps David Fuentes", url:"https://podcasts.apple.com/au/podcast/thirst-quencher-ps-david-fuentes/id323335861?i=1000446153694", campus_id: west_campus.id )

Podcast.create( date: "04/08/2019", title:"God Of The Battle Cry - Ps Raef Soliman", url:"https://podcasts.apple.com/au/podcast/god-of-the-battle-cry-ps-raef-soliman/id323335861?i=1000446136864", campus_id: city_campus.id )

Podcast.create( date: "04/08/2019", title:"The Stretch Of Faith - Ps Mike Connell", url:"https://podcasts.apple.com/au/podcast/the-stretch-of-faith-ps-mike-connell/id323335861?i=1000446136862", campus_id: city_campus.id )

Podcast.create( date: "04/08/2019", title:"Infirmity Free - Ps Mike Connell", url:"https://podcasts.apple.com/au/podcast/infirmity-free-ps-mike-connell/id323335861?i=1000446136863", campus_id: city_campus.id )

Podcast.create( date: "31/07/2019", title:"The Fingerprints Of God - Dr Allan Meyer", url:"https://podcasts.apple.com/au/podcast/the-fingerprints-of-god-dr-allan-meyer/id323335861?i=1000445540935", campus_id: east_campus.id )

podcasts = Podcast.all
podcasts.each do |podcast|
  p podcast.campus_id
end
