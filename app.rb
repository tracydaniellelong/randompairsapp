require 'sinatra'
require_relative 'randompairs.rb'

get '/' do
	erb :input
end

post '/input' do
	names = params[:names].join
	redirect '/pairs?names=' + names
end

get '/pairs' do
	names = params[:names]
	erb :pairs, locals: {names: names}
end

post '/pairs' do
	names = params[:names]
end