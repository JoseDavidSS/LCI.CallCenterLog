:- consult('./SE.pl').
:- consult('./BNF.pl').
callcenterlog:-
    repeat,
    leer_input(Saludo),inicio_de_conversacion(Saludo), !, callcenterlog_aux.
callcenterlog_aux:-
    repeat,
    leer_input(Conversacion),mitad_de_conversacion(Conversacion),!, callcenterlog_aux2.
callcenterlog_aux2:-
    repeat,
    leer_input(Otra),semi_final_de_conversacion(Otra),!, callcenterlog_aux3.
callcenterlog_aux3:-
    repeat,
    leer_input(Adios), final_de_conversacion(Adios), !.