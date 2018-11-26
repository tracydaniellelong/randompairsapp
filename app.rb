require 'sinatra'
require_relative 'randompairs.rb'

get '/' do
	erb :input
end

post '/input' do
	if params[:names].class != Array
        redirect '/'
    end
    names = params[:names].join(",")
    params[:names].each do |v|
        if v == "" || v == " "
            redirect '/'
        end
    end
	redirect '/pairs?names=' + names
end

get '/pairs' do
	names = params[:names].split(',')
	pairs = random_pair(names)
	erb :pairs, locals: {names: names, pairs: pairs}
end

post '/pairs' do
	names = params[:names]
	pairs = random_pair(names)
end