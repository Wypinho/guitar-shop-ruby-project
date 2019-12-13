require_relative('../models/guitar.rb')
require_relative('../models/manufacturer.rb')
require('pry')

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

binding.pry
nil
