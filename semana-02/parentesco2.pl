% Hechos
padre(jhon, mary).
padre(jhon, tom).
madre(jane, mary).
madre(jane, tom).

% Regla: un niño tiene un padre y madre
tienePadre(Nino, Padre) :- padre(Padre, Nino).
tieneMadre(Nino, Madre) :- madre(Madre, Nino).

% Regla: un niño tiene dos padres
tienePadres(Nino, Padre, Madre) :-
    tienePadre(Nino, Padre),
    tieneMadre(Nino, Madre).

% Regla: Un niño tiene padres completos
tienePadresCompletos(Nino) :-
    tienePadre(Nino, _),
    tieneMadre(Nino, _).

