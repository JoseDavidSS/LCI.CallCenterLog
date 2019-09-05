<<<<<<< HEAD

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



% Hechos que mencionan algunas causas de problemas que puede tener la

causa('- Su impresora no estï¿½ conectada.').
causa('- No tiene los drivers instalados.').
causa('- La impresora no estï¿½ en la misma red que su computadora.').
causa('- Su impresora no tiene tinta.').
causa('- El cable de su impresora esta daï¿½ado').
causa('- Su impresora puede estar sucia, por lo que se debe limpiar.').
causa('- Los cabezales pueden estar desalineados.').

% Hechos que contienen las preguntas que el sistema le realizarï¿½ al
% usuario, estï¿½ constituido por la palabra clave del problema (solo lo
% ve el programa) y la oraciï¿½n del problema que serï¿½ imprimida para
% mostrarsela al usuario.
pregunta(imp_con_elec, 'ï¿½Revisï¿½ que la impresora se encuentre conectada?').
pregunta(prim_vez, 'ï¿½Es la primera vez que utiliza la impresora?').
pregunta(drivers, 'ï¿½Ya instalï¿½ los drivers de su impresora?').
pregunta(wifi, 'ï¿½Su impresora es WiFi?').
pregunta(imp_con_inter, 'ï¿½Su impresora estï¿½ conectada a la misma red que su computadora?').
pregunta(tinta, 'ï¿½Su impresora tiene suficiente tinta en todos sus cartuchos?').
pregunta(cable, 'ï¿½Verificï¿½ que el cable de su impresora se encuentre en buenas condiciones?').
pregunta(liquido, 'ï¿½Ha derramado algï¿½n lï¿½quido sobre la impresora?').
pregunta(polvo, 'ï¿½Su impresora ha sido limpiada correctamente recientemente?').
pregunta(sonido, 'ï¿½Su impresora suena mal cuando se mueve?').
pregunta(enciende, 'ï¿½Su impresora enciende?').
pregunta(papel, 'ï¿½El papel usado se encuentra en buenas condiciones?').
pregunta(imp_borrosa, 'ï¿½Su impresiï¿½n se ve borrosa?').
pregunta(imp_vieja, 'ï¿½Impresora vieja?').
pregunta(cabezales, 'ï¿½La impresiï¿½n aparece desalineada?').
pregunta(errores, 'ï¿½La impresora estï¿½ encendida pero sigue sin funcionar?').
pregunta(pantalla_mensajes, 'ï¿½La impresora posee pantalla?').
pregunta(alarmas_leds, 'ï¿½La impresora presenta una alarma o leds que comunmente no estï¿½n activados?').

% Hechos que contienen las respuestas que el sistema le mostrarï¿½ al
% usuario en caso de encontrar un problema, estï¿½ constituido por la
% palabra clave de la soluciï¿½n (solo lo ve el programa) y la oraciï¿½n de
% la soluciï¿½n que mostrarï¿½ el programa.
respuesta(imp_sin_elec, 'Proceda a conectar su impresora a un tomacorriente.').
respuesta(no_drivers, 'Proceda a instalar los drivers de su impresora.').
respuesta(imp_sin_inter, 'Proceda a conectar su impresora a la red.').
respuesta(sin_tinta, 'Proceda a cambiar ï¿½l/los cartuchos de tinta necesarios de su impresora.').
respuesta(mal_cable, 'Proceda a cambiar el cable de su impresora.').
respuesta(componente_malo, 'Debe llevar su impresora a ser reparada, posiblemente se daï¿½ï¿½ un componente.').
respuesta(sucia, 'Debe limpiar su impresora.').
respuesta(cambio_papel, 'Proceda a cambiar el tipo de papel utilizado.').
respuesta(sin_resp, 'El sistema no es capaz de atender su duda. Contacte un experto.').
respuesta(desalineado, 'Debe reajustar los cabezales en configuraciones de impresora.').
respuesta(mensaje, 'Siga las instrucciones que aparecen en la pantalla de su impresora.').
respuesta(alarmas, 'Lea el manual de usuario sobre esta alarma o luz indicadora.').
=======
:- consult('./db.pl').

:- dynamic(respuestas/1).

% Regla que se encarga de iniciar el proceso de búsqueda de una solución
% a un problema del usuario, se encarga de reiniciar la lista de
% respuestas y además imprime la solución al problema del
% usuario.
solucionador():-
    write('Responda solamente con un si. o no. a las siguientes preguntas:'), nl,
    retractall(respuestas(_)),
    assert(respuestas([])),
    problema(Problema),
    respuesta(Problema, Respuesta),
    write(Respuesta), nl.
>>>>>>> BDD

% Regla que se encarga de imprimir todas las posibles causas en caso de
% algún fallo en la impresora.
causas():-
    write('Hay varias causas que pueden ocasionar que su impresora no funcione:'), nl,
    causa(Causa),
    write(Causa), nl,
    fail.

