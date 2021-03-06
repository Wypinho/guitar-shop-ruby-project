require('sinatra')
require('sinatra/contrib/all') if development?
require_relative('controllers/guitars_controller')
require_relative('controllers/manufacturers_controller')
require_relative('./models/shop.rb')

get '/' do
  if params['manufacturer_id']
    @guitars = Guitar.find_by_manufacturer(params['manufacturer_id'].to_i)
  elsif params['type']
    @guitars = Guitar.find_by_type(params['type'])
  else
    @guitars = Guitar.all()
  end
  @guitar_types = Guitar.find_available_types()
  @manufacturers = Manufacturer.all()
  @shop = Shop.find()
  erb(:index)
end
