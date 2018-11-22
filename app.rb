require 'sinatra'
require_relative 'randompairs.rb'

get '/' do
	erb :input
end

post '/input' do
	names = params[:names]
	redirect '/pairs?names=' + names
end

get '/pairs' do
	nameArray = params[:nameArray].join(',')
	pairs = random_pair(:names)
	erb :pairs, locals: {nameArray: nameArray, pairs: pairs}
end

post '/pairs' do
	names = params[:names]
	pairs = random_pair(names)
end