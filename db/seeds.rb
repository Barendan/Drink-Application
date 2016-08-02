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
	license_pic: '',
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
	license_pic: Rails.root.join("app/assets/images/morganid.jpg").open,
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
	license_pic: Rails.root.join("app/assets/images/elonid.jpg").open,
	address: '120 SW 8th St, Miami, FL 33130',
	phone: '305-718-1446',
	birthday: DateTime.new(1971, 06, 28),
	vip: true,
	verified: true,
	)


# Products Seeds--------------------------------

Product.create!(name: "Tito's Handmade Vodka", price: 27.99, type_id: 1, brand_id: 1, size: "1.75l")
Product.create!(name: "Smirnoff Vodka", price: 16.99, size: "1.75l",type_id: 1, brand_id: 3)
Product.create!(name: "Ketel One Vodka", price: 32.99, size: "1.75l",type_id: 1, brand_id: 4)
Product.create!(name: "Absolut Vodka", price: 28.99, size: "1.75l",type_id: 1, brand_id: 5)
Product.create!(name: "Grey Goose Vodka", price: 47.99, size: "1.75l",type_id: 1, brand_id: 6)
Product.create!(name: "Starr Blu Vodka", price: 15.99, size: "1.75l",type_id: 1, brand_id: 7)
Product.create!(name: "Svedka Vodka", price: 17.99, size: "1.75l",type_id: 1, brand_id: 8)
Product.create!(name: "Skyy Vodka", price: 19.99, size: "1.75l",type_id: 1, brand_id: 10)
Product.create!(name: "Grey Goose Vodka", price: 24.99, size: "750ml",type_id: 1, brand_id: 6)
Product.create!(name: "Veil Vodka", price: 19.99, size: "1.75l",type_id: 1, brand_id: 11)
Product.create!(name: "Stolichnaya Vodka", price: 25.99, size: "1.75l",type_id: 1, brand_id: 12)
Product.create!(name: "Ciroc Vodka Apple", price: 25.49, size: "750ml",type_id: 1, brand_id: 17)
Product.create!(name: "American Pride Vodka", price: 11.99, size: "1.75l",type_id: 1, brand_id: 13)
Product.create!(name: "Luksusowa Vodka", price: 21.99, size: "1.75l",type_id: 1, brand_id: 14)
Product.create!(name: "Pinnacle Vodka", price: 15.99, size: "1.75l",type_id: 1, brand_id: 15)
Product.create!(name: "Belvedere Vodka", price: 45.99, size: "1.75l",type_id: 1, brand_id: 16)
Product.create!(name: "Platinum Vodka 7X Traveler", price: 14.99, size: "1.75l",type_id: 1, brand_id: 21)


# Product.create!(name: "Johnnie Walker Black", price: 51.99, size: "1.75l",type_id: 2, brand_id: )
# Product.create!(name: "Dewar's White Label", price: 28.99, size: "1.75l",type_id: 2, brand_id: )
# Product.create!(name: "Macallan 12 Yr", price: 50.99, size: "750ml",type_id: 2, brand_id: )
# Product.create!(name: "Johnnie Walker Red", price: 28.99, size: "1.75l",type_id: 2, brand_id: )
# Product.create!(name: "Glenlivet 12 Yr", price: 66.99, size: "1.75l",type_id: 2, brand_id: )
# Product.create!(name: "Johnnie Walker Blue", price: 185.99, size: "750ml",type_id: 2, brand_id: )
# Product.create!(name: "Glenlivet 12 Yr", price: 31.99, size: "750ml",type_id: 2, brand_id: )
# Product.create!(name: "Chivas Regal", price: 46.99, size: "1.75l",type_id: 2, brand_id: )
# Product.create!(name: "Balvenie 12 Yr Double Wood", price: 51.99, size: "750ml",type_id: 2, brand_id: )
# Product.create!(name: "Shieldaig Speyside Single Malt 18Yr", price: 44.99, size: "750ml",type_id: 2, brand_id: )
# Product.create!(name: "Johnnie Walker Black", price: 29.49, size: "750ml",type_id: 2, brand_id: )
# Product.create!(name: "Famous Grouse", price: 24.99, size: "1.75l",type_id: 2, brand_id: )
# Product.create!(name: "Lagavulin 16 Yr", price: 99.99, size: "750ml",type_id: 2, brand_id: )
# Product.create!(name: "Clan MacGregor", price: 15.99, size: "1.75l",type_id: 2, brand_id: )

