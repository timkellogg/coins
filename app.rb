require('sinatra')
require('sinatra/reloader')
require('./lib/coin_combination')

get('/') do
  erb(:index)
end

get('/coin_combination') do

  erb(:coin_combination)
end
