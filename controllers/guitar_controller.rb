require('sinatra')
require('sinatra/contrib/all')
require_relative('../models/guitar')
require_relative('../models/manufacturer')
also_reload('./models/*')

get '/guitars' do
  @guitars = Guitar.all()
  erb(:"guitars/index")
end

get '/guitars/:id' do
  @guitar = Guitar.find(params['id'].to_i)
  erb(:"guitars/show")
end

get '/guitars/:id/edit' do
  @guitar = Guitar.find(params['id'].to_i)
  @manufacturers = Manufacturer.all()
  erb(:"guitars/edit")
end

post '/guitars/:id' do
  Guitar.new(params).update
  redirect to '/guitars'
end
