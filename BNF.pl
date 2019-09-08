:- consult('./SE.pl').
/*

'########:::::'###:::::'######::'########:
 ##.... ##:::'## ##:::'##... ##: ##.....::
 ##:::: ##::'##:. ##:: ##:::..:: ##:::::::
 ########::'##:::. ##:. ######:: ######:::
 ##.... ##: #########::..... ##: ##...::::
 ##:::: ##: ##.... ##:'##::: ##: ##:::::::
 ########:: ##:::: ##:. ######:: ########:
........:::..:::::..:::......:::........::

'########::'########:
 ##.... ##: ##.....::
 ##:::: ##: ##:::::::
 ##:::: ##: ######:::
 ##:::: ##: ##...::::
 ##:::: ##: ##:::::::
 ########:: ########:
........:::........::

'########:::::'###::::'########::'#######:::'######::
 ##.... ##:::'## ##:::... ##..::'##.... ##:'##... ##:
 ##:::: ##::'##:. ##::::: ##:::: ##:::: ##: ##:::..::
 ##:::: ##:'##:::. ##:::: ##:::: ##:::: ##:. ######::
 ##:::: ##: #########:::: ##:::: ##:::: ##::..... ##:
 ##:::: ##: ##.... ##:::: ##:::: ##:::: ##:'##::: ##:
 ########:: ##:::: ##:::: ##::::. #######::. ######::
........:::..:::::..:::::..::::::.......::::......:::

*/
%Estos son los pronombres que posee la base de datos
pronombre_interrogativo([como]).
pronombre_interrogativo([donde]).
pronombre_interrogativo([por-que]).
pronombre_interrogativo([que]).
pronombre_interrogativo([cuales]).
pronombre_interrogativo([cual]).

%Estos son los Articulos que posee la base de datos
articulo(singular,masculino,[el]).
articulo(plural,masculino,[los]).
articulo(singular,femenino,[la]).
articulo(plural,femenino,[las]).
articulo(singular,femenino,[mi]).
articulo(singular,masculino,[mi]).

%Estas son los saludos  que posee la base de datos
saludo([hola]).
saludo([buenas]).

%Estas son los despedidas que posee la base de datos
despedidas([muchas,gracias]).
despedidas([hasta,luego]).
despedidas([adios]).
despedidas([gracias]).

%Estas son los sustantivos que posee la base de datos
sustantivo(singular,masculino,[callcenterlog]).
sustantivo(plural,femenino,[causas]).
sustantivo(plural,femenino,[razones]).
sustantivo(singular,masculino,[problematica]).
sustantivo(singular,femenino,[referencia]).
sustantivo(singular,femenino,[impresora]).
sustantivo(singular,masculino,[problema]).
sustantivo(singular,masculino,[error]).

%Estas son los verbos que posee la base de datos
verbo(singular,[come]).
verbo(plural,[son]).
verbo(singular,[este]).
verbo(singular,[esta]).
verbo(singular,[es]).
verbo(singular,[comen]).

%Estos son los adjetivo que posee la base de datos
adjetivo(singular,masculino,[electricidad]).
adjetivo(singular,masculino,[drivers]).
adjetivo(singular,masculino,[internet]).
adjetivo(singular,masculino,[tinta]).
adjetivo(singular,masculino,[cable]).
adjetivo(singular,masculino,[componente]).
adjetivo(singular,fememino,[sucia]).
adjetivo(singular,masculino,[papel]).
adjetivo(singular,masculino,[desalineado]).
adjetivo(singular,masculino,[mensaje]).
adjetivo(singular,masculino,[alarmas]).
adjetivo(singular,masculino,[malo]).
adjetivo(singular,femenino,[mala]).
adjetivo(plural,masculino,[malos]).
adjetivo(singular,femenino,[mala]).
adjetivo(singular,femenino,[rota]).
adjetivo(singular,masculino,[roto]).
adjetivo(singular,femenino,[corrupta]).
adjetivo(singular,femenino,[corrupto]).
adjetivo(singular,femenino,[jodida]).

%Estas son las conjuciones  que posee la base de datos
conjucion([que]).

%Estas son los adverbios  que posee la base de datos
adverbio([de]).
adverbio([del]).

/*
'########::'##::: ##:'########:
 ##.... ##: ###:: ##: ##.....::
 ##:::: ##: ####: ##: ##:::::::
 ########:: ## ## ##: ######:::
 ##.... ##: ##. ####: ##...::::
 ##:::: ##: ##:. ###: ##:::::::
 ########:: ##::. ##: ##:::::::
........:::..::::..::..::::::::
*/

%
/*Este hecho  se utiliza para definir una relación de igualdad entre una palabra y 
  una lista de palabras. O sea las palabras de la lista son sinónimos del primer argumento del hecho
*/
sinonimo(mala,[jodida,mala,rota,corrupta]).
sinonimo(causas,[razones,causas]).
sinonimo(referencia,[referencia]).
sinonimo(problematica,[problema,error,problematica]).
/*
Esta regla lo que hace es analizar si en una lista de elementos atomicos(Nexo) 
la primera  mitad es un adverbio y la otra es un artículo. Una vez  que termina este análisis  
le hace un append para evaluar si es verdadero. 
*/
%
sintagma_nexo(Nexo) :-
    adverbio(A),
    articulo(_,_,C),
    append(A,C,Nexo).
%*************************************************************************
/*
Esta regla funciona con una lista 2 elementos atómicos(SP) la separa en dos listas separadas(S,A), 
la primera sublista es evaluada para saber si es un sustantivo y la segunda  es evaluada para saber si es un adjetivo. 
Además de esto evalúa si su género y cantidad concuerdan(X,Y)

*/
sintagma_segundaparte(SP):-
    sustantivo(X,Y,S),
    adjetivo(X,Y,A),
    append(S,A,SP).

/*
Esta regla funciona con una lista 2 elementos atómicos(SI) la separa en dos listas separadas(S,A),
 la primera sublista es evaluada para saber si es un 
pronombre_interrogativo(Cual,Que) y la segunda  es evaluada para saber si es un verbo o es un sustantivo.
 Al final le hace append para saber si lo que entra es igual a lo que separó

*/
sintagma_interrogativo(SI):-
    pronombre_interrogativo(P),
    verbo(_,V),
    append(P,V,SI).
/*
Esta regla funciona con una lista 2 elementos atómicos(SI) la separa en dos listas separadas(S,V), 
la primera sublista es evaluada para saber si es un 
sustantivo y la segunda  es evaluada para saber si es un verbo.También evalúa si su genero y.
Al final le hace append para saber si lo que entra es igual a lo que separó
*/
sintagma_interrogativo(SI):-
    pronombre_interrogativo(P),
    sustantivo(_,_,S),
    append(P,S,SI).

/*
 Esta regla funciona con una lista 2 elementos atómicos(P1) la separa en dos listas separadas(S,V),
la primera sublista es evaluada para saber si es un 
sustantivo y la segunda  es evaluada para saber si es un verbo.También evalúa si su genero y. 
Al final le hace append para saber si lo que entra es igual a lo que separó
*/

sintagma_parte1(P1):-
    sustantivo(X,_,S),
    verbo(X,V),
    append(S,V,P1).
/*
Esta regla funciona con una lista  de 2 elementos atómicos(Oracion) la separa en dos listas separadas(P,SV),
 la primera sublista es evaluada para saber si es un  sintagma_interrogativo y la segunda  es evaluada para saber si es un sintgama_nominal.
Al final le hace append para saber si lo que entra es igual a lo que separó
*/
sintagma_predicado1(Oracion):-
    sintagma_interrogativo(P),
    sintagma_nominal(SV),
    append(P,SV,Oracion).
/*

*/
sintagma_predicado1(Oracion):-
    pronombre_interrogativo(P),
    sintagma_parte1(S1),
    append(P,S1,Oracion).
/*
Esta regla funciona con una lista  de 2 elementos atómicos(Predicado2)
 la separa en dos listas separadas(N,P2), la primera sublista es evaluada para saber si es un  sintagma_nexo y 
 la segunda  es evaluada para saber si es un sintagma_segundaparte .Al final le hace append para saber si lo que entra es igual
  a lo que separó
*/
sintagma_predicado2(Predicado2):-
    sintagma_nexo(N),
    sintagma_segundaparte(P2),
    append(N,P2,Predicado2).
/*
Esta regla funciona con una lista  de 2 elementos atómicos(PC) la separa en dos listas separadas(N,P2),
 la primera sublista es evaluada para saber si es un  sintagma_predicado1 y la segunda  es evaluada para saber si es un sintagma_predicado2.
Al final le hace append para saber si lo que entra es igual a lo que separó

*/
sintagma_preguntaCompleja(PC):-
    sintagma_predicado1(S1),
    sintagma_predicado2(S2),
    append(S1,S2,PC).
/*
Esta regla funciona con una lista  de 2 elementos atómicos(SN),evalua dos casos:
El primero si solo es una lista con un  una lista de un elemento atomico y evalúa si este elemento atomico es un 
sustantivo de cualquier género y cualquier cantidad.
La segunda en el cual la lista es de dos elementos lo que hace es que la separa en dos sublistas(A,N), 
la primera sublista es evaluada para saber si es un  artículo y la segunda  es evaluada para saber 
si es un sustantivo(También verifica si su género y cantidad son iguales) .Al final le hace append para saber si lo que entra es igual
 a lo que se  separó.

*/
pregunta(Oracion):-
    sintagma_interrogativo(SI),
    sintagma_nominal(SN),
    append(SI,SN,Oracion).

sintagma_nominal(SN):-
    sustantivo(_,_,SN).
sintagma_nominal(SN):-
    articulo(Y,X,A),
    sustantivo(Y,X,N),
    append(A,N,SN).
