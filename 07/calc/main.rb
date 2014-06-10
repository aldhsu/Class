require 'pry'
require 'sinatra'
require 'sinatra/reloader'

get '/calc' do
  erb :form
end

get '/calc/multiply/:x/:y' do
  @operation = '*'
  @result = params[:x].to_f*params[:x].to_f
  erb :calc
end

get '/calc/add/:x/:y' do
  @operation = '+'
  @result = params[:x].to_f+params[:y].to_f
  erb :calc
end

get '/results' do
  @first = params[:first].to_f
  @second = params[:second].to_f

  @result = case params[:operator]
  when '+' then @first + @second
  when '-' then @first - @second
  when '*' then @first * @second
  when '/' then @first / @second
  end
  erb :calc
end

