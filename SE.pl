
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

referencia(imp_sin_elec, 'https://www.yoreparo.com/es/impresoras/preguntas/831836/mi-impresora-no-enciende').
referencia(no_drivers, 'http://support.ricoh.com/bb_v1oi/pub_e/oi_view/0001032/0001032602/view/Op_Guide/unv/0063.htm').
referencia(imp_sin_inter, 'https://techlandia.com/arreglar-impresora-conexion-offline-como_15198/').
referencia(sin_tinta, 'https://files.support.epson.com/htmldocs/xp201_/xp201_ug6/source/printers/source/ink_functions/tasks/xp200/removing_installing_cartridges_xp200.html').
referencia(mal_cable, 'https://www.steren.com.gt/computacion/cables-usb').
referencia(componente_malo, 'https://www.mareex.com/soporte-y-servicio/servicios-de-mantenimiento-y-reparacion-de-impresoras').
referencia(sucia, 'https://es.wikihow.com/limpiar-una-impresora').
referencia(cambio_papel, 'https://imprentaonline-naturaprint.com/5-tipos-de-papel-imprimir').
referencia(desalineado, 'https://ugp01.c-ij.com/ij/webmanual/PrinterDriver/W/MG3500%20series/1.0/ES/PPG/dg-c_alignment_auto.html').
referencia(mensaje, 'http://support.ricoh.com/bb_v1oi/pub_e/oi_view/0001062/0001062644/view/intro/int/0068.htm').
referencia(alarmas, 'https://www.oki.com/es/printing/support/user-manual/index.html').

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

% Regla que se encarga de leer un entrada del usuario y la retorna como
% una lista, donde cada elemento es una palabra de la oraci�n del
% usuario.
leer_input(L):-
    read_line_to_codes(user_input, Cs),
    atom_codes(S, Cs),
    atomic_list_concat(L, ' ', S).

