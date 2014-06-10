require 'pry'
require 'sinatra'
require 'sinatra/reloader'
require 'yahoofinance'

get '/request' do
  @symbol = params[:symbol].upcase
  if @symbol != nil
    @price = YahooFinance::get_quotes(YahooFinance::StandardQuote, @symbol)[@symbol].lastTrade
  end
  erb :form
end
