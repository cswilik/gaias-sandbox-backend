# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Region.destroy_all
State.destroy_all
Weather.destroy_all

#user seeds
admin = User.create(username:"Admin", password: "1234")
first = User.create(username:"Ben", password: "1111")

#region and state seeds
west = Region.create(name: "west", latMin: 33.5, latMax: 42.0, longMin: -124.5, longMax: -114.6)
northwest = Region.create(name: "northwest", latMin: 41.1, latMax: 48.6, longMin: -124.8, longMax: -104.2)
southwest = Region.create(name: "southwest", latMin: 28.8, latMax: 41.4, longMin: -114.0, longMax: -90.4)
midwest = Region.create(name: "midwest", latMin: 40.7, latMax: 48.8, longMin: -104.0, longMax: -80.5)
southeast = Region.create(name: "southeast", latMin: 26.9, latMax: 36.6, longMin: -93.8, longMax: -76.2)
midatlantic = Region.create(name: "midatlantic", latMin: 44.7, longMin:-73.9, latMax:36.7, longMax:-83.0)
northeast = Region.create(name:"northeast", latMin:41.3, longMin:-73.3, latMax:46.9, longMax:-68.2)

california = State.create(name: "california", region_id: west.id)
nevada = State.create(name: "nevada", region_id: west.id)

oregon = State.create(name: "oregon", region_id: northwest.id)
washington = State.create(name: "washington", region_id: northwest.id)
idaho = State.create(name: "idaho", region_id: northwest.id)
montana = State.create(name: "montana", region_id: northwest.id)
wyoming = State.create(name: "wyoming", region_id: northwest.id)

northdakota = State.create(name: "north dakota", region_id: midwest.id)
southdakota = State.create(name: "south dakota", region_id: midwest.id)
nebraska = State.create(name: "nebraska", region_id: midwest.id)
kansas = State.create(name: "kansas", region_id: midwest.id)
minnesota = State.create(name: "minnesota", region_id: midwest.id)
wisconsin = State.create(name: "wisconsin", region_id: midwest.id)
iowa = State.create(name: "iowa", region_id: midwest.id)
missouri = State.create(name: "missouri", region_id: midwest.id)
illinois = State.create(name: "illinois", region_id: midwest.id)
indiana = State.create(name: "indiana", region_id: midwest.id)
michigan = State.create(name: "michigan", region_id: midwest.id)
kentucky = State.create(name: "kentucky", region_id: midwest.id)
ohio = State.create(name: "ohio", region_id: midwest.id)

utah = State.create(name: "utah", region_id: southwest.id)
arizona = State.create(name: "arizona", region_id: southwest.id)
colorado = State.create(name: "colorado", region_id: southwest.id)
newmexico = State.create(name: "new mexico", region_id: southwest.id)
oklahoma = State.create(name: "oklahoma", region_id: southwest.id)
texas = State.create(name: "texas", region_id: southwest.id)

arkansas = State.create(name: "arkansas", region_id: southeast.id)
louisiana = State.create(name: "louisiana", region_id: southeast.id)
mississippi = State.create(name: "mississippi", region_id: southeast.id)
tennesse = State.create(name: "tennesse", region_id: southeast.id)
alabama = State.create(name: "alabama", region_id: southeast.id)
northcarolina = State.create(name: "north carolina", region_id: southeast.id)
southcarolina = State.create(name: "south carolina", region_id: southeast.id)
florida = State.create(name:"florida", region_id: southeast.id)
georgia = State.create(name: "georgia", region_id: southeast.id)


maine = State.create(name: "maine", region_id: northeast.id)
vermont = State.create(name: "vermont", region_id: northeast.id)
newhampshire = State.create(name:"new hampshire", region_id: northeast.id)
massachusetts = State.create(name:"massachusetts", region_id: northeast.id)
connecticut = State.create(name:"connecticut", region_id: northeast.id)
rhodeisland = State.create(name: "rhode island", region_id: northeast.id)

newyork = State.create(name: "new york", region_id: midatlantic.id)
pennsylvania = State.create(name: "pennsylvania" , region_id: midatlantic.id)
newjersey = State.create(name: "new jersey" , region_id: midatlantic.id)
westvirginia = State.create(name: "west virginia" , region_id: midatlantic.id)
maryland= State.create(name: "maryland" , region_id: midatlantic.id)
virginia = State.create(name: "virginia" , region_id: midatlantic.id)
delaware = State.create(name: "delaware", region_id: midatlantic.id)

#initial weather seeds
Weather.create(user_id: admin.id, region_id: west.id, description: "its a rainy day in the rockies", temp: 3, wind: 3, rain: 4, cloud: 3)
Weather.create(user_id: admin.id, region_id: northwest.id, description: "heat wave in the north", temp: 6, wind: 1, rain: 1, cloud: 1)
Weather.create(user_id: admin.id, region_id: southwest.id, description: "somehow, its freezing in the desert", temp: 1, wind: 6, rain: 1, cloud: 1)
Weather.create(user_id: admin.id, region_id: midwest.id, description: "clear skies, warm day, but also tornados", temp: 4, wind: 6, rain: 1, cloud: 1)
Weather.create(user_id: admin.id, region_id: northeast.id, description: "theres a storm coming", temp: 2, wind: 4, rain: 4, cloud: 6)
Weather.create(user_id: admin.id, region_id: midatlantic.id, description: "great beach weather", temp: 4, wind: 2, rain: 1, cloud: 2)
Weather.create(user_id: admin.id, region_id: southeast.id, description: "hurricane season", temp: 2, wind: 6, rain: 6, cloud: 6)