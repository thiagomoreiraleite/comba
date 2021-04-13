# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Creating gas stations"
gas_stations = GasStation.create([
  {name: 'Posto Dragão do mar', address: 'Av. Pessoa Anta, 35 - Praia de Iracema, Fortaleza - CE, 60060-188, Brazil'},
  {name: 'Sobral e Palácio Aldeota', address: 'Av. Santos Dumont, 2035 - Aldeota, Fortaleza - CE, 60000-000, Brazil'},
  {name: 'Posto Shell', address: 'R. Barão de Aracati, 1747 - Aldeota, Fortaleza - CE, 60115-081, Brazil', brand: 'Shell'},
])
puts "#{GasStation.count}/3 gas stations created"
