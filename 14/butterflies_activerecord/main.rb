require 'sinatra'
require 'pry'
require 'sinatra/reloader'
require 'sqlite3'

def query_db(sql)
  db = SQLite3::Database.new('butterflies.db')
  db.results_as_hash = true
  result = db.execute(sql)
  db.close
  result
end

get '/' do
  redirect to '/butterflies'
end
#all butterflies
get '/butterflies' do
  @butterflies = query_db("SELECT * FROM butterflies")
  erb :butterflies
end
#new butterfly
get '/butterflies/new' do
  erb :create
end
#post new
post '/butterflies' do
  name = params["name"]
  image = params["image"]
  family= params["family"]
  sql = "INSERT INTO butterflies (name, image, family) values ('#{name}', '#{image}', '#{family}')"
  query_db(sql)
  redirect to '/butterflies'
end
#family filter
get '/butterflies/family' do
  family = params["family"]
  sql = "SELECT * FROM butterflies WHERE family = '#{family}'"
  @butterflies = query_db(sql)
  binding.pry
  erb :butterflies

end#a specific butterfly
get '/butterflies/:id' do
  id = params["id"]
  @info = query_db("SELECT * FROM butterflies WHERE id = #{ id }").first
  erb :butterfly
end
#edit a butterfly
get '/butterflies/:id/edit' do
  id = params["id"]
  @info = query_db("SELECT * FROM butterflies WHERE id = #{ id }").first
  erb :edit
end
#post edit
post '/butterflies/:id' do
  id = params['id']
  redirect to "/butterflies/#{id}"
end
#delete butterfly
get '/butterflies/:id/delete' do
  id = params["id"].to_i
  sql = "DELETE FROM butterflies WHERE id = #{id}"
  query_db(sql)
  redirect to '/butterflies'
end

