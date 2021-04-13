# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
GasStation.destroy_all
puts "All gas stations destroyed"

puts "Creating gas stations"
gas_stations = GasStation.create([
  {name: 'Posto Dragão do mar', address: '35 Av. Pessoa Anta, Fortaleza'},
  {name: 'Sobral e Palácio Aldeota', address: '2035 Av. Santos Dumont, Fortaleza'},
  {name: 'Posto Shell', address: '1747 R. Barão de Aracati, Fortaleza', brand: 'Shell'},
])
puts "#{GasStation.count}/3 gas stations created"
