% Hechos
esPadre(juan, maria).
esPadre(juan, jose).
esPadre(pedro, juan).
esMadre(ana, maria).
esMadre(ana, jose).

esMujer(maria).
esHombre(jose).

% Regla
esAbuelo(X, Y) :- esPadre(X,Z), esPadre(Z,Y).

% Regla para definir quien es un hijo
esHijo(X,Y) :- esPadre(Y,X).
esHijo(X,Y) :- esMadre(Y,X).

% Regla para definir quien es una hija
esHija(X,Y) :- esHijo(X,Y), esMujer(X).

% Regla para definir quien es un hermano
esHermano(X,Y) :- esPadre(Z,X), esPadre(Z,Y), esHombre(X), X \= Y.