/*
Esta regla funciona con una lista  de 2 elementos atómicos(SV),evalúa dos casos:El primero si la primera sublista es evaluada para saber
 si es un  verbo y la segunda  es evaluada para saber si es un sintagma_nominal(También verifica si su género y cantidad son iguales).
La segunda si la primera sublista es evaluada para saber si es un  verbo y la segunda sublista  es evaluada para saber si es un adjetivo.
Al final  en los dos casos le hace append para saber si lo que entra es igual a lo que se  separó.

*/
sintagma_verbal(SV) :-
    verbo(Y,V),
    adjetivo(Y,_,Z),
    append(V,Z,SV).

sintagma_verbal(SV) :-
    verbo(_,V),
    sintagma_nominal(SN),
    append(V,SN,SV).
/*
Esta regla recibe una lista con X cantidad de elementos atómicos. 
La lista sera separa en dos sublistas que seran verificadas  si una mitad es un sintagma_nominal y
 la otra si es sintagma_verbal,después de esto verifica con append si  la unión de estas dos sublistas  
 es igual lo que entró.En caso de que falle imprime que la oración está mal redactada y su formato correcto 

*/
oracion(O) :-
    sintagma_nominal(SN),
    sintagma_verbal(SV),
    append(SN,SV,O), !.

oracion(_) :-
    write('La oracion esta mal redactada, el formato de oracion  articulo+sutantivo+verbo+sutantivo tambien puede ser articulo+sutantivo+verbo+sutantivo'), nl, fail.
/*
Esta regla lo que recibe una lista con elementos atomicos que sera separados en dos listas para saber si la primera mitad
 pertenece a un saludo y la segunda mitad si es  un sustantivo.En caso de que  falle la primer regla imprime unas en terminal
  cual es el formato correcto.

*/
inicio_de_conversacion(P):-
    saludo(S),sustantivo(_,_,N),
    append(S,N,P),
    write('Hola en que le puedo ayudar?'),nl,!.
inicio_de_conversacion(_):-
    write('Debe escribir segun el formato.'),nl,fail.
/*
Esta regla se encarga de manejar el flujo de la  las peticiones del usuario ya que existen tres posibles flujo:
En este flujo el usuario le  pregunta algo asi:
 Cuales son las causas de que mi impresora no funcione en este caso  el le devuelve las posibles causas de que este fallando el programa.
En este segundo flujo el usuario le pide las referencias de un problema específico  después de esto él devuelve la respectiva referencia.
En ese último flujo el usuario no sabe que problema tiene así que este le informa al usuario que la impresora está mala, 
después de esto se llama  al sistema experto el cual realizará preguntas si o no para encontrarlo.
Una vez en cualquier flujo si llega a fallar  este le comunicará al usuario  que no entiende que está 
solicitando y le da otra oportunidad de comunicarse con el programa.
Una vez que ya pasó por alguno de los 3 flujos termina.

*/
mitad_de_conversacion(O):-
    sintagma_preguntaCompleja(O),
    sinonimo(causas,X),
    miembro(Y,X),
    miembro(Y,O),!,
    not(causas()).
mitad_de_conversacion(O):-
    sintagma_preguntaCompleja(O),
    sinonimo(referencia,X),
    miembro(Y,X),
    miembro(Y,O),
    sinonimo(problematica,Z),
    miembro(W,Z),
    miembro(W,O),
    adjetivo(_, _, [A|_]),
    miembro(A,O),!,
    referencia(A,L),
    write('Claro, la referencia es:'), nl,
    write(L), nl.
mitad_de_conversacion(O):-
    oracion(O),
    sinonimo(mala,X),
    miembro(Y,X),
    miembro(Y,O),!,
    solucionador().
mitad_de_conversacion(_):-
    write('Debe escribir segun el formato.'),nl,fail.
/*
Semifinal de Conversación: esta regla ayuda a corroborar si el user ocupa algo mas o ya  terminó,
 en caso de la respuesta sea sí devuelve a la mitad de la conversación y si la respuesta es no entonces termina.
*/
semi_final_de_conversacion(O):-
    miembro(si,O),!,
    write('Claro, cual es el problema?'),nl,
    callcenterlog_aux.
semi_final_de_conversacion(O):-
    miembro(no, O),!,
    write('De acuerdo'),nl.
semi_final_de_conversacion(_):-
    write('Debe escribir segun el formato.'),nl,fail.
/*
Final de Conversación: esta regla espera que el usuario se despida de la manera correcta
 en caso de que si se despida con el formato correcto termina la regla
 como true y si no le informa  que debe hacerlo de la manera correcta.
*/
final_de_conversacion(O):-
    despedidas(D),sustantivo(_,_,N),
    append(D,N,O),
    write('Fue un placer ayudarlo.'),nl,!.
final_de_conversacion(_):-
    write('Debe escribir segun el formato.'), nl, fail.












