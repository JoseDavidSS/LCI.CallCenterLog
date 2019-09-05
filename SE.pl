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

causa('- Su impresora no est� conectada.').
causa('- No tiene los drivers instalados.').
causa('- La impresora no est� en la misma red que su computadora.').
causa('- Su impresora no tiene tinta.').
causa('- El cable de su impresora esta da�ado').
causa('- Su impresora puede estar sucia, por lo que se debe limpiar.').
causa('- Los cabezales pueden estar desalineados.').

% Hechos que contienen las preguntas que el sistema le realizar� al
% usuario, est� constituido por la palabra clave del problema (solo lo
% ve el programa) y la oraci�n del problema que ser� imprimida para
% mostrarsela al usuario.
pregunta(imp_con_elec, '�Revis� que la impresora se encuentre conectada?').
pregunta(prim_vez, '�Es la primera vez que utiliza la impresora?').
pregunta(drivers, '�Ya instal� los drivers de su impresora?').
pregunta(wifi, '�Su impresora es WiFi?').
pregunta(imp_con_inter, '�Su impresora est� conectada a la misma red que su computadora?').
pregunta(tinta, '�Su impresora tiene suficiente tinta en todos sus cartuchos?').
pregunta(cable, '�Verific� que el cable de su impresora se encuentre en buenas condiciones?').
pregunta(liquido, '�Ha derramado alg�n l�quido sobre la impresora?').
pregunta(polvo, '�Su impresora ha sido limpiada correctamente recientemente?').
pregunta(sonido, '�Su impresora suena mal cuando se mueve?').
pregunta(enciende, '�Su impresora enciende?').
pregunta(papel, '�El papel usado se encuentra en buenas condiciones?').
pregunta(imp_borrosa, '�Su impresi�n se ve borrosa?').
pregunta(imp_vieja, '�Impresora vieja?').
pregunta(cabezales, '�La impresi�n aparece desalineada?').
pregunta(errores, '�La impresora est� encendida pero sigue sin funcionar?').
pregunta(pantalla_mensajes, '�La impresora posee pantalla?').
pregunta(alarmas_leds, '�La impresora presenta una alarma o leds que comunmente no est�n activados?').

% Hechos que contienen las respuestas que el sistema le mostrar� al
% usuario en caso de encontrar un problema, est� constituido por la
% palabra clave de la soluci�n (solo lo ve el programa) y la oraci�n de
% la soluci�n que mostrar� el programa.
respuesta(imp_sin_elec, 'Proceda a conectar su impresora a un tomacorriente.').
respuesta(no_drivers, 'Proceda a instalar los drivers de su impresora.').
respuesta(imp_sin_inter, 'Proceda a conectar su impresora a la red.').
respuesta(sin_tinta, 'Proceda a cambiar �l/los cartuchos de tinta necesarios de su impresora.').
respuesta(mal_cable, 'Proceda a cambiar el cable de su impresora.').
respuesta(componente_malo, 'Debe llevar su impresora a ser reparada, posiblemente se da�� un componente.').
respuesta(sucia, 'Debe limpiar su impresora.').
respuesta(cambio_papel, 'Proceda a cambiar el tipo de papel utilizado.').
respuesta(sin_resp, 'El sistema no es capaz de atender su duda. Contacte un experto.').
respuesta(desalineado, 'Debe reajustar los cabezales en configuraciones de impresora.').
respuesta(mensaje, 'Siga las instrucciones que aparecen en la pantalla de su impresora.').
respuesta(alarmas, 'Lea el manual de usuario sobre esta alarma o luz indicadora.').

% Regla que se encarga de imprimir todas las posibles causas en caso de
% alg�n fallo en la impresora.
causas():-
    write('Hay varias causas que pueden ocasionar que su impresora no funcione:'), nl,
    causa(Causa),
    write(Causa), nl,
    fail.

=======
>>>>>>> BDD
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

:- consult('./db.pl').
:- consult('./readin.pl').

:- dynamic(respuestas/1).

% Regla que se encarga de imprimir todas las posibles causas de algun
% problema.
causas():-
    write('Hay varias causas que pueden ocasionar que su impresora no funcione:'), nl,
    causa(C),
    write(C), nl,
    fail.

% Regla que se encarga de iniciar el proceso de busqueda de una
% solucion a un problema del usuario, se encarga de reiniciar la lista
% de respuestas y ademas retorna e imprime la solucion al problema del
% usuario.
solucionador():-
    write('Responda solamente con un Si. o No. a las siguientes preguntas:'), nl,
    retractall(respuestas(_)),
    assert(respuestas([])),
    problema(P),
    respuesta(P, R),
    write(R), nl.

<<<<<<< HEAD
% Hecho y regla que se encargan de concatenar 2 listas a una sola.
concatenar([], L, L).
concatenar([X|C1], L2, [X|C2]):-
    concatenar(C1, L2, C2).

% Hecho y regla que se encargan de buscar y retornar una respuesta del
% usuario de una pregunta realizada previamente.
buscar_respondido(P, R, [P, R|_]).
buscar_respondido(P, R, [_|C]):-
    buscar_respondido(P, R, C).

% Regla que se encarga de leer un entrada del usuario y la retorna como
% una lista, donde cada elemento es una palabra de la oraci�n del
% usuario.
leer_input(L):-
    read_line_to_codes(user_input, Cs),
    atom_codes(S, Cs),
    atomic_list_concat(L, ' ', S).

=======
% Regla que se encarga de revisar si una pregunta ha sido respondida
% previamente por el usuario, para evitar preguntarla nuevamente, adem�s
% en caso de que la pregunta ya fuese respondida, revisa si la
% respuesta del usuario fue un si o un no.
busca_pregunta(PalabraClave, RespuestaEsperada):-
    respuestas(Lista),
    buscar_respondido(PalabraClave, Respuesta, Lista), !,
    consultar_aux(RespuestaEsperada, Respuesta).

% Regla que se encarga de buscar la pregunta que se le realizar� al
% usuario.
busca_pregunta(PalabraClave, RespuestaEsperada):-
    pregunta(PalabraClave, Problema),
    consultar(PalabraClave, Problema, RespuestaEsperada).

% Regla que se encarga de imprimir la pregunta al usuario y recibir su
% respuesta.
consultar(PalabraClave, Problema, RespuestaEsperada):-
    write(Problema), nl,
    leer_input([Respuesta|_]),
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
% una lista, donde cada elemento es una palabra de la oraci�n del
% usuario.
leer_input(ListaNueva):-
    read_in(Lista),
    signos_de_puntuacion(ListaDeSignos),
    eliminar_signo_de_lista(Lista, ListaDeSignos, ListaNueva).

eliminar_signo_de_lista([], _, _).
eliminar_signo_de_lista([Elemento|Lista], [], [Elemento|ListaNueva]):-
    signos_de_puntuacion(ListaDeSignos),
    eliminar_signo_de_lista(Lista, ListaDeSignos, ListaNueva).
eliminar_signo_de_lista([Signo|Lista], [Signo|_], ListaNueva):-
    signos_de_puntuacion(ListaDeSignos),
    eliminar_signo_de_lista(Lista, ListaDeSignos, ListaNueva).
eliminar_signo_de_lista(Lista, [_|ListaDeSignos], ListaNueva):-
    eliminar_signo_de_lista(Lista, ListaDeSignos, ListaNueva).

