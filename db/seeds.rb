require_relative('../models/guitar.rb')
require_relative('../models/manufacturer.rb')
require('pry')

Guitar.delete_all()
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

guitar1 = Guitar.new({
  'name' => "LX1E",
  'description' => "Little Martin travel electro acoustic",
  'stock_quantity' => 5,
  'buying_cost' => 300,
  'selling_price' => 475,
  'manufacturer_id' => manufacturer1.id
  })
guitar1.save()
guitar2 = Guitar.new({
  'name' => "Les Paul",
  'description' => "Tribute - Satin Iced Tea",
  'stock_quantity' => 7,
  'buying_cost' => 600,
  'selling_price' => 849,
  'manufacturer_id' => manufacturer2.id
  })
guitar2.save()
guitar3 = Guitar.new({
  'name' => "Stratocaster",
  'description' => "PRS Silver Sky John Mayer, Tungsten",
  'stock_quantity' => 2,
  'buying_cost' => 1900,
  'selling_price' => 2395,
  'manufacturer_id' => manufacturer3.id
  })
guitar3.save()
guitar4 = Guitar.new({
  'name' => "Telecaster",
  'description' => "Deluxe Nashville PF, Daphne Blue",
  'stock_quantity' => 5,
  'buying_cost' => 500,
  'selling_price' => 689,
  'manufacturer_id' => manufacturer3.id
  })
guitar4.save()

binding.pry
nil
