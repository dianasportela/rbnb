# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

# file = URI.open("https://upload.wikimedia.org/wikipedia/commons/thumb/8/82/NES-Console-Set.jpg/1200px-NES-Console-Set.jpg")
# article = Article.new(title: "NES", body: "A great console")
# article.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
# article.save

Castle.destroy_all
User.destroy_all
cansada = User.create(username: 'Diana Saddi', email: 'dianinha@to_cansada.com', password: '123456')

Castle.create!(
  castle_name: "Neuschwanstein",
  location: "Hohenschwangau, Germany",
  castle_picture: "https://i.natgeofe.com/n/630e4e81-c99c-459d-afce-249615d9f268/neuschwanstein-castle-bavaria-germany.jpg",
  overview: "A 19th-century historicist palace on a rugged hill of the foothills of the Alps in the very south of Germany, near the border with Austria. Despite the main residence of the Bavarian monarchs at the time—the Munich Residenz—being one of the most extensive palace complexes in the world, King Ludwig II of Bavaria felt the need to escape from the constraints he saw himself exposed to in Munich, and commissioned Neuschwanstein Palace on the remote northern edges of the Alps as a retreat but also in honour of composer Richard Wagner, whom he greatly admired.",
  castle_avg_rating: 9.3,
  min_price: 19000,
  availability: false,
  user: cansada
)
Castle.create!(
  castle_name: "Bran Castle",
  location: "Bran, Transylvania",
  castle_picture: "https://i.natgeofe.com/n/84e54901-e481-4375-87c0-b546ebe9e87b/bran-castle-romania.jpg",
  overview: "Commonly known outside Transylvania as Dracula's Castle, it is marketed as the home of the title character in Bram Stoker's Dracula. There is no evidence that Stoker knew anything about this castle, which has only tangential associations with Vlad the Impaler, voivode of Wallachia, who shares his name with Dracula. The castle is now a museum dedicated to displaying art and furniture collected by Queen Marie.",
  castle_avg_rating: 8.1,
  min_price: 17500,
  availability: false,
  user: cansada
  )
Castle.create!(
  castle_name: "Chambord Castle",
  location: "Val de Loire, France",
  castle_picture: "https://i.natgeofe.com/n/d05f2683-2788-4611-a795-e465f7f7e496/chambord-chateau-france.jpg",
  overview: "One of the most recognisable châteaux in the world because of its very distinctive French Renaissance architecture, which blends traditional French medieval forms with classical Renaissance structures. The building was constructed by the king of France, Francis I, as a hunting lodge. The original design of the château is attributed to the Tuscan architect Domenico da Cortona; Leonardo da Vinci may have also influenced the design.",
  castle_avg_rating: 9.6,
  min_price: 22000,
  availability: false,
  user: cansada
)
Castle.create!(
  castle_name: "Moszna Castle",
  location: "Mozna, Poland",
  castle_picture: "https://i.natgeofe.com/n/64665f1b-44ba-4247-ad36-3ff577e9a9d0/moszna-castle-poland.jpg",
  overview: "A historic castle and palace located in the small village of Moszna, in southwestern Poland. Situated approximately 30 kilometres (19 mi) south of the regional capital Opole, between the towns of Prudnik and Krapkowice, the residence is an excellent example of romantic fairy-tale and eclectic architecture. The central part of the castle is an old baroque palace which was partially destroyed by fire on the night of April 2, 1896 and was reconstructed in the same year.",
  castle_avg_rating: 7.9,
  min_price: 12000,
  availability: false,
  user: cansada
  )
Castle.create!(
  castle_name: "Leeds Castle",
  location: "Kent, England",
  castle_picture: "https://i.natgeofe.com/n/0981af44-6ea7-4ccd-821a-ce8ef0d484ed/leeds-castle-kent-united-kingdom.jpg",
  overview: "A castle in Kent, England, 7 miles (11 km) southeast of Maidstone. It is built on islands in a lake formed by the River Len to the east of the village of Leeds. It is a historic Grade I listed estate. A castle has existed on the site since 857. In the 13th century, it came into the hands of King Edward I, for whom it became a favourite residence. The present castle dates mostly from the early 19th century. Its last private owner, Olive, Lady Baillie, left the castle in trust to open it to the public. It has been open since 1976.",
  castle_avg_rating: 7.7,
  min_price: 13300,
  availability: false,
  user: cansada
  )
