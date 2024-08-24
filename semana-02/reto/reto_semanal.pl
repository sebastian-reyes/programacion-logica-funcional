calificacion(john, 85).
calificacion(mary, 92).
calificacion(alice, 78).
calificacion(bob, 65).
calificacion(charlie, 88).

% Reto 1: buscar la calificación según es estudiante
calificacionDe(Estudiante, Nota) :-
    findall(Nota,
            calificacion(Estudiante, Nota),
            Nota).
    
% Reto 2: Buscar los estudiantes con calificacion mayor a la ingresada
estudiantesConCalificacionMayorA(Nota, Estudiantes) :-
    findall(Nombre, 
        (calificacion(Nombre, Calificacion), Calificacion > Nota),
        Estudiantes).
    