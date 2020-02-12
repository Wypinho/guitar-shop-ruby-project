require('sinatra')
require('sinatra/contrib/all')
require_relative('../models/guitar')
require_relative('../models/manufacturer')
also_reload('./models/*')

get '/guitars/new' do
  @manufacturers = Manufacturer.all()
  @guitar_types = Guitar.find_available_types()
  erb(:"guitars/new")
end

post '/guitars' do
  guitar = Guitar.new(params)
  guitar.save()
  redirect to '/'
end

get '/guitars/:id/edit' do
  @guitar = Guitar.find(params['id'].to_i)
  @manufacturers = Manufacturer.all()
  @guitar_types = Guitar.find_available_types()
  erb(:"guitars/edit")
end

post '/guitars/:id' do
  guitar = Guitar.new(params).update
  redirect to "/"
end

get '/guitars/:id/sell' do
  guitar = Guitar.find(params['id'].to_i)
  guitar.sell_guitar()
  shop = Shop.find()
  shop.update_till(guitar)
  redirect to '/'
end

get '/guitars/:id/order' do
  shop = Shop.find()
  guitar = Guitar.find(params['id'].to_i)
  if shop.till >= guitar.buying_cost
    guitar.order_guitar()
    shop.update_till(guitar, true)
  end
  redirect to '/'
end
