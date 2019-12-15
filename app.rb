require('sinatra')
require('sinatra/contrib/all')
require_relative('controllers/guitar_controller')
require_relative('./models/manufacturer')
also_reload('./models/*')

get '/' do
  erb(:index)
end
