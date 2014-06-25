require 'sinatra'
require 'pry'
require 'sinatra/reloader'
require 'active_record'
require_relative 'butterfly'
require_relative 'plant'

#database setup
ActiveRecord::Base.logger = Logger.new(File.open('database.log', 'w'))

ActiveRecord::Base.establish_connection(
  :adapter => 'sqlite3',
  :database => 'butterflies.db'
)
# routing begin
after do
  ActiveRecord::Base.connection.close
end

get '/' do
  redirect to '/butterflies'
end
get '/butterflies/new' do
  erb :create
end

#all butterflies
get '/butterflies' do
  @butterflies = Butterfly.all
  erb :butterflies
end
#new butterfly

#post new
post '/butterflies' do
  Butterfly.create(:name => params["name"], image => params["image"], family => params["family"])
  redirect to '/butterflies'
end
#family filter
get '/butterflies/family' do
  @butterflies = Butterfly.select(params['family']).uniq
  erb :butterflies

end#a specific butterfly

get '/butterflies/:id' do
  @info = Butterfly.find(params["id"])
  binding.pry
  erb :butterfly
end
#edit a butterfly
get '/butterflies/:id/edit' do
  @info = Butterfly.find(params["id"])
  erb :edit
end
#post edit
post '/butterflies/:id' do
  binding.pry
  id = params['id']
  plant_id = params["plant_id"]
  name = params["name"]
  image = params["image"]

  butterfly = Butterfly.find(id)
  butterfly.attributes = {
    plant_id: plant_id,
    name: name,
    image: image
  }
  butterfly.save
  redirect to "/butterflies/#{id}"
end
#delete butterfly
get '/butterflies/:id/delete' do
  butterfly = Butterfly.find(params["id"])
  butterfly.destroy
  redirect to '/butterflies'
end

#new Plant
get '/plants/new' do
  erb :create_plant
end

#routing for plant
get '/plants' do
  @plants = Plant.all
  erb :plants
end

#post new
post '/plants' do
  Plant.create(name: params["name"], image: params["image"])
  redirect to '/plants'
end
#family filter
get '/plants/family' do
  @plants = Plant.select(params['family']).uniq
  erb :plants

end#a specific Plant

get '/plants/:id' do
  @info = Plant.find(params["id"])
  erb :plant
end
#edit a Plant
get '/plants/:id/edit' do
  @info = Plant.find(params["id"])
  erb :edit_plant
end
#post edit
post '/plants/:id' do
  id = params["id"]
  plant = Plant.find(id)
  plant.attributes = {name: params["name"], image: params["image"]}
  plant.save
  redirect to "/plants/#{id}"
end
#delete Plant
get '/plants/:id/delete' do
  Plant = Plant.find(params["id"])
  Plant.destroy
  redirect to '/plants'
end

