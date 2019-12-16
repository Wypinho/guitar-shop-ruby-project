require('sinatra')
require('sinatra/contrib/all')
require_relative('controllers/guitar_controller')
require_relative('controllers/manufacturer_controller')
also_reload('./models/*')

get '/?' do
  @guitars = Guitar.all()
  @manufacturers = Manufacturer.all()
  erb(:index)
end

get '/?:manufacturer_id' do
  @guitars = Guitar.find_by_manufacturer(params['manufacturer_id'].to_i)
  @manufacturers = Manufacturer.all()
  erb(:index)
end