# Product.create!(name: "Maker's Mark", price: 46.99, size: "1.75l",type_id: 4, brand_id: )
# Product.create!(name: "Jim Beam", price: 22.99, size: "1.75l",type_id: 4, brand_id: )
# Product.create!(name: "Evan Williams", price: 17.99, size: "1.75l",type_id: 4, brand_id: )
# Product.create!(name: "Angel's Envy", price: 46.99, size: "750ml",type_id: 4, brand_id: )
# Product.create!(name: "Maker's Mark", price: 22.99, size: "750ml",type_id: 4, brand_id: )
# Product.create!(name: "Bulleit Bourbon", price: 24.99, size: "750ml",type_id: 4, brand_id: )
# Product.create!(name: "Woodford Reserve", price: 26.99, size: "750ml",type_id: 4, brand_id: )
# Product.create!(name: "Basil Hayden 8 Yr", price: 45.99, size: "750ml",type_id: 4, brand_id: )
# Product.create!(name: "Woodford Reserve", price: 64.99, size: "1.75l",type_id: 4, brand_id: )
# Product.create!(name: "Southern Comfort", price: 18.99, size: "1.75l",type_id: 4, brand_id: )
# Product.create!(name: "Early Times", price: 15.99, size: "1.75l",type_id: 4, brand_id: )
# Product.create!(name: "Maker's 46", price: 33.99, size: "750ml",type_id: 4, brand_id: )
# Product.create!(name: "Knob Creek 100", price: 64.99, size: "1.75l",type_id: 4, brand_id: )
# Product.create!(name: "Two Stars Bourbon", price: 42.99, size: "1.75l",type_id: 4, brand_id: )
# Product.create!(name: "Wild Turkey 101", price: 34.99, size: "1.75l",type_id: 4, brand_id: )
# Product.create!(name: "Buffalo Trace Bourbon", price: 22.99, size: "750ml",type_id: 4, brand_id: )
# Product.create!(name: "Four Roses Single Barrel", price: 39.99, size: "750ml",type_id: 4, brand_id: )
# Product.create!(name: "1792 Bourbon", price: 28.99, size: "750ml",type_id: 4, brand_id: )

# Product.create!(name: "Captain Morgan's Spiced Rum", price: 18.99, size: "1.75l",type_id: 5, brand_id: )
# Product.create!(name: "Bacardi Superior", price: 18.99, size: "1.75l",type_id: 5, brand_id: )
# Product.create!(name: "Malibu Coconut Rum", price: 19.99, size: "1.75l",type_id: 5, brand_id: )
# Product.create!(name: "Bacardi Gold", price: 18.99, size: "1.75l",type_id: 5, brand_id: )
# Product.create!(name: "Ron Zacapa 23Yr Centenario Rum", price: 35.99, size: "750ml",type_id: 5, brand_id: )
# Product.create!(name: "Sailor Jerry Spiced Rum", price: 20.99, size: "1.75l",type_id: 5, brand_id: )
# Product.create!(name: "Mount Gay Eclipse", price: 31.99, size: "1.75l",type_id: 5, brand_id: )
# Product.create!(name: "Bacardi Limon", price: 19.99, size: "1.75l",type_id: 5, brand_id: )
# Product.create!(name: "Malibu Coconut Rum", price: 12.29, size: "750ml",type_id: 5, brand_id: )
# Product.create!(name: "Kaniche XO Artisanal Rum", price: 29.99, size: "1.75l",type_id: 5, brand_id: )
# Product.create!(name: "Bacardi Superior", price: 10.49, size: "750ml",type_id: 5, brand_id: )
# Product.create!(name: "Bacardi Superior", price: 15.99, size: "1l",type_id: 5, brand_id: )
# Product.create!(name: "Largo Bay Silver Rum", price: 17.99, size: "1.75l",type_id: 5, brand_id: )
# Product.create!(name: "Captain Morgan's Spiced Rum", price: 11.99, size: "750ml",type_id: 5, brand_id: )
# Product.create!(name: "Myers's Dark", price: 41.99, size: "1.75l",type_id: 5, brand_id: )
# Product.create!(name: "Kraken Black Spiced Rum", price: 27.99, size: "1.75l",type_id: 5, brand_id: )
# Product.create!(name: "Bacardi Black", price: 19.99, size: "1.75l",type_id: 5, brand_id: )
# Product.create!(name: "Cruzan Rum Dark", price: 15.99, size: "1.75l",type_id: 5, brand_id: )
# Product.create!(name: "Zaya 12 Yr Rum", price: 29.99, size: "750ml",type_id: 5, brand_id: )
# Product.create!(name: "Gosling's Black Seal Rum", price: 34.49, size: "1.75l",type_id: 5, brand_id: )
# Product.create!(name: "Ronrico Silver", price: 13.49, size: "1.75l",type_id: 5, brand_id: )


