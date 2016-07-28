# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



# User seeds -----------------------------------------
User.create!(
	first_name: 'Daniel', 
	last_name: 'Barenboim',
	email: 'barendan@gmail.com',
	password: 'junkfood',
	driver_license: 'B651-169-37-140-0',
	address: '1077 se 6th ave, Dania Beach, Fl 33004',
	phone: '305-414-9776',
	birthday: DateTime.new(1992, 04, 20),
	vip: true,
	verified: true,
	role: 'admin',
	)

User.create!(
	first_name: 'Morgan', 
	last_name: 'Freeman',
	email: 'nowafreeman@aol.com',
	password: 'notaslave',
	driver_license: 'B314-161-90-120-0',
	address: '350 S Miami Ave apt 3402, Miami, Fl 33130',
	phone: '954 554 9364',
	birthday: DateTime.new(1937, 06, 01),
	vip: false,
	verified: true,
	)

User.create!(
	first_name: 'Elon', 
	last_name: 'Musk',
	email: 'elonmusk@tesla.com',
	password: 'simulation',
	driver_license: 'B314-161-71-220-0',
	license_pic: 'image_url',
	address: '120 SW 8th St, Miami, FL 33130',
	phone: '305-718-1446',
	birthday: DateTime.new(1971, 06, 28),
	vip: true,
	verified: true,
	)

# Types of Liquor Seeds-------------------------

Type.create!(name: "Vodka")
Type.create!(name: "Whiskey")
Type.create!(name: "Scotch") #Whisky made in Scotland
Type.create!(name: "Bourbon") #Whiskey made in USA 
Type.create!(name: "Rum")
Type.create!(name: "Gin")
Type.create!(name: "Brandy")
Type.create!(name: "Cognac") #Type of Brandy
Type.create!(name: "Tequila")
Type.create!(name: "Liqueurs")
Type.create!(name: "Wine")
Type.create!(name: "Sparkling Wine")
Type.create!(name: "Champagne")
Type.create!(name: "Beer")
Type.create!(name: "Non-Alcoholic")

# Brands of Liquor Seeds-------------------------

# Vodka Brands
Brand.create!(name: "Tito's")
Brand.create!(name: "Seagram's")
Brand.create!(name: "Smirnoff")
Brand.create!(name: "Ketel One")
Brand.create!(name: "Absolut")
Brand.create!(name: "Grey Goose")
Brand.create!(name: "Starr Blu")
Brand.create!(name: "Svedka")
Brand.create!(name: "Finlandia")
Brand.create!(name: "Skyy")
Brand.create!(name: "Veil")
Brand.create!(name: "Stolichnaya")
Brand.create!(name: "American Pride")
Brand.create!(name: "Luksusowa")
Brand.create!(name: "Pinnacle")
Brand.create!(name: "Belvedere")
Brand.create!(name: "Ciroc")
Brand.create!(name: "New Amsterdam")
Brand.create!(name: "Eight Degrees")
Brand.create!(name: "Deep Eddy")
Brand.create!(name: "Platinum")
Brand.create!(name: "Skol")
Brand.create!(name: "Popov")
Brand.create!(name: "Russian Standard")
Brand.create!(name: "Sobieski")
Brand.create!(name: "Nue")
Brand.create!(name: "Chopin")
Brand.create!(name: "Three Olives")
Brand.create!(name: "Esme")
Brand.create!(name: "Crystal Head")
Brand.create!(name: "Hope")

# Scotch Brands
Brand.create!(name: "Johnnie Walker")
Brand.create!(name: "Dewar's")
Brand.create!(name: "Macallan")
Brand.create!(name: "Glenlivet")
Brand.create!(name: "Chivas")
Brand.create!(name: "Balvenie")
Brand.create!(name: "Grangestone")
Brand.create!(name: "Famous Grouse")
Brand.create!(name: "Lagavulin")
Brand.create!(name: "Clan MacGregor")
Brand.create!(name: "Glenfiddich")
Brand.create!(name: "Buchanan's")
Brand.create!(name: "Glenmorangie")
Brand.create!(name: "J & B")
Brand.create!(name: "Shieldaig")
Brand.create!(name: "Oban")
Brand.create!(name: "Laphroaig")
Brand.create!(name: "Scoresby")
Brand.create!(name: "Cutty Sark")
Brand.create!(name: "Glen Ness")
Brand.create!(name: "Monkey Shoulder")
Brand.create!(name: "Highland Park")
Brand.create!(name: "Ardbeg")
Brand.create!(name: "Aberlour")
Brand.create!(name: "Inver")
Brand.create!(name: "Old Crofter")
Brand.create!(name: "Dalwhinnie")
Brand.create!(name: "Dalmore")
Brand.create!(name: "Talisker")
Brand.create!(name: "Old Smuggler")
Brand.create!(name: "Ainsley")
Brand.create!(name: "Grant's")