Castle.create!(
  castle_name: "St. Vitus Cathedral",
  location: "Prague, Czech Republic",
  castle_picture: "https://i.natgeofe.com/n/f09538db-f192-4edc-8425-46890a931d8e/st-vitus-cathedral-prague-castle-czech-republic.jpg",
  overview: "A Catholic metropolitan cathedral in Prague, and the seat of the Archbishop of Prague. Until 1997, the cathedral was dedicated only to Saint Vitus, and is still commonly named only as St. Vitus Cathedral. This cathedral is a prominent example of Gothic architecture, and is the largest and most important church in the country. Located within Prague Castle and containing the tombs of many Bohemian kings and Holy Roman Emperors, the cathedral is under the ownership of the Czech government as part of the Prague Castle complex.",
  castle_avg_rating: 8.3,
  min_price: 18250,
  availability: false,
  user: cansada
  )
Castle.create!(
  castle_name: "Pena Palace",
  location: "Sintra, Portugal",
  castle_picture: "https://i.natgeofe.com/n/35c41224-1d08-4aa0-bb3e-e5bc66f62ed8/pena-palace-sintra-portugal.jpg",
  overview: "A Romanticist castle in São Pedro de Penaferrim, in the municipality of Sintra, on the Portuguese Riviera. The castle stands on the top of a hill in the Sintra Mountains above the town of Sintra, and on a clear day it can be easily seen from Lisbon and much of its metropolitan area. It is a national monument and constitutes one of the major expressions of 19th-century Romanticism in the world. The palace is a UNESCO World Heritage Site and one of the Seven Wonders of Portugal.",
  castle_avg_rating: 8.9,
  min_price: 17250,
  availability: false,
  user: cansada
  )
Castle.create!(
  castle_name: "Bojnice Castle",
  location: "Bojnice, Slovakia",
  castle_picture: "https://i.natgeofe.com/n/0a04e8fd-418c-4525-8722-6fde0ba2a181/bojnice-castle-slovakia.jpg",
  overview: "A Romanesque castle with some original Gothic and Renaissance elements built in the 12th century. Bojnice Castle is one of the most visited castles in Slovakia, receiving hundreds of thousands of visitors every year and also being a popular filming stage for fantasy and fairy-tale movies. It was owned by Hungarian kings and nobleman from the 12th century until the territory became part of Czechoslovakia after the Treaty of Trianon in 1920 and was acquired by a Czech entrepreneur in 1939.",
  castle_avg_rating: 8.4,
  min_price: 16450,
  availability: false,
  user: cansada
  )
Castle.create!(
  castle_name: "Alcazar of Segovia",
  location: "Segovia, Spain",
  castle_picture: "https://i.natgeofe.com/n/2341a20c-a5d8-4133-bfce-aa1e4c8a2ffa/segovia-fortress-spain.jpg",
  overview: "A medieval castle located in the city of Segovia, in Castile and León, Spain. It has existed since at least the 12th century, and is one of the most renowned medieval castles globally and one of the most visited landmarks in Spain. It has been the backdrop for significant historical events and has been home to twenty-two kings, along with notable historical figures. The fortress stands on a rocky crag at the western end of Segovia's Old City, which was declared a UNESCO World Heritage Site in 1985.",
  castle_avg_rating: 8.6,
  min_price: 18750,
  availability: false,
  user: cansada
  )
Castle.create!(
  castle_name: "Buda Castle",
  location: "Budapest, Hungary",
  castle_picture: "https://i.natgeofe.com/n/c4d0df85-ca3b-4cc3-93a3-e0f418f3619b/buda-castle-budapest-hungary.jpg",
  overview: "The historical castle and palace complex of the Hungarian kings in Budapest. First completed in 1265, the Baroque palace that occupies most of the site today was built between 1749 and 1769, severely damaged during the Siege of Budapest in World War II, and rebuilt in a simplified Baroque style during the state communist era. Presently, it houses the Hungarian National Gallery, the Budapest Historical Museum, and the National Széchényi Library.",
  castle_avg_rating: 8.8,
  min_price: 15750,
  availability: false,
  user: cansada
  )
