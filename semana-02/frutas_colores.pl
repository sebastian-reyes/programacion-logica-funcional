% Hechos
esFruta(manzana).
esFruta(naranja).
esFruta(platano).
esFruta(fresa).
esFruta(limon).

esColor(manzana, rojo).
esColor(naranja, naranja).
esColor(platano, amarillo).
esColor(fresa, rojo).
esColor(limon, amarillo).

esDulce(manzana).
esDulce(platano).
esDulce(fresa).

esAcida(naranja).
esAcida(limon).

% Regla para saber si una fruta es roja
esRoja(X) :- esColor(X, rojo).

% Regla para saber si una fruta es amarilla
esAmarilla(X) :- esColor(X, amarillo).

% Regla para saber si una fruta es cítrica (ácida y de color amarillo o
% naranja)
esCitrica(X) :- esAcida(X), (esColor(X,amarillo); esColor(X,naranja)).

% Regla para saber si una fruta es dulce y roja
esDulceYRoja(X) :- esDulce(X), esColor(X, rojo).

