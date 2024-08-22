% Define una base de datos con hechos sobre estudiantes y sus calificaciones. Luego,
% escribe reglas para realizar las siguientes consultas:

calificacion(john, 85).
calificacion(mary, 92).
calificacion(alice, 78).
calificacion(bob, 65).
calificacion(charlie, 88).

estudiantesConCalificacionMayorA(Nota, Estudiantes) :-
    findall(Nombre, 
        (calificacion(Nombre, Calificacion), Calificacion > Nota),
        Estudiantes).
    