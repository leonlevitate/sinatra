require 'sinatra'

get '/' do
  "Hello World!!"
end

get '/random-cat' do
  @name = ["Amigo", "Oscar", "Viking"].sample
  erb :index
end

post '/named-cat' do
  p params
  @name = params[:name]
  erb :index
end

get '/form-cat' do
  erb :catindex
end
