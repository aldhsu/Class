require 'pry'
require 'sinatra'
require 'sinatra/reloader'

get '/' do
  "Hello world from Sinatra"
end

get '/hello' do
  "Hello as well"
end

get '/greet/:firstname' do
  "Hello there #{ params[:firstname].capitalize}"
end

## Calculator
get '/multiply/:x/:y' do
  result = params[:x].to_f * params[:y]
  "the result is #{ result }"
end