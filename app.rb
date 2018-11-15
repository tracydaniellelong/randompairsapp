require 'sinatra'

get '/' do
	erb :input
end

post '/input' do
	name1 = params[:name1]
	redirect '/pairs?name1=' + name1
end

get '/pairs' do
	name1 = params[:name1]
	erb :pairs, locals: {name1: name1}
end