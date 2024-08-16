% Definiciones simples
perro(bobby).
perro(scan).
gato(tom).
gato(felix).
conejo(rabbit).
conejo(bonnie).
pajaro(piolin).
parajo(qwerty).

% Regla de cosulta simple - se agregan gato, perro y conejo a animal(X)
animal(X) :- perro(X).
animal(X) :- gato(X).
animal(X) :- conejo(X).
animal(X) :- pajaro(X).

% Reglas de consulta simple en una sola linea
animalTerrestre(X) :- perro(X); gato(X); conejo(X).
animalVolador(X) :- pajaro(X).

% Reglas un poco más avanzadas
esPadre(juan, maria).
esPadre(carlos, pedro).
esPadre(miguel, laura).
esMadre(ana, luis).
esMadre(ana, tatiana).
esMadre(ana, carlos).

progenitores(X,Y) :- esPadre(X,Y).
progenitores(X,Y) :- esMadre(X,Y).
