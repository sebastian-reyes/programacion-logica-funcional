% Regla para calcular el cuadrado de un número
cuadrado(X, Resultado) :-
    Resultado is X * X.

% Regla para calcular el cubo de un número
cubo(X, Resultado) :-
    Resultado is X * X * X.

% Regla para encontrar el máximo de dos números
maximo(X, Y, Maximo) :-
    X >= Y,
    Maximo is X.

maximo(X, Y, Maximo) :-
    X < Y,
    Maximo is Y.

% Regla para determinar si un número es par
esPar(X) :-
    X mod 2 =:= 0.

% Regla para determinar si un número es impar
esImpar(X) :-
    X mod 2 =\= 0.