:- consult('./DB.pl').

:- dynamic(respuestas/1).

% Regla que se encarga de imprimir todas las posibles causas de alg�n
% problema.
causas():-
    write('Hay varias causas que pueden ocasionar que su impresora no funcione:'), nl,
    causa(C),
    write(C), nl,
    fail.

% Reglas de los problemas que puede tener la impresora, se encargan de
% retornar la soluci�n del problema con base a las respuestas del
% usuario.
problema(imp_sin_elec):-
    busca_pregunta_no(imp_con_elec), !.

problema(no_drivers):-
    busca_pregunta_si(prim_vez),
    busca_pregunta_no(drivers), !.

problema(imp_sin_inter):-
    busca_pregunta_si(wifi),
    busca_pregunta_no(imp_con_inter), !.

problema(sin_tinta):-
    busca_pregunta_no(tinta), !.

problema(mal_cable):-
    busca_pregunta_no(cable), !.

problema(componente_malo):-
    busca_pregunta_si(liquido),
    busca_pregunta_si(imp_con_elec),
    busca_pregunta_no(enciende), !.

problema(sucia):-
    busca_pregunta_si(sonido),
    busca_pregunta_no(polvo), !.

problema(cambio_papel):-
    busca_pregunta_si(sonido),
    busca_pregunta_no(papel), !.

problema(sucia):-
    busca_pregunta_si(imp_borrosa),
    busca_pregunta_no(polvo), !.

problema(desalineado):-
    busca_pregunta_si(imp_borrosa),
    busca_pregunta_si(cabezales), !.

problema(mensaje):-
    busca_pregunta_si(errores),
    busca_pregunta_si(pantalla_mensajes), !.

problema(alarmas):-
    busca_pregunta_si(errores),
    busca_pregunta_si(alarmas_leds), !.

problema(sin_resp).

% Regla que se encarga de revisar si una pregunta ha sido respondida
% previamente por el usuario, para evitar preguntarla nuevamente, adem�s
% en caso de que la pregunta ya fuese respondida, se revisa si la
% respuesta del usuario fue un no.
busca_pregunta_no(PC):-
    respuestas(L),
    buscar_respondido(PC, R, L), !,
    consultar_aux(no, R).

% Regla que se encarga de buscar la pregunta que se le realizar� al
% usuario, y se espera que responda no.
busca_pregunta_no(PC):-
    pregunta(PC, P),
    consultar_no(PC, P).

% Regla que se encarga de revisar si una pregunta ha sido respondida
% previamente por el usuario, para evitar preguntarla nuevamente, adem�s
% en caso de que la pregunta ya fuese respondida, se revisa si la
% respuesta del usuario fue un si.
busca_pregunta_si(PC):-
    respuestas(L),
    buscar_respondido(PC, R, L), !,
    consultar_aux(si, R).

% Regla que se encarga de buscar la pregunta que se le realizar� al
% usuario, y se espera que responda si.
busca_pregunta_si(PC):-
    pregunta(PC, P),
    consultar_si(PC, P).

% Regla que se encarga de imprimir la pregunta al usuario y recibir su
% respuesta, por lo general se espera un no para que sea true.
consultar_no(PC, P):-
    write(P), nl,
    read(R), nl,
    respuestas(L),
    concatenar(L, [PC, R], NL),
    retractall(respuestas(_)),
    assert(respuestas(NL)),
    consultar_aux(no, R).

% Regla que se encarga de imprimir la pregunta al usuario y recibir su
% respuesta, por lo general se espera un si para que sea true.
consultar_si(PC, P):-
    write(P), nl,
    read(R), nl,
    respuestas(L),
    concatenar(L, [PC, R], NL),
    retractall(respuestas(_)),
    assert(respuestas(NL)),
    consultar_aux(si, R).

% Hecho que se encarga de comparar la respuesta dada por el usuario y la
% esperada por el sistema experto.
consultar_aux(R, R).

% Regla que se encarga de iniciar el proceso de b�squeda de una soluci�n
% a un problema del usuario, se encarga de reiniciar la lista de
% respuestas y adem�s retorna e imprime la soluci�n al problema del
% usuario.
solucionador():-
    write('Responda solamente con un si. o no. a las siguientes preguntas:'), nl,
    retractall(respuestas(_)),
    assert(respuestas([])),
    problema(P),
    respuesta(P, R),
    write(R), nl.

% Hecho y regla que se encargan de concatenar 2 listas a una sola.
concatenar([], L, L).
concatenar([X|C1], L2, [X|C2]):-
    concatenar(C1, L2, C2).

% Hecho y regla que se encargan de buscar y retornar una respuesta del
% usuario de una pregunta realizada previamente.
buscar_respondido(P, R, [P, R|_]).
buscar_respondido(P, R, [_|C]):-
    buscar_respondido(P, R, C).





