require 'sinatra'
require 'sinatra/reloader'
require 'pry'

get '/' do
  erb :form
end

post '/' do
  f = File.new('receipt.txt', 'a+')
  @service = params[:service]
  @cost = params[:cost]
  f.puts("Company Name: Idiot COusin Services")
  f.puts("Goods/Services provided: #{ @service }")
  f.puts("Cost: #{ @cost }")
  f.puts("Thank you for your patronage")
  f.puts("We are missing you already")
  f.puts("------------------------------------")
  f.close
  erb :form
end