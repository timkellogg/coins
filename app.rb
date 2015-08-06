require('sinatra')
require('sinatra/reloader')
require('./lib/coin_combination')

get('/') do
  erb(:index)
end

get('/coin_combination') do
  @coin_combo = format_change(coin_combination(params['user_change']))
  erb(:coin_combination)
end
