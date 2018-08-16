require 'sinatra'
#require './lib/Validaciones.rb'





get '/' do
	$intentos=3
$letras=3
$palabra = Array.new($letras)
$palabra[0]='x'
$palabra[1]='o'
$palabra[2]='r'

$palabraJugador = Array.new($letras)
$palabraJugador[0]='-'
$palabraJugador[1]='-'
$palabraJugador[2]='-'

$exito = ""
$estado_juego = "Jugando"
    erb :index
end

post '/validar' do

	if $estado_juego == "Jugando"
		@encontro = false
		for i in 0...$palabra.count
			
			if $palabra[i] ==params[:intento]
				@encontro = true
				$palabraJugador[i] = params[:intento]
			end
		end
		if @encontro 
			$exito = "x"
			
		else
			$exito = ""
			$intentos=$intentos-1
			if $intentos==0
				$estado_juego = "GAME OVER"
			end
		end
 @gane = true	
for i in 0...$palabra.count

	if $palabra[i] !=$palabraJugador[i]
 @gane = false
end 

end
if  @gane 	
$estado_juego = "WIN"
end
		
		
	end	
	erb :index
end
