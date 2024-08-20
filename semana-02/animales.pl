% Hechos
esMamifero(leon).
esMamifero(elefante).
esAve(aguila).
esAve(pinguino).
esReptil(serpiente).
esReptil(cocodrilo).

viveEnTierra(leon).
viveEnTierra(elefante).
viveEnTierra(serpiente).
viveEnAgua(cocodrilo).
viveEnAgua(pinguino).
viveEnAire(aguila).

% Regla para saber si un animal es terrestre
esTerrestre(X) :- viveEnTierra(X), \+ viveEnAgua(X).

% Regla para saber si un animal es acuatico
esAcuatico(X) :- viveEnAgua(X), \+ viveEnTierra(X).

% Regla para saber si un animal es volador
esVolador(X) :- viveEnAire(X).

% Regla para saber si un animal es anfibio (vive en agua y tierra)
esAnfibio(X) :- viveEnTierra(X), viveEnAgua(X).

