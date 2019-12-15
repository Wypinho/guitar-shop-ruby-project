require('sinatra')
require('sinatra/contrib/all')
require_relative('../models/guitar')
also_reload('./models/*')

get '/guitars' do
  @guitars = Guitar.all()
  erb(:"guitars/index")
end

get '/guitars/:id' do
  @guitar = Guitar.find(params['id'].to_i)
  erb(:"guitars/show")
end

get '/guitar/:id/edit' do
  guitar = Guitar.find(params['id'].to_i)
  guitar.update()
  erb(:"guitars/edit")
end
