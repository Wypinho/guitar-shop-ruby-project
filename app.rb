require('sinatra')
require('sinatra/contrib/all')
# require_relative('controllers/...')
require_relative('./models/guitar')
require_relative('./models/manufacturer')
also_reload('./models/*')

get '/' do
  erb(:index)
end

get '/guitars' do
  @guitars = Guitar.all()
  erb(:"guitars/index")
end
