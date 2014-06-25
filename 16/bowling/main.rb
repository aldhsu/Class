require 'pry'
require 'active_record'
require 'sinatra'
require 'sinatra/reloader'
#setup
ActiveRecord::Base.establish_connection(
  :adapter => 'sqlite3',
  :database => 'bowling.db'
)
require_relative 'models/game'
require_relative 'models/frame'

binding.pry

