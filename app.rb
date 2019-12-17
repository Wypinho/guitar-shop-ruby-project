require('sinatra')
require('sinatra/contrib/all')
require_relative('controllers/guitars_controller')
require_relative('controllers/manufacturers_controller')
also_reload('./models/*')

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
  erb(:index)
end

# get '/:manufacturer_id' do
#   @guitars = Guitar.find_by_manufacturer(params['manufacturer_id'].to_i)
#   @manufacturers = Manufacturer.all()
#   erb(:index)
# end