# Bourbon Brands
Brand.create!(name: "Maker's Mark")
Brand.create!(name: "Jim Beam")
Brand.create!(name: "Evan Williams")
Brand.create!(name: "Angel's Envy")
Brand.create!(name: "Bulleit")
Brand.create!(name: "Woodford")
Brand.create!(name: "Basil")
Brand.create!(name: "Southern Comfort")
Brand.create!(name: "Early Times")
Brand.create!(name: "Maker's 46")
Brand.create!(name: "Knob Creek")
Brand.create!(name: "Two Stars")
Brand.create!(name: "Wild Turkey")
Brand.create!(name: "Buffalo Trace")
Brand.create!(name: "Four Roses")
Brand.create!(name: "1792")
Brand.create!(name: "Colonel Lee")
Brand.create!(name: "Watkins")
Brand.create!(name: "Black Eagle")
Brand.create!(name: "Eagle Rare")
Brand.create!(name: "Hayes Parker")
Brand.create!(name: "Ten High")
Brand.create!(name: "Elijah Craig")
Brand.create!(name: "Jefferson's")
Brand.create!(name: "Old Crow")
Brand.create!(name: "Buckhorn")
Brand.create!(name: "Winchester")
Brand.create!(name: "Black Ridge")
Brand.create!(name: "Hancock's")
Brand.create!(name: "Calumet Farm")
Brand.create!(name: "Michter's")
Brand.create!(name: "Breckenridge")
Brand.create!(name: "Southshot")
Brand.create!(name: "Kentucky Gentlemen")
Brand.create!(name: "Chestnut Farms")
Brand.create!(name: "Heritage")
Brand.create!(name: "Black Powder")
Brand.create!(name: "Paddleford Creek")
Brand.create!(name: "Ancient Age")
Brand.create!(name: "Old Forester")
Brand.create!(name: "Garrison Bros")
Brand.create!(name: "Old Grand Dad")
Brand.create!(name: "George Dickel")

# Rum Brands

Brand.create!(name: "Captain Morgan")
Brand.create!(name: "Bacardi")
Brand.create!(name: "Malibu")
Brand.create!(name: "Ron Zacapa")
Brand.create!(name: "Sailor Jerry")
Brand.create!(name: "Mount Gay")
Brand.create!(name: "Kaniche")
Brand.create!(name: "Largo Bay")
Brand.create!(name: "Myers's")
Brand.create!(name: "Kraken")
Brand.create!(name: "Cruzan")
Brand.create!(name: "Bay Street")
Brand.create!(name: "Zaya")
Brand.create!(name: "Gosling's")
Brand.create!(name: "Ronrico")
Brand.create!(name: "R.L. Seale's")
Brand.create!(name: "Jonah's Curse")
Brand.create!(name: "Siesta Key")
Brand.create!(name: "Flor de Cana")
Brand.create!(name: "George Ocean")
Brand.create!(name: "Doorly's")
Brand.create!(name: "La Cana")
Brand.create!(name: "Appleton")
Brand.create!(name: "Pyrat")
Brand.create!(name: "Pusser's")
Brand.create!(name: "Don Q")
Brand.create!(name: "Admiral Nelson")
Brand.create!(name: "Pampero")
Brand.create!(name: "El Dorado")
Brand.create!(name: "Kingston")
Brand.create!(name: "Barbancourt")
Brand.create!(name: "Plantation")
Brand.create!(name: "Brugal")

