# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'Cleaning database...'

GasStation.destroy_all
FuelType.destroy_all

puts "creating users"

u1 = User.new(email: '9', password: '5896')
u1.save
u2 = User.new(email: '18', password: '5896')
u2.save
u3 = User.new(email: '27', password: '5896')
u3.save
u4 = User.new(email: '36', password: '5896')
u4.save
u5 = User.new(email: '45', password: '5896')
u5.save
u6 = User.new(email: '54', password: '5896')
u6.save
u7 = User.new(email: '63', password: '5896')
u7.save
u8 = User.new(email: '72', password: '5896')
u8.save
u9 = User.new(email: '81', password: '5896')
u9.save
u10 = User.new(email: '90', password: '5896')
u10.save

puts "creating gas stations"

gs1 = GasStation.new(name: 'COMERCIAL TAVARES DE COMBUSTIVEIS E LUBRIFICANTES LTDA', address: 'AVENIDA SANTOS DUMONT, 3976, Fortaleza, Ceará, Brasil', brand: 'RAIZEN')
gs2 = GasStation.new(name: 'COMERCIAL TAVARES DE COMBUSTIVEIS E LUBRIFICANTES LTDA', address: 'AVENIDA SANTOS DUMONT, 2484, Fortaleza, Ceará, Brasil', brand: 'RAIZEN')
gs3 = GasStation.new(name: 'DAMPETRO COMERCIO DE DERIVADOS DE PETROLEO LTDA', address: 'AVENIDA BARAO DE STUDART, 1050, Fortaleza, Ceará, Brasil', brand: 'IPIRANGA')
gs4 = GasStation.new(name: 'ACOPEL - AMERICO COMERCIAL DE PETROLEO LTDA', address: 'AVENIDA BARÃO STUDART, 2936, Fortaleza, Ceará, Brasil', brand: 'RAIZEN')
gs5 = GasStation.new(name: 'POSTO NOVO NORDESTE LTDA', address: 'AVENIDA HERACLITO GRACA, 1510, Fortaleza, Ceará, Brasil', brand: 'PETROBRAS')
gs6 = GasStation.new(name: 'RIBAS E SOUSA LTDA', address: 'R. CARLOS VASCONCELOS, 2134, Fortaleza, Ceará, Brasil', brand: 'SP')
gs7 = GasStation.new(name: 'SOBRAL & PALACIO PETROLEO LTDA', address: 'AVENIDA SANTOS DUMONT, 2035, Fortaleza, Ceará, Brasil', brand: 'RAIZEN')
gs8 = GasStation.new(name: 'SOBRAL & PALACIO PETROLEO LTDA', address: 'R. COSTA BARROS, 1515, Fortaleza, Ceará, Brasil', brand: 'RAIZEN')
gs9 = GasStation.new(name: 'SOBRAL & PALACIO PETROLEO LTDA', address: 'AVENIDA BARAO DE STUDART, 2255, Fortaleza, Ceará, Brasil', brand: 'RAIZEN')
gs10 = GasStation.new(name: 'SOBRAL & PALACIO PETROLEO LTDA', address: 'AVENIDA CAROLINA SUCUPIRA, 330, Fortaleza, Ceará, Brasil', brand: 'RAIZEN')
gs11 = GasStation.new(name: 'SOBRAL & PALACIO PETROLEO LTDA', address: 'R. PADRE VALDEVINO, 1713, Fortaleza, Ceará, Brasil', brand: 'RAIZEN')
gs12 = GasStation.new(name: 'SOBRAL & PALACIO PETROLEO LTDA', address: 'AVENIDA DA ABOLICAO, 3395, Fortaleza, Ceará, Brasil', brand: 'RAIZEN')
gs13 = GasStation.new(name: 'SOBRAL & PALACIO PETROLEO LTDA', address: 'AVENIDA PADRE ANTÔNIO TOMAZ, 945, Fortaleza, Ceará, Brasil', brand: 'RAIZEN')
gs14 = GasStation.new(name: 'SOBRAL & PALACIO PETROLEO LTDA', address: 'AVENIDA MONSENHOR TABOSA, 1054, Fortaleza, Ceará, Brasil', brand: 'RAIZEN')
gs15 = GasStation.new(name: 'SOBRAL & PALACIO PETROLEO LTDA', address: 'AVENIDA DESEMBARGADOR MOREIRA, 1621, Fortaleza, Ceará, Brasil', brand: 'PETROBRAS')
gs16 = GasStation.new(name: 'LEITE LEITE COMÉRCIO DE COMBUSTÍVEIS LTDA.', address: 'AVENIDA ANTONIO SALES, 902, Fortaleza, Ceará, Brasil', brand: 'SP')
gs17 = GasStation.new(name: 'IGUATEMI DERIVADOS DE PETROLEO LTDA', address: 'AVENIDA SANTOS DUMONT, 5259, Fortaleza, Ceará, Brasil', brand: 'PETROBRAS')
gs18 = GasStation.new(name: 'REIS MAGOS COMERCIAL DE PETROLEO LTDA', address: 'AV SEN. VIRGILIO TAVORA, 2099, Fortaleza, Ceará, Brasil', brand: 'PETROBRAS')
gs19 = GasStation.new(name: 'PADRE PIO COMERCIO DE COMBUSTIVEIS LTDA', address: 'R. DOUTOR ALISIO MAMEDE, 463, Fortaleza, Ceará, Brasil', brand: 'IPIRANGA')
gs20 = GasStation.new(name: 'DOM LUIS COMERCIO DE DERIVADOS DE PETROLEO EIRELI', address: 'AVENIDA DOM LUIS, 970, Fortaleza, Ceará, Brasil', brand: 'PETROBRAS')
gs21 = GasStation.new(name: 'ESTAÇÃO COMERCIO DE PETROLEO E SERVIÇOS LTDA', address: 'AVENIDA SANTOS DUMONT, 3636, Fortaleza, Ceará, Brasil', brand: 'PETROBRAS')
gs22 = GasStation.new(name: 'JANGADA COMERCIO DE COMBUSTIVEIS LTDA', address: 'AVENIDA ABOLIÇÃO, 2432, Fortaleza, Ceará, Brasil', brand: 'RAIZEN')
gs23 = GasStation.new(name: 'VIA SUL COMERCIO DE DERIVADOS DE PETROLEO LTDA', address: 'R. BARAO DE ARACATI, 1747, Fortaleza, Ceará, Brasil', brand: 'RAIZEN')
gs24 = GasStation.new(name: 'PROJECAO COMERCIO DE DERIVADOS DE PETROLEO LTDA.', address: 'R. PADRE VALDEVINO, 999, Fortaleza, Ceará, Brasil', brand: 'IPIRANGA')
gs25 = GasStation.new(name: 'J C COMERCIO DE COMBUSTIVEL LTDA', address: 'AVENIDA ANTONIO JUSTA, 2400, Fortaleza, Ceará, Brasil', brand: 'IPIRANGA')
gs26 = GasStation.new(name: 'CAUIPE REVENDEDORA DE PETROLEO LTDA', address: 'AVENIDA SENADOR VIRGILIO TAVORA, 1085, Fortaleza, Ceará, Brasil', brand: 'RAIZEN')
gs27 = GasStation.new(name: 'CEARÁ COMBUSTÍVEIS LTDA.', address: 'R. DR. JOSE LOURENÇO, 1735, Fortaleza, Ceará, Brasil', brand: 'BANDEIRA BRANCA')
gs28 = GasStation.new(name: 'CEARÁ COMBUSTÍVEIS LTDA.', address: 'AVENIDA BARAO DE STUDART, 1670, Fortaleza, Ceará, Brasil', brand: 'BANDEIRA BRANCA')
gs29 = GasStation.new(name: 'ORGANIZACAO HELIO MEIRELES PETROLEO LTDA', address: 'AVENIDA ANTONIO SALES, 1340, Fortaleza, Ceará, Brasil', brand: 'PETROBRAS')
gs30 = GasStation.new(name: 'ORGANIZACAO HELIO MEIRELES PETROLEO LTDA', address: 'AVENIDA SEN.VIRGILIO TAVORA, 330, Fortaleza, Ceará, Brasil', brand: 'PETROBRAS')
gs31 = GasStation.new(name: 'PETROCAR COMERCIO DE PETROLEO LTDA', address: 'R. DR. JOSE LOURENÇO, 1241, Fortaleza, Ceará, Brasil', brand: 'RAIZEN')
gs32 = GasStation.new(name: 'J A COMERCIO COMBUSTIVEIS LTDA', address: 'R. JOAQUIM NABUCO, 2050, Fortaleza, Ceará, Brasil', brand: 'SP')
gs33 = GasStation.new(name: 'SOUZA COMÉRCIO DE PETRÓLEO E SERVIÇOS LTDA', address: 'AVENIDA PONTES VIEIRA, 2250, Fortaleza, Ceará, Brasil', brand: 'RAIZEN')
gs34 = GasStation.new(name: 'UNIVERSO PETRÓLEO LTDA', address: 'AVENIDA VISCONDE DO RIO BRANCO, 3675, Fortaleza, Ceará, Brasil', brand: 'RAIZEN')
gs35 = GasStation.new(name: 'SOBRAL & PALACIO PETROLEO LTDA', address: 'R. ISRAEL BEZERRA, 1155, Fortaleza, Ceará, Brasil', brand: 'RAIZEN')
gs36 = GasStation.new(name: 'SERVI 100 COMERCIO DE COMBUSTIVEIS LTDA', address: 'AVENIDA DESEMBARGADOR MOREIRA, 2528, Fortaleza, Ceará, Brasil', brand: 'PETROBRAS')
gs37 = GasStation.new(name: 'BAJ-COMERCIAL VAREJISTA DE COMBUSTÍVEIS LTDA.', address: 'AVENIDA PONTES VIEIRA, 1341, Fortaleza, Ceará, Brasil', brand: 'PETROBRAS')
gs38 = GasStation.new(name: 'GBM COMERCIO DE COMBUSTIVEIS E LUBRIFICANTES LTDA', address: 'AVENIDA RUI BARBOSA, 2929, Fortaleza, Ceará, Brasil', brand: 'PETROBRAS')
gs39 = GasStation.new(name: 'MACUXI COMÉRCIO VAREJISTA DE COMBUSTÍVEIS LTDA.', address: 'AVENIDA PONTES VIEIRA, 1485, Fortaleza, Ceará, Brasil', brand: 'PETROBRAS')
gs40 = GasStation.new(name: 'MMA COMERCIO DE COMBUSTIVEIS E LUBRIFICANTES DERIVADOS DE PETROLEO LTDA', address: 'AVENIDA BARAO DE STUDART, 3350, Fortaleza, Ceará, Brasil', brand: 'IPIRANGA')
gs41 = GasStation.new(name: 'CAUIPE REVENDEDORA DE PETROLEO LTDA', address: 'AVENIDA VISCONDE DO RIO BRANCO, 3680, Fortaleza, Ceará, Brasil', brand: 'RAIZEN')
gs42 = GasStation.new(name: 'DISTRIBUIDORA CANAA DE COMBUSTIVEIS LTDA', address: 'AVENIDA ANTONIO SALES, 2880, Fortaleza, Ceará, Brasil', brand: 'IPIRANGA')

gs1.save!
gs2.save!
gs3.save!
gs4.save!
gs5.save!
gs6.save!
gs7.save!
gs8.save!
gs9.save!
gs10.save!
gs11.save!
gs12.save!
gs13.save!
gs14.save!
gs15.save!
gs16.save!
gs17.save!
gs18.save!
gs19.save!
gs20.save!
gs21.save!
gs22.save!
gs23.save!
gs24.save!
gs25.save!
gs26.save!
gs27.save!
gs28.save!
gs29.save!
gs30.save!
gs31.save!
gs32.save!
gs33.save!
gs34.save!
gs35.save!
gs36.save!
gs37.save!
gs38.save!
gs39.save!
gs40.save!
gs41.save!
gs42.save!


puts "gas stations created!"
