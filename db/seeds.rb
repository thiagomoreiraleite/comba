# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'Cleaning database...'
User.destroy_all
GasStation.destroy_all
FuelType.destroy_all

puts "Creating users..."
u1 = User.create!(email: 'user1@comba.com', password: '12345896')
u2 = User.create!(email: 'user2@comba.com', password: '12345896')
u3 = User.create!(email: 'user3@comba.com', password: '12345896')
u4 = User.create!(email: 'user4@comba.com', password: '12345896')
u5 = User.create!(email: 'user5@comba.com', password: '12345896')
u6 = User.create!(email: 'user6@comba.com', password: '12345896')
u7 = User.create!(email: 'user7@comba.com', password: '12345896')
u8 = User.create!(email: 'user8@comba.com', password: '12345896')
u9 = User.create!(email: 'user9@comba.com', password: '12345896')
u10 = User.create!(email: 'user10@comba.com', password: '12345896')
puts "#{User.count} users created."

puts "Creating gas stations..."
gs1 = GasStation.create!(name: 'COMERCIAL TAVARES DE COMBUSTIVEIS E LUBRIFICANTES LTDA', address: 'AVENIDA SANTOS DUMONT, 3976, Fortaleza', brand: 'RAIZEN')
gs2 = GasStation.create!(name: 'COMERCIAL TAVARES DE COMBUSTIVEIS E LUBRIFICANTES LTDA', address: 'AVENIDA SANTOS DUMONT, 2484, Fortaleza', brand: 'RAIZEN')
gs3 = GasStation.create!(name: 'DAMPETRO COMERCIO DE DERIVADOS DE PETROLEO LTDA', address: 'AVENIDA BARAO DE STUDART, 1050, Fortaleza', brand: 'IPIRANGA')
gs4 = GasStation.create!(name: 'ACOPEL - AMERICO COMERCIAL DE PETROLEO LTDA', address: 'AVENIDA BARÃO STUDART, 2936, Fortaleza', brand: 'RAIZEN')
gs5 = GasStation.create!(name: 'POSTO NOVO NORDESTE LTDA', address: 'AVENIDA HERACLITO GRACA, 1510, Fortaleza', brand: 'PETROBRAS')
gs6 = GasStation.create!(name: 'RIBAS E SOUSA LTDA', address: 'RUA CARLOS VASCONCELOS, 2134, Fortaleza', brand: 'SP')
gs7 = GasStation.create!(name: 'SOBRAL & PALACIO PETROLEO LTDA', address: 'AVENIDA SANTOS DUMONT, 2035, Fortaleza', brand: 'RAIZEN')
gs8 = GasStation.create!(name: 'SOBRAL & PALACIO PETROLEO LTDA', address: 'RUA COSTA BARROS, 1515, Fortaleza', brand: 'RAIZEN')
gs9 = GasStation.create!(name: 'SOBRAL & PALACIO PETROLEO LTDA', address: 'AVENIDA BARAO DE STUDART, 2255, Fortaleza', brand: 'RAIZEN')
gs10 = GasStation.create!(name: 'SOBRAL & PALACIO PETROLEO LTDA', address: 'AVENIDA CAROLINA SUCUPIRA, 330, Fortaleza', brand: 'RAIZEN')
gs11 = GasStation.create!(name: 'SOBRAL & PALACIO PETROLEO LTDA', address: 'RUA PADRE VALDEVINO, 1713, Fortaleza', brand: 'RAIZEN')
gs12 = GasStation.create!(name: 'SOBRAL & PALACIO PETROLEO LTDA', address: 'AVENIDA DA ABOLICAO, 3395, Fortaleza', brand: 'RAIZEN')
gs13 = GasStation.create!(name: 'SOBRAL & PALACIO PETROLEO LTDA', address: 'AVENIDA PADRE ANTÔNIO TOMÁS, 945, Fortaleza', brand: 'RAIZEN')
gs14 = GasStation.create!(name: 'SOBRAL & PALACIO PETROLEO LTDA', address: 'AVENIDA MONSENHOR TABOSA, 1054, Fortaleza', brand: 'RAIZEN')
gs15 = GasStation.create!(name: 'SOBRAL & PALACIO PETROLEO LTDA', address: 'AVENIDA DESEMBARGADOR MOREIRA, 1621, Fortaleza', brand: 'PETROBRAS')
gs16 = GasStation.create!(name: 'LEITE LEITE COMÉRCIO DE COMBUSTÍVEIS LTDA.', address: 'AVENIDA ANTÔNIO SALES, 902, Fortaleza', brand: 'SP')
gs17 = GasStation.create!(name: 'IGUATEMI DERIVADOS DE PETROLEO LTDA', address: 'AVENIDA SANTOS DUMONT, 5259, Fortaleza', brand: 'PETROBRAS')
gs18 = GasStation.create!(name: 'REIS MAGOS COMERCIAL DE PETROLEO LTDA', address: 'AVENIDA SENADOR VIRGILIO TAVORA, 2099, Fortaleza', brand: 'PETROBRAS')
gs19 = GasStation.create!(name: 'PADRE PIO COMERCIO DE COMBUSTIVEIS LTDA', address: 'RUA DOUTOR ALISIO MAMEDE, 463, Fortaleza', brand: 'IPIRANGA')
gs20 = GasStation.create!(name: 'DOM LUIS COMERCIO DE DERIVADOS DE PETROLEO EIRELI', address: 'AVENIDA DOM LUIS, 970, Fortaleza', brand: 'PETROBRAS')
gs21 = GasStation.create!(name: 'ESTAÇÃO COMERCIO DE PETROLEO E SERVIÇOS LTDA', address: 'AVENIDA SANTOS DUMONT, 3636, Fortaleza', brand: 'PETROBRAS')
gs22 = GasStation.create!(name: 'JANGADA COMERCIO DE COMBUSTIVEIS LTDA', address: 'AVENIDA ABOLIÇÃO, 2432, Fortaleza', brand: 'RAIZEN')
gs23 = GasStation.create!(name: 'VIA SUL COMERCIO DE DERIVADOS DE PETROLEO LTDA', address: 'RUA BARAO DE ARACATI, 1747, Fortaleza', brand: 'RAIZEN')
gs24 = GasStation.create!(name: 'PROJECAO COMERCIO DE DERIVADOS DE PETROLEO LTDA.', address: 'RUA PADRE VALDEVINO, 999, Fortaleza', brand: 'IPIRANGA')
gs25 = GasStation.create!(name: 'J C COMERCIO DE COMBUSTIVEL LTDA', address: 'AVENIDA ANTÔNIO JUSTA, 2400, Fortaleza', brand: 'IPIRANGA')
gs26 = GasStation.create!(name: 'CAUIPE REVENDEDORA DE PETROLEO LTDA', address: 'AVENIDA SENADOR VIRGILIO TAVORA, 1085, Fortaleza', brand: 'RAIZEN')
gs27 = GasStation.create!(name: 'CEARÁ COMBUSTÍVEIS LTDA.', address: 'RUA DR. JOSE LOURENÇO, 1735, Fortaleza', brand: 'BANDEIRA BRANCA')
gs28 = GasStation.create!(name: 'CEARÁ COMBUSTÍVEIS LTDA.', address: 'AVENIDA BARAO DE STUDART, 1670, Fortaleza', brand: 'BANDEIRA BRANCA')
gs29 = GasStation.create!(name: 'ORGANIZACAO HELIO MEIRELES PETROLEO LTDA', address: 'AVENIDA ANTÔNIO SALES, 1340, Fortaleza', brand: 'PETROBRAS')
gs30 = GasStation.create!(name: 'ORGANIZACAO HELIO MEIRELES PETROLEO LTDA', address: 'AVENIDA SENADOR VIRGILIO TAVORA, 330, Fortaleza', brand: 'PETROBRAS')
gs31 = GasStation.create!(name: 'PETROCAR COMERCIO DE PETROLEO LTDA', address: 'RUA DR. JOSE LOURENÇO, 1241, Fortaleza', brand: 'RAIZEN')
gs32 = GasStation.create!(name: 'J A COMERCIO COMBUSTIVEIS LTDA', address: 'RUA JOAQUIM NABUCO, 2050, Fortaleza', brand: 'SP')
gs33 = GasStation.create!(name: 'SOUZA COMÉRCIO DE PETRÓLEO E SERVIÇOS LTDA', address: 'AVENIDA PONTES VIEIRA, 2250, Fortaleza', brand: 'RAIZEN')
gs34 = GasStation.create!(name: 'UNIVERSO PETRÓLEO LTDA', address: 'AVENIDA VISCONDE DO RIO BRANCO, 3675, Fortaleza, Ceará', brand: 'RAIZEN')
gs35 = GasStation.create!(name: 'SOBRAL & PALACIO PETROLEO LTDA', address: 'RUA ISRAEL BEZERRA, 1155, Fortaleza', brand: 'RAIZEN')
gs36 = GasStation.create!(name: 'SERVI 100 COMERCIO DE COMBUSTIVEIS LTDA', address: 'AVENIDA DESEMBARGADOR MOREIRA, 2528, Fortaleza', brand: 'PETROBRAS')
gs37 = GasStation.create!(name: 'BAJ-COMERCIAL VAREJISTA DE COMBUSTÍVEIS LTDA.', address: 'AVENIDA PONTES VIEIRA, 1341, Fortaleza', brand: 'PETROBRAS')
gs38 = GasStation.create!(name: 'GBM COMERCIO DE COMBUSTIVEIS E LUBRIFICANTES LTDA', address: 'AVENIDA RUI BARBOSA, 2929, Fortaleza', brand: 'PETROBRAS')
gs39 = GasStation.create!(name: 'MACUXI COMÉRCIO VAREJISTA DE COMBUSTÍVEIS LTDA.', address: 'AVENIDA PONTES VIEIRA, 1485, Fortaleza', brand: 'PETROBRAS')
gs40 = GasStation.create!(name: 'MMA COMERCIO DE COMBUSTIVEIS E LUBRIFICANTES DERIVADOS DE PETROLEO LTDA', address: 'AVENIDA BARAO DE STUDART, 3350, Fortaleza', brand: 'IPIRANGA')
gs41 = GasStation.create!(name: 'CAUIPE REVENDEDORA DE PETROLEO LTDA', address: 'AVENIDA VISCONDE DO RIO BRANCO, 3680, Fortaleza', brand: 'RAIZEN')
gs42 = GasStation.create!(name: 'DISTRIBUIDORA CANAA DE COMBUSTIVEIS LTDA', address: 'AVENIDA ANTÔNIO SALES 2880, Fortaleza', brand: 'IPIRANGA')
puts "#{GasStation.count} gas stations created."

puts "Creating fuel types..."
gas_stations = GasStation.all
gas_stations.each do |station|
  FuelType.create!([
    { name: 'Diesel', price: 100, gas_station: station },
    { name: 'Diesel S10', price: 100, gas_station: station },
    { name: 'Gasolina', price: 100, gas_station: station },
    { name: 'Gasolina Aditivada', price: 100, gas_station: station },
    { name: 'Etanol', price: 100, gas_station: station },
    { name: 'Gás', price: 100, gas_station: station },
  ])
end
puts "#{FuelType.count} fuel types created."

a = GasStation.second.fuel_types.first
a.price = 80
a.save

b = GasStation.third.fuel_types.third
b.price = 50
b.save

c = GasStation.fifth.fuel_types.fifth
c.price = 30
c.save