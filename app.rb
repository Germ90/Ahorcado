require 'sinatra'
$intentos=3

get '/' do
    erb :index
end

post '/validar' do
	$intentos=$intentos-1
	erb :index
end
