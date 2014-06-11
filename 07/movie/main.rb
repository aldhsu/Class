require 'pry'
require 'pry-debugger'
require 'sinatra'
require 'sinatra/reloader'
require 'httparty'
require 'JSON'
require 'sinatra/cookies'

enable :sessions
$array =[]
get '/request' do
  @title = params[:title]

  if @title != nil
    array = @title.split(" ")
    @title = array.join("+")
    url ="http://www.omdbapi.com/?t=#{@title}"
    response = HTTParty.get (url)
    @movie = JSON.parse( response )
    @poster = @movie["Poster"]
    $array << @poster
    binding.pry
  end
  erb :form
end

get '/requestc' do
  @title = params[:title]

  if @title != nil
    array = @title.split(" ")
    @title = array.join("+")
    url ="http://www.omdbapi.com/?t=#{@title}"
    response = HTTParty.get (url)
    @movie = JSON.parse( response )
    @poster = cookies[:poster]
    $array << @poster
    binding.pry
  end
  erb :form
end

