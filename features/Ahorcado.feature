Feature: Ahorcado

Scenario: Pagina inicial
When inicio la aplicacion
Then veo la palabra "Ahorcado"

Scenario: Ingresa letra incorrecta
Given inicio la aplicacion
When ingresa la letra "e" and clickea "verificar"
Then los intentos quedan en "2"

Scenario: Ingresa letra correcta
Given inicio la aplicacion
When ingresa la letra "x" and clickea "verificar"
Then se muestra en pantalla la letra "x"

Scenario: Ingresa letra correcta
Given inicio la aplicacion
When ingresa la letra "o" and clickea "verificar"
Then se muestra en pantalla la letra "o"

Scenario: Ingresa letra correcta
Given inicio la aplicacion
When ingresa la letra "r" and clickea "verificar"
Then se muestra en pantalla la letra "r"

Scenario: Ingresa 3 letras incorrectas
Given inicio la aplicacion
When ingresa la letra "e" and clickea "verificar"
When ingresa la letra "t" and clickea "verificar"
When ingresa la letra "a" and clickea "verificar"
Then veo la palabra en pantalla "GAME OVER"

Scenario: Ingresa 3 letras correctas
Given inicio la aplicacion
When ingresa la letra "x" and clickea "verificar"
When ingresa la letra "o" and clickea "verificar"
When ingresa la letra "r" and clickea "verificar"
Then veo la palabra en pantalla "WIN"
