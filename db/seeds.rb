require_relative('../models/guitar.rb')
require_relative('../models/manufacturer.rb')
require_relative('../models/shop.rb')
require('pry')

Guitar.delete_all()
Shop.delete_all()
Manufacturer.delete_all()

manufacturer1 = Manufacturer.new({
  'name' => "Martin"
  })
manufacturer1.save()
manufacturer2 = Manufacturer.new({
  'name' => "Gibson"
  })
manufacturer2.save()
manufacturer3 = Manufacturer.new({
  'name' => "Fender"
  })
manufacturer3.save()
manufacturer4 = Manufacturer.new({
  'name' => "Taylor"
  })
manufacturer4.save()
manufacturer5 = Manufacturer.new({
  'name' => "BC Rich"
  })
manufacturer5.save()

shop1 = Shop.new({
  'till' => 500
  })
shop1.save()

guitar1 = Guitar.new({
  'name' => "LX1E",
  'type' => "Acoustic",
  'description' => "Little Martin travel electro acoustic",
  'stock_quantity' => 5,
  'buying_cost' => 300,
  'selling_price' => 475,
  'manufacturer_id' => manufacturer1.id,
  'shop_id' => shop1.id
  })
guitar1.save()
guitar2 = Guitar.new({
  'name' => "Les Paul",
  'type' => "Electric",
  'description' => "Tribute - Satin Iced Tea",
  'stock_quantity' => 7,
  'buying_cost' => 600,
  'selling_price' => 849,
  'manufacturer_id' => manufacturer2.id,
  'shop_id' => shop1.id
  })
guitar2.save()
guitar3 = Guitar.new({
  'name' => "Stratocaster",
  'type' => "Electric",
  'description' => "PRS Silver Sky John Mayer, Tungsten",
  'stock_quantity' => 4,
  'buying_cost' => 1900,
  'selling_price' => 2395,
  'manufacturer_id' => manufacturer3.id,
  'shop_id' => shop1.id
  })
guitar3.save()
guitar4 = Guitar.new({
  'name' => "Telecaster",
  'type' => "Electric",
  'description' => "Deluxe Nashville PF, Daphne Blue",
  'stock_quantity' => 5,
  'buying_cost' => 500,
  'selling_price' => 689,
  'manufacturer_id' => manufacturer3.id,
  'shop_id' => shop1.id
  })
guitar4.save()
guitar5 = Guitar.new({
  'name' => "SG",
  'type' => "Electric",
  'description' => "Sexy neck, curved body",
  'stock_quantity' => 3,
  'buying_cost' => 1200,
  'selling_price' => 1500,
  'manufacturer_id' => manufacturer2.id,
  'shop_id' => shop1.id
  })
guitar5.save()
guitar6 = Guitar.new({
  'name' => "Semi-acoustic",
  'type' => "Acoustic",
  'description' => "Good quality pick up, bowed back",
  'stock_quantity' => 3,
  'buying_cost' => 500,
  'selling_price' => 650,
  'manufacturer_id' => manufacturer4.id,
  'shop_id' => shop1.id
  })
guitar6.save()
guitar7 = Guitar.new({
  'name' => "Warlock",
  'type' => "Electric",
  'description' => "Sturdy frame, generally badass",
  'stock_quantity' => 8,
  'buying_cost' => 500,
  'selling_price' => 900,
  'manufacturer_id' => manufacturer5.id,
  'shop_id' => shop1.id
  })
guitar7.save()
guitar7 = Guitar.new({
  'name' => "Seagull",
  'type' => "Electric",
  'description' => "Odd shape, great sound",
  'stock_quantity' => 11,
  'buying_cost' => 450,
  'selling_price' => 750,
  'manufacturer_id' => manufacturer5.id,
  'shop_id' => shop1.id
  })
guitar7.save()

binding.pry
nil