<<<<<<< HEAD
/*


:'######::'####::'######::'########:'########:'##::::'##::::'###::::
'##... ##:. ##::'##... ##:... ##..:: ##.....:: ###::'###:::'## ##:::
 ##:::..::: ##:: ##:::..::::: ##:::: ##::::::: ####'####::'##:. ##::
. ######::: ##::. ######::::: ##:::: ######::: ## ### ##:'##:::. ##:
:..... ##:: ##:::..... ##:::: ##:::: ##...:::: ##. #: ##: #########:
'##::: ##:: ##::'##::: ##:::: ##:::: ##::::::: ##:.:: ##: ##.... ##:
. ######::'####:. ######::::: ##:::: ########: ##:::: ##: ##:::: ##:
:......:::....:::......::::::..:::::........::..:::::..::..:::::..::


'########:'##::::'##:'########::'########:'########::'########::'#######::
 ##.....::. ##::'##:: ##.... ##: ##.....:: ##.... ##:... ##..::'##.... ##:
 ##::::::::. ##'##::: ##:::: ##: ##::::::: ##:::: ##:::: ##:::: ##:::: ##:
 ######:::::. ###:::: ########:: ######::: ########::::: ##:::: ##:::: ##:
 ##...:::::: ## ##::: ##.....::: ##...:::: ##.. ##:::::: ##:::: ##:::: ##:
 ##:::::::: ##:. ##:: ##:::::::: ##::::::: ##::. ##::::: ##:::: ##:::: ##:
 ########: ##:::. ##: ##:::::::: ########: ##:::. ##:::: ##::::. #######::
........::..:::::..::..:::::::::........::..:::::..:::::..::::::.......:::



*/

% Regla que se encarga de imprimir todas las posibles causas de algï¿½n
% problema.
causas():-
    write('Hay varias causas que pueden ocasionar que su impresora no funcione:'), nl,
    causa(C),
    write(C), nl,
    fail.

% Reglas de los problemas que puede tener la impresora, se encargan de
% retornar la soluciï¿½n del problema con base a las respuestas del
% usuario.
problema(imp_sin_elec):-
    busca_pregunta_no(imp_con_elec), !.


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
% previamente por el usuario, para evitar preguntarla nuevamente, ademï¿½s
% en caso de que la pregunta ya fuese respondida, se revisa si la
% respuesta del usuario fue un no.
busca_pregunta_no(PC):-
    respuestas(L),
    buscar_respondido(PC, R, L), !,
    consultar_aux(no, R).

% Regla que se encarga de buscar la pregunta que se le realizarï¿½ al
% usuario, y se espera que responda no.
busca_pregunta_no(PC):-
    pregunta(PC, P),
    consultar_no(PC, P).

% Regla que se encarga de revisar si una pregunta ha sido respondida
% previamente por el usuario, para evitar preguntarla nuevamente, ademï¿½s
% en caso de que la pregunta ya fuese respondida, se revisa si la
% respuesta del usuario fue un si.
busca_pregunta_si(PC):-
    respuestas(L),
    buscar_respondido(PC, R, L), !,
    consultar_aux(si, R).

% Regla que se encarga de buscar la pregunta que se le realizarï¿½ al
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

% Regla que se encarga de iniciar el proceso de bï¿½squeda de una soluciï¿½n
% a un problema del usuario, se encarga de reiniciar la lista de
% respuestas y ademï¿½s retorna e imprime la soluciï¿½n al problema del
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
=======
% Regla que se encarga de revisar si una pregunta ha sido respondida
% previamente por el usuario, para evitar preguntarla nuevamente, además
% en caso de que la pregunta ya fuese respondida, revisa si la
% respuesta del usuario fue un si o un no.
busca_pregunta(PalabraClave, RespuestaEsperada):-
    respuestas(Lista),
    buscar_respondido(PalabraClave, Respuesta, Lista), !,
    consultar_aux(RespuestaEsperada, Respuesta).

% Regla que se encarga de buscar la pregunta que se le realizará al
% usuario.
busca_pregunta(PalabraClave, RespuestaEsperada):-
    pregunta(PalabraClave, Problema),
    consultar(PalabraClave, Problema, RespuestaEsperada).

% Regla que se encarga de imprimir la pregunta al usuario y recibir su
% respuesta.
consultar(PalabraClave, Problema, RespuestaEsperada):-
    write(Problema), nl,
    read(Respuesta), nl,
    respuestas(Lista),
    concatenar(Lista, [PalabraClave, Respuesta], NuevaLista),
    retractall(respuestas(_)),
    assert(respuestas(NuevaLista)),
    consultar_aux(RespuestaEsperada, Respuesta).

% Hecho que se encarga de comparar la respuesta dada por el usuario y la
% esperada por el sistema experto.
consultar_aux(Respuesta, Respuesta).

% Hecho y regla que se encargan de concatenar 2 listas a una sola.
concatenar([], Lista, Lista).
concatenar([Cabeza|Cola1], Lista2, [Cabeza|Cola2]):-
    concatenar(Cola1, Lista2, Cola2).

% Hecho y regla que se encargan de buscar y retornar una respuesta del
% usuario de una pregunta realizada previamente.
buscar_respondido(Pregunta, Respuesta, [Pregunta, Respuesta|_]).
buscar_respondido(Pregunta, Respuesta, [_|Cola]):-
    buscar_respondido(Pregunta, Respuesta, Cola).

miembro(X, [X|_]).
miembro(X, [_|R]):-
    miembro(X, R).

% Regla que se encarga de leer un entrada del usuario y la retorna como
% una lista, donde cada elemento es una palabra de la oración del
% usuario.
leer_input(Lista):-
    read_line_to_codes(user_input, Caracteres),
    atom_codes(Oracion, Caracteres),
    downcase_atom(Oracion, OracionMinusculas),
    not(revisar_caracteres(OracionMinusculas, OracionFinal)),
    atomic_list_concat(Lista, ' ', OracionFinal).

eliminar_caracter(Oracion, Borrar, Resultado) :-
    atom_concat(Elemento, Respaldo, Oracion),
    atom_concat(Borrar, Resto, Respaldo),
    atom_concat(Elemento, Resto, Resultado).
>>>>>>> BDD

% Regla que se encarga de leer un entrada del usuario y la retorna como
% una lista, donde cada elemento es una palabra de la oraciï¿½n del
% usuario.
leer_input(L):-
    read_line_to_codes(user_input, Cs),
    atom_codes(S, Cs),
    atomic_list_concat(L, ' ', S).

