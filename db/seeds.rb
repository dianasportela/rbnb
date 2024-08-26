# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

cansada = User.create(email: 'dianinha@to_cansada.com', password: '123456')

Castle.create!(castle_name: "Neuschwanstein", location: "Germany", castle_picture: "https://i.natgeofe.com/n/630e4e81-c99c-459d-afce-249615d9f268/neuschwanstein-castle-bavaria-germany.jpg", user: cansada)
Castle.create(castle_name: "Bran Castle", location: "Transylvania, Romania", castle_picture: "https://i.natgeofe.com/n/84e54901-e481-4375-87c0-b546ebe9e87b/bran-castle-romania.jpg", user: cansada)
Castle.create(castle_name: "Chambord Castle", location: "Frace", castle_picture: "https://i.natgeofe.com/n/d05f2683-2788-4611-a795-e465f7f7e496/chambord-chateau-france.jpg", user: cansada)
Castle.create(castle_name: "Moszna Castle", location: "Poland", castle_picture: "https://i.natgeofe.com/n/64665f1b-44ba-4247-ad36-3ff577e9a9d0/moszna-castle-poland.jpg", user: cansada)
Castle.create(castle_name: "Leeds Castle", location: "Kent, England", castle_picture: "https://i.natgeofe.com/n/0981af44-6ea7-4ccd-821a-ce8ef0d484ed/leeds-castle-kent-united-kingdom.jpg", user: cansada)
Castle.create(castle_name: "St. Vitus Cathedral Prague Castle", location: "Czech Republic", castle_picture: "https://i.natgeofe.com/n/f09538db-f192-4edc-8425-46890a931d8e/st-vitus-cathedral-prague-castle-czech-republic.jpg", user: cansada)
Castle.create(castle_name: "Pena Palace", location: "Sintra, Portugal", castle_picture: "https://i.natgeofe.com/n/35c41224-1d08-4aa0-bb3e-e5bc66f62ed8/pena-palace-sintra-portugal.jpg", user: cansada)
Castle.create(castle_name: "Bojnice Castle", location: "Slovakia", castle_picture: "https://i.natgeofe.com/n/0a04e8fd-418c-4525-8722-6fde0ba2a181/bojnice-castle-slovakia.jpg", user: cansada)
Castle.create(castle_name: "Segovia Fortress", location: "Spain", castle_picture: "https://i.natgeofe.com/n/2341a20c-a5d8-4133-bfce-aa1e4c8a2ffa/segovia-fortress-spain.jpg", user: cansada)
Castle.create(castle_name: "Buda Castle Budapest", location: "Budapest, Hungary", castle_picture: "https://i.natgeofe.com/n/c4d0df85-ca3b-4cc3-93a3-e0f418f3619b/buda-castle-budapest-hungary.jpg", user: cansada)