# Gin Brands
Brand.create!(name: "Tanqueray")
Brand.create!(name: "Bombay")
Brand.create!(name: "Beefeater")
Brand.create!(name: "Gordon's")
Brand.create!(name: "Hendricks")
Brand.create!(name: "Seagram's")
Brand.create!(name: "G&J Greenall's")
Brand.create!(name: "New Amsterdam")
Brand.create!(name: "Gilbey's")
Brand.create!(name: "Burnett's")
Brand.create!(name: "American Pride")
Brand.create!(name: "Esme")
Brand.create!(name: "Plymouth")
Brand.create!(name: "Citadelle")
Brand.create!(name: "Tann's")
Brand.create!(name: "Boodles")
Brand.create!(name: "The Botanist")
Brand.create!(name: "Fleischmann's")
Brand.create!(name: "Dover Strait")
Brand.create!(name: "Nolet")
Brand.create!(name: "Hadley & Sons")
Brand.create!(name: "Bloom")
Brand.create!(name: "Greenhouse")
Brand.create!(name: "Bay Street")
Brand.create!(name: "St. George")
Brand.create!(name: "Linton Hill")
Brand.create!(name: "BlueCoat")
Brand.create!(name: "Swordsman")
Brand.create!(name: "Bankers Club")
Brand.create!(name: "Only")
Brand.create!(name: "Caorunn")
Brand.create!(name: "Hofland")
Brand.create!(name: "Counter")
Brand.create!(name: "Death's Door")
Brand.create!(name: "Junipero")
Brand.create!(name: "Regent")
Brand.create!(name: "Miller's")
Brand.create!(name: "Fifty Pounds")
Brand.create!(name: "Farmer's")
Brand.create!(name: "St. Augustine")
Brand.create!(name: "Karkov")
Brand.create!(name: "G Vine")
Brand.create!(name: "Bulldog")
Brand.create!(name: "Tucker's")
Brand.create!(name: "Old Raj")
Brand.create!(name: "Dillon's")
Brand.create!(name: "Hofland")

# Cognac & Brandy Brands
Brand.create!(name: "Hennessy VS")
Brand.create!(name: "Remy Martin")
Brand.create!(name: "E & J")
Brand.create!(name: "Camus")
Brand.create!(name: "Meukow")
Brand.create!(name: "Christian Bros")
Brand.create!(name: "Courvoisier")
Brand.create!(name: "Martell")
Brand.create!(name: "ABK6")
Brand.create!(name: "Claude Chatelier")
Brand.create!(name: "Chabanneau")
Brand.create!(name: "A de Fussigny")
Brand.create!(name: "Paul Masson")
Brand.create!(name: "American Pride")
Brand.create!(name: "Decourtet")
Brand.create!(name: "Pisco Porton")
Brand.create!(name: "Montmartre")
Brand.create!(name: "Salignac")
Brand.create!(name: "St Remy")
Brand.create!(name: "Metaxa")
Brand.create!(name: "Capel Pisco")
Brand.create!(name: "Asbach")
Brand.create!(name: "Raynal")
Brand.create!(name: "Berneroy")
Brand.create!(name: "Boncourt")
Brand.create!(name: "Pierre Ferrand")
Brand.create!(name: "Cardenal Mendoza")
Brand.create!(name: "Antioqueno Aguardiente")
Brand.create!(name: "Hiram Walker")
Brand.create!(name: "Knight Gabriello")
Brand.create!(name: "Pedro Domecq")
Brand.create!(name: "Fidelitas")
Brand.create!(name: "Leyrat")
Brand.create!(name: "Kelt")
Brand.create!(name: "Ansac")
Brand.create!(name: "Hartley")
Brand.create!(name: "Chabot")
Brand.create!(name: "Torres")



# Tequila Brands
Brand.create!(name: "")
Brand.create!(name: "")
Brand.create!(name: "")
Brand.create!(name: "")
Brand.create!(name: "")
Brand.create!(name: "")
Brand.create!(name: "")
Brand.create!(name: "")
Brand.create!(name: "")
Brand.create!(name: "")

# Liqueurs Brands
Brand.create!(name: "")

# Wine Brands
Brand.create!(name: "")

# Sparkling Wine Brands
Brand.create!(name: "")

# Champagne Brands
Brand.create!(name: "")

# Beer Brands
Brand.create!(name: "")

# Non-Alcoholic Brands
Brand.create!(name: "")
