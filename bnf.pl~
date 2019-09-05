:- consult('./SE.pl').

articulo(singular,masculino,[el]).
articulo(plural,masculino,[los]).
articulo(singular,femenino,[la]).
articulo(plural,femenino,[las]).
despedidas([muchas,gracias]).
despedidas([hasta,luego]).
despedidas([adios]).
despedidas([gracias]).
nombre(singular,masculino,[callcenterlog]).
nombre(singular,masculino,[gato]).
nombre(singular,femenino,[gata]).
nombre(plural,masculino,[gatos]).
nombre(plural,femenino,[gatas]).
nombre(singular,masculino,[pescado]).
nombre(singular,femenino,[mala]).
nombre(singular,femenino,[mierda]).

nombre(singular,femenino,[impresora]).
verbo(singular,[come]).
verbo(singular,[esta]).


verbo(singular,[comen]).
saludo([hola]).
saludo([buenas]).


sinonimo(mala,[mierda,jodido,mala]).
sinonimo(causas,[razones,causas,problemas,inconvenientes]).

sintagma_nominal(SN) :- nombre(Y,X,SN).
sintagma_nominal(SN) :- articulo(Y,X,A),nombre(Y,X,N),append(A,N,SN).
sintagma_verbal(SV) :-
    verbo(Y,V),
    nombre(Y,X,N),
    sintagma_nominal(SN),
    append(V,SN,SV).
oracion(O) :-
    sintagma_nominal(SN),
    sintagma_verbal(SV),
    append(SN,SV,O), !.
oracion(O) :-
    write('La oracion esta mal redactada, el formato de oracion es:....'), nl, fail.
    
inicio_de_conversacion(P):-
    saludo(S),nombre(Y,X,N),
    append(S,N,P),
    write('Hola en que le puedo ayudar guapeton'),nl,!.
inicio_de_conversacion(P):-
    write('No se de que esta hablando loco'),nl,fail.

mitad_de_conversacion(O):-
    oracion(O), sinonimo(mala,X), miembro(Y,X), miembro(Y,O),solucionador(),!.

mitad_de_conversacion(O):-
    oracion(O), razones(X), miembro(X,O), causas().

final_de_conversacion(O):-
    despedidas(D),nombre(Y,X,N),
    append(D,N,P),
    write('De nada fue un placer ayudarlo'),nl,!.
    
final_de_conversacion(O):-
    write('No entiendo de que mierdas esta hablando'),nl,fail.

miembro(X, [X|_]).
miembro(X, [_|R]):-
    miembro(X, R).


