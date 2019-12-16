require('sinatra')
require('sinatra/contrib/all')
require_relative('controllers/guitar_controller')
require_relative('controllers/manufacturer_controller')
also_reload('./models/*')

get '/' do
  if params['manufacturer_id']
    @guitars = Guitar.find_by_manufacturer(params['manufacturer_id'].to_i)
  else
    @guitars = Guitar.all()
  end
  @manufacturers = Manufacturer.all()
  erb(:index)
end

# get '/:manufacturer_id' do
#   @guitars = Guitar.find_by_manufacturer(params['manufacturer_id'].to_i)
#   @manufacturers = Manufacturer.all()
#   erb(:index)
# end
