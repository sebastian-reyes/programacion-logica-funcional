calificacion(john, 85).
calificacion(mary, 92).
calificacion(alice, 78).
calificacion(bob, 65).
calificacion(charlie, 88).

% Regla 1: Categoría de calificación
categoria(Calificacion, 'Excelente') :- Calificacion >= 90.
categoria(Calificacion, 'Bueno') :- Calificacion >= 80, Calificacion < 90.
categoria(Calificacion, 'Suficiente') :- Calificacion >= 70, Calificacion < 80.
categoria(Calificacion, 'Insuficiente') :- Calificacion < 70.

% Regla 2: Estudiantes en una categoría específica
estudiantesEnCategoria(Categoria, Estudiantes) :-
    findall(Nombre,
        (calificacion(Nombre, Calificacion), categoria(Calificacion, Categoria)),
        Estudiantes).