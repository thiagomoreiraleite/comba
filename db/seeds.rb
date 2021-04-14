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
gs1 = GasStation.create!(name: 'COMERCIAL TAVARES DE COMBUSTIVEIS E LUBRIFICANTES LTDA', address: 'AVENIDA SANTOS DUMONT, 3976, Fortaleza, Ceará, Brasil', brand: 'RAIZEN')
gs2 = GasStation.create!(name: 'COMERCIAL TAVARES DE COMBUSTIVEIS E LUBRIFICANTES LTDA', address: 'AVENIDA SANTOS DUMONT, 2484, Fortaleza, Ceará, Brasil', brand: 'RAIZEN')
gs3 = GasStation.create!(name: 'DAMPETRO COMERCIO DE DERIVADOS DE PETROLEO LTDA', address: 'AVENIDA BARAO DE STUDART, 1050, Fortaleza, Ceará, Brasil', brand: 'IPIRANGA')
gs4 = GasStation.create!(name: 'ACOPEL - AMERICO COMERCIAL DE PETROLEO LTDA', address: 'AVENIDA BARÃO STUDART, 2936, Fortaleza, Ceará, Brasil', brand: 'RAIZEN')
gs5 = GasStation.create!(name: 'POSTO NOVO NORDESTE LTDA', address: 'AVENIDA HERACLITO GRACA, 1510, Fortaleza, Ceará, Brasil', brand: 'PETROBRAS')
gs6 = GasStation.create!(name: 'RIBAS E SOUSA LTDA', address: 'R. CARLOS VASCONCELOS, 2134, Fortaleza, Ceará, Brasil', brand: 'SP')
gs7 = GasStation.create!(name: 'SOBRAL & PALACIO PETROLEO LTDA', address: 'AVENIDA SANTOS DUMONT, 2035, Fortaleza, Ceará, Brasil', brand: 'RAIZEN')
gs8 = GasStation.create!(name: 'SOBRAL & PALACIO PETROLEO LTDA', address: 'R. COSTA BARROS, 1515, Fortaleza, Ceará, Brasil', brand: 'RAIZEN')
gs9 = GasStation.create!(name: 'SOBRAL & PALACIO PETROLEO LTDA', address: 'AVENIDA BARAO DE STUDART, 2255, Fortaleza, Ceará, Brasil', brand: 'RAIZEN')
gs10 = GasStation.create!(name: 'SOBRAL & PALACIO PETROLEO LTDA', address: 'AVENIDA CAROLINA SUCUPIRA, 330, Fortaleza, Ceará, Brasil', brand: 'RAIZEN')
gs11 = GasStation.create!(name: 'SOBRAL & PALACIO PETROLEO LTDA', address: 'R. PADRE VALDEVINO, 1713, Fortaleza, Ceará, Brasil', brand: 'RAIZEN')
gs12 = GasStation.create!(name: 'SOBRAL & PALACIO PETROLEO LTDA', address: 'AVENIDA DA ABOLICAO, 3395, Fortaleza, Ceará, Brasil', brand: 'RAIZEN')
gs13 = GasStation.create!(name: 'SOBRAL & PALACIO PETROLEO LTDA', address: 'AVENIDA PADRE ANTÔNIO TOMAZ, 945, Fortaleza, Ceará, Brasil', brand: 'RAIZEN')
gs14 = GasStation.create!(name: 'SOBRAL & PALACIO PETROLEO LTDA', address: 'AVENIDA MONSENHOR TABOSA, 1054, Fortaleza, Ceará, Brasil', brand: 'RAIZEN')
gs15 = GasStation.create!(name: 'SOBRAL & PALACIO PETROLEO LTDA', address: 'AVENIDA DESEMBARGADOR MOREIRA, 1621, Fortaleza, Ceará, Brasil', brand: 'PETROBRAS')
gs16 = GasStation.create!(name: 'LEITE LEITE COMÉRCIO DE COMBUSTÍVEIS LTDA.', address: 'AVENIDA ANTONIO SALES, 902, Fortaleza, Ceará, Brasil', brand: 'SP')
gs17 = GasStation.create!(name: 'IGUATEMI DERIVADOS DE PETROLEO LTDA', address: 'AVENIDA SANTOS DUMONT, 5259, Fortaleza, Ceará, Brasil', brand: 'PETROBRAS')
gs18 = GasStation.create!(name: 'REIS MAGOS COMERCIAL DE PETROLEO LTDA', address: 'AV SEN. VIRGILIO TAVORA, 2099, Fortaleza, Ceará, Brasil', brand: 'PETROBRAS')
gs19 = GasStation.create!(name: 'PADRE PIO COMERCIO DE COMBUSTIVEIS LTDA', address: 'R. DOUTOR ALISIO MAMEDE, 463, Fortaleza, Ceará, Brasil', brand: 'IPIRANGA')
gs20 = GasStation.create!(name: 'DOM LUIS COMERCIO DE DERIVADOS DE PETROLEO EIRELI', address: 'AVENIDA DOM LUIS, 970, Fortaleza, Ceará, Brasil', brand: 'PETROBRAS')
gs21 = GasStation.create!(name: 'ESTAÇÃO COMERCIO DE PETROLEO E SERVIÇOS LTDA', address: 'AVENIDA SANTOS DUMONT, 3636, Fortaleza, Ceará, Brasil', brand: 'PETROBRAS')
gs22 = GasStation.create!(name: 'JANGADA COMERCIO DE COMBUSTIVEIS LTDA', address: 'AVENIDA ABOLIÇÃO, 2432, Fortaleza, Ceará, Brasil', brand: 'RAIZEN')
gs23 = GasStation.create!(name: 'VIA SUL COMERCIO DE DERIVADOS DE PETROLEO LTDA', address: 'R. BARAO DE ARACATI, 1747, Fortaleza, Ceará, Brasil', brand: 'RAIZEN')
gs24 = GasStation.create!(name: 'PROJECAO COMERCIO DE DERIVADOS DE PETROLEO LTDA.', address: 'R. PADRE VALDEVINO, 999, Fortaleza, Ceará, Brasil', brand: 'IPIRANGA')
gs25 = GasStation.create!(name: 'J C COMERCIO DE COMBUSTIVEL LTDA', address: 'AVENIDA ANTONIO JUSTA, 2400, Fortaleza, Ceará, Brasil', brand: 'IPIRANGA')
gs26 = GasStation.create!(name: 'CAUIPE REVENDEDORA DE PETROLEO LTDA', address: 'AVENIDA SENADOR VIRGILIO TAVORA, 1085, Fortaleza, Ceará, Brasil', brand: 'RAIZEN')
gs27 = GasStation.create!(name: 'CEARÁ COMBUSTÍVEIS LTDA.', address: 'R. DR. JOSE LOURENÇO, 1735, Fortaleza, Ceará, Brasil', brand: 'BANDEIRA BRANCA')
gs28 = GasStation.create!(name: 'CEARÁ COMBUSTÍVEIS LTDA.', address: 'AVENIDA BARAO DE STUDART, 1670, Fortaleza, Ceará, Brasil', brand: 'BANDEIRA BRANCA')
gs29 = GasStation.create!(name: 'ORGANIZACAO HELIO MEIRELES PETROLEO LTDA', address: 'AVENIDA ANTONIO SALES, 1340, Fortaleza, Ceará, Brasil', brand: 'PETROBRAS')
gs30 = GasStation.create!(name: 'ORGANIZACAO HELIO MEIRELES PETROLEO LTDA', address: 'AVENIDA SEN.VIRGILIO TAVORA, 330, Fortaleza, Ceará, Brasil', brand: 'PETROBRAS')
gs31 = GasStation.create!(name: 'PETROCAR COMERCIO DE PETROLEO LTDA', address: 'R. DR. JOSE LOURENÇO, 1241, Fortaleza, Ceará, Brasil', brand: 'RAIZEN')
gs32 = GasStation.create!(name: 'J A COMERCIO COMBUSTIVEIS LTDA', address: 'R. JOAQUIM NABUCO, 2050, Fortaleza, Ceará, Brasil', brand: 'SP')
gs33 = GasStation.create!(name: 'SOUZA COMÉRCIO DE PETRÓLEO E SERVIÇOS LTDA', address: 'AVENIDA PONTES VIEIRA, 2250, Fortaleza, Ceará, Brasil', brand: 'RAIZEN')
gs34 = GasStation.create!(name: 'UNIVERSO PETRÓLEO LTDA', address: 'AVENIDA VISCONDE DO RIO BRANCO, 3675, Fortaleza, Ceará, Brasil', brand: 'RAIZEN')
gs35 = GasStation.create!(name: 'SOBRAL & PALACIO PETROLEO LTDA', address: 'R. ISRAEL BEZERRA, 1155, Fortaleza, Ceará, Brasil', brand: 'RAIZEN')
gs36 = GasStation.create!(name: 'SERVI 100 COMERCIO DE COMBUSTIVEIS LTDA', address: 'AVENIDA DESEMBARGADOR MOREIRA, 2528, Fortaleza, Ceará, Brasil', brand: 'PETROBRAS')
gs37 = GasStation.create!(name: 'BAJ-COMERCIAL VAREJISTA DE COMBUSTÍVEIS LTDA.', address: 'AVENIDA PONTES VIEIRA, 1341, Fortaleza, Ceará, Brasil', brand: 'PETROBRAS')
gs38 = GasStation.create!(name: 'GBM COMERCIO DE COMBUSTIVEIS E LUBRIFICANTES LTDA', address: 'AVENIDA RUI BARBOSA, 2929, Fortaleza, Ceará, Brasil', brand: 'PETROBRAS')
gs39 = GasStation.create!(name: 'MACUXI COMÉRCIO VAREJISTA DE COMBUSTÍVEIS LTDA.', address: 'AVENIDA PONTES VIEIRA, 1485, Fortaleza, Ceará, Brasil', brand: 'PETROBRAS')
gs40 = GasStation.create!(name: 'MMA COMERCIO DE COMBUSTIVEIS E LUBRIFICANTES DERIVADOS DE PETROLEO LTDA', address: 'AVENIDA BARAO DE STUDART, 3350, Fortaleza, Ceará, Brasil', brand: 'IPIRANGA')
gs41 = GasStation.create!(name: 'CAUIPE REVENDEDORA DE PETROLEO LTDA', address: 'AVENIDA VISCONDE DO RIO BRANCO, 3680, Fortaleza, Ceará, Brasil', brand: 'RAIZEN')
gs42 = GasStation.create!(name: 'DISTRIBUIDORA CANAA DE COMBUSTIVEIS LTDA', address: '2880 AV. ANTONIO SALES, Fortaleza', brand: 'IPIRANGA')puts "#{GasStation.count} gas stations created."

puts "Creating fuel types..."
gas_stations = GasStation.all
gas_stations.each do |station|
  FuelType.create!([
    { name: 'Diesel', price: 100, gas_station: station },
    { name: 'Diesel S10', price: 100, gas_station: station },
    { name: 'Gasoline', price: 100, gas_station: station },
    { name: 'Gasoline Added', price: 100, gas_station: station },
    { name: 'Etanol', price: 100, gas_station: station },
    { name: 'Gas', price: 100, gas_station: station },
  ])
end
puts "#{FuelType.count} fuel types created."
