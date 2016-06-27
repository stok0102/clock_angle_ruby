require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/clock_angle')
require('pry')

get('/form') do
  erb(:form)
end

get('/clock') do
  @clock = params.fetch('clock').split(":")
  erb(:clock)
end
