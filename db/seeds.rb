# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


supplier1 = Supplier.create(name: "Alpha")
supplier2 = Supplier.create(name: "Beta")
supplier3 = Supplier.create(name: "Gamma")
supplier4 = Supplier.create(name: "Delta")


apple = Produce.create(name: "Apple", description: "The apple is a hardy, deciduous woody perennial tree that grows in all temperate zones. Apples grow best where there is cold in winter, moderate summer temperatures, and medium to high humidity.")
brocolli = Produce.create(name: "Brocolli", description: "Broccoli has had a resurgence in popularity – for its high vitamin content and anti-cancer agents. It is a fast-growing and easy-to-grow crop, producing bluish-green heads that are harvested in the summer or autumn, depending on the time it is sown.")
cabbage = Produce.create(name: "Cabbage", description: "Cabbage is a hardy, leafy vegetable full of vitamins. It can be difficult to grow; it only likes cool temperatures and it can be a magnet for some types of garden pests.")
dill = Produce.create(name: "Dill", description: "Dill is a large annual or biennial herb with ferny foliage that is topped with sprays of yellow flower in summer." )
elderberry = Produce.create(name: "Elderberry", description: "Elderberry (Sambucus) is a large bush or shrub that is native to the U.S. and Europe. The bush produces bluish-black fruit in bunches of little berries that are used in wines, juices, jellies and jams.")



a1win = SupplierProduce.create(supplier_id: 1, produce_id: 1, season: "Winter")

b1sum = SupplierProduce.create(supplier_id: 1, produce_id: 2, season: "Summer")
b1aut = SupplierProduce.create(supplier_id: 1, produce_id: 2, season: "Autumn")

c2aut = SupplierProduce.create(supplier_id: 2, produce_id: 3, season: "Autumn")
d2sum = SupplierProduce.create(supplier_id: 2, produce_id: 4, season: "Summer")

d3spr = SupplierProduce.create(supplier_id: 3, produce_id: 4, season: "Spring")
e3spr = SupplierProduce.create(supplier_id: 3, produce_id: 5, season: "Spring")

a4win = SupplierProduce.create(supplier_id: 4, produce_id: 1, season: "Winter")
b4aut = SupplierProduce.create(supplier_id: 4, produce_id: 2, season: "Autumn")
d4spr = SupplierProduce.create(supplier_id: 4, produce_id: 4, season: "Spring")