# Product.create!(name: "Tanqueray Gin", price: 29.99, size: "1.75l",type_id: 6, brand_id: )
# Product.create!(name: "Bombay Sapphire", price: 31.99, size: "1.75l",type_id: 6, brand_id: )
# Product.create!(name: "Beefeater", price: 23.99, size: "1.75l",type_id: 6, brand_id: )
# Product.create!(name: "Gordon's Gin", price: 12.99, size: "1.75l",type_id: 6, brand_id: )
# Product.create!(name: "Hendricks Gin", price: 54.99, size: "1.75l",type_id: 6, brand_id: )
# Product.create!(name: "Hendricks Gin", price: 29.99, size: "750ml",type_id: 6, brand_id: )
# Product.create!(name: "Bombay", price: 23.99, size: "1.75l",type_id: 6, brand_id: )
# Product.create!(name: "Seagram's Gin", price: 17.99, size: "1.75l",type_id: 6, brand_id: )
# Product.create!(name: "Tanqueray", price: 18.99, size: "750ml",type_id: 6, brand_id: )
# Product.create!(name: "G&J Greenall's Gin", price: 22.99, size: "1.75l",type_id: 6, brand_id: )
# Product.create!(name: "New Amsterdam Straight Gin", price: 19.99, size: "1.75l",type_id: 6, brand_id: )
# Product.create!(name: "Bombay Sapphire", price: 20.99, size: "750ml",type_id: 6, brand_id: )
# Product.create!(name: "Gilbey's Gin", price: 12.99, size: "1.75l",type_id: 6, brand_id: )
# Product.create!(name: "Tanqueray Rangpur", price: 40.99, size: "1.75l",type_id: 6, brand_id: )
# Product.create!(name: "Burnett's Gin", price: 13.49, size: "1.75l",type_id: 6, brand_id: )
# Product.create!(name: "Tanqueray No. Ten Gin", price: 32.49, size: "750ml",type_id: 6, brand_id: )


# Product.create!(name: "Hennessy VS", price: 27.99, size: "750ml",type_id: 7, brand_id: )
# Product.create!(name: "Hennessy VS", price: 73.99, size: "1.75l",type_id: 7, brand_id: )
# Product.create!(name: "Remy Martin VSOP", price: 31.99, size: "750ml",type_id: 7, brand_id: )
# Product.create!(name: "Hennessy VS", price: 53.99, size: "1l",type_id: 7, brand_id: )
# Product.create!(name: "Remy Martin 1738", price: 47.99, size: "750ml",type_id: 7, brand_id: )
# Product.create!(name: "E & J Brandy", price: 23.49, size: "1.75l",type_id: 7, brand_id: )
# Product.create!(name: "Christian Bros Brandy", price: 21.49, size: "1.75l",type_id: 7, brand_id: )
# Product.create!(name: "Courvoisier VS", price: 22.99, size: "750ml",type_id: 7, brand_id: )
# Product.create!(name: "Remy Martin XO", price: 139.99, size: "750ml",type_id: 7, brand_id: )
# Product.create!(name: "Martell Cordon Bleu", price: 149.99, size: "750ml",type_id: 7, brand_id: )
# Product.create!(name: "E & J Brandy VSOP", price: 25.49, size: "1.75l",type_id: 7, brand_id: )
# Product.create!(name: "", price: , size: "1.75l",type_id: 7, brand_id: )



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



# # Tequila Brands
# Brand.create!(name: "")

# # Liqueurs Brands
# Brand.create!(name: "")

# # Wine Brands
# Brand.create!(name: "")

# # Sparkling Wine Brands
# Brand.create!(name: "")

# # Champagne Brands
# Brand.create!(name: "")

# # Beer Brands
# Brand.create!(name: "")

# # Non-Alcoholic Brands
# Brand.create!(name: "")
