Feature: Ahorcado

Scenario: Pagina inicial
When inicio la aplicacion
Then veo la palabra "Ahorcado"

Scenario: Ingresa letra incorrecta
Given inicio la aplicacion
When ingresa la letra "e" and clickea "verificar"
Then los intentos quedan en "2"
