require 'sinatra'
$intentos=3
$letras=3
$palabra = Array.new($letras)
$palabra[0]='x'
$palabra[1]='o'
$palabra[2]='r'
$exito = ""
$estado_juego = "Jugando"
get '/' do
    erb :index
end

post '/validar' do
	if $estado_juego == "Jugando"
		if ($palabra[0]==params[:intento] || $palabra[1]==params[:intento] || $palabra[2]==params[:intento])
			$exito = "x"
		else
			$exito = ""
			$intentos=$intentos-1
		end

		if $intentos==0
			$estado_juego = "GAME OVER"
		end
	end
	erb :index
end
