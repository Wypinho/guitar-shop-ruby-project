require('sinatra')
require('sinatra/contrib/all')
# require_relative('controllers/...')


get '/' do
  erb( :index )
end
