require('sinatra')
require('sinatra/contrib/all')
# require_relative('controllers/...')
also_reload('./models/*')

get '/' do
  erb(:index)
end
