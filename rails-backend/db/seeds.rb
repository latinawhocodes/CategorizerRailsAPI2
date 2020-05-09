# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#Brands
pur = Brand.create(name: "Pur", price_range: "$$")
tarte = Brand.create(name: "Tarte", price_range: "$$")
thrive = Brand.create(name: "Thrive Causemetics", price_range: "$$")
##Brand.create(name: "", price_range: "")

#Categories
mascara = Category.create(name: "Mascara")
eyeshadow_palettes = Category.create(name: "Eyeshadow Palettes")
highlighter = Category.create(name: "Highlighter")
blush = Category.create(name: "Blush")
misc_palettes = Category.create(name: "Miscellaneous Palettes")
liquid_eyeliner = Category.create(name: "Liquid Eyeliner")
pencil_eyeliner = Category.create(name: "Eyeliner")
lipstick = Category.create(name: "Lipstick")
###Category.create(name: "")

#Products
thrive_mascara = Product.create(name: "Thrive Mascara", full_size: true, product_notes: "Good Mascara, easy to take off.", brand: tarte, category: mascara)
love_trust_fairydust_palette = Product.create(name: "Love Trust & Fairy Dust Palette", full_size: true, product_notes: "", brand: tarte, category: eyeshadow_palettes)
barbie_palette = Product.create(name: "Pur x Barbie Palette", full_size: true, product_notes: "", brand: pur , category: eyeshadow_palettes)
barbie_lipstick_timeless = Product.create(name: "Pur x Barbie Timeless Lipstick", full_size: true, product_notes: "", brand: pur, category: lipstick)
##Product.create(name: "", full_size: , product_notes: "", brand: , category: )