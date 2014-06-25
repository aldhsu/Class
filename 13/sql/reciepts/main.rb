require 'pry'
require 'sinatra'
require 'sinatra/reloader'
require 'sqlite3'

get '/receipts' do
  @receipts = query_db("SELECT * FROM receipts")
  erb :receipts
end

get '/new' do
  erb :form
end

post '/new' do
  @service = params["service"]
  @cost = params["cost"]
  query_db("INSERT INTO receipts (service, cost) VALUES ('#{@service}', '#{@cost}')")
  redirect '/receipts'
end

get '/receipt/:id' do
  id = params[:id]
  sql = "SELECT * FROM receipts WHERE id = #{ id }"
  @receipt = query_db(sql).first
  erb :receipt
end

get '/receipt/:id/edit' do
  @id = params[:id]
  sql = "SELECT * FROM receipts WHERE id = #{ @id }"
  binding.pry
  @receipt = query_db(sql).first
  erb :edit
end

post '/edited/:id' do
  id = params[:id]
  service = params["service"]
  cost = params["cost"]
  sql = "UPDATE receipts SET service = '#{ service }', cost = #{ cost } WHERE id = #{ id }"
  query_db(sql)
  redirect "/receipt/#{id}"
end

#should be delete '/recept/:id'
post '/receipt/:id/delete' do
  id = params[:id]
  sql = "DELETE FROM receipts WHERE id = #{ id } "
  query_db(sql)
  redirect "/receipts"
end

get '/stats' do
  @max = query_db("SELECT max(cost) FROM receipts").last[0]
  @min = query_db("SELECT min(cost) FROM receipts").last[0]
  @average = query_db("SELECT avg(cost) FROM receipts").last[0]
  @count = query_db("SELECT count(cost) FROM receipts").last[0]

  erb :stats
end

def query_db(sql)
  db = SQLite3::Database.new "receipts.db"
  db.results_as_hash = true
  result = db.execute(sql)
  db.close
  result
end