:- consult('./BNF.pl').
callcenterlog:-
    repeat,
    leer_input(Saludo),inicio_de_conversacion(Saludo),callcenterlog_aux,!.

callcenterlog_aux:-
    repeat,
    leer_input(conversacion),mitad_de_conversacion(conversacion).
callcenterlog_aux2:-
    repeat,
    leer_input(despedida),mitad_de_conversacion(despedida).

