% Base de conocimiento
% curso(nombre_curso, profesor, dia, hora, aula).

curso(matematica, julio, martes, '5pm', a101).
curso(fisica, oscar, miercoles, '6pm', a101).
curso(programacion, mirella, martes, '7pm', a301).
curso(quimica, luis, lunes, '8pm', a401).
curso(ciencias, javier, martes, '5pm', a501).
curso(matematica, javier, jueves, '8am', a601).
curso(programacion, javier, martes, '10am', a701).

horario_curso(NombreCurso, Dia, Hora, Aula) :-
    curso(NombreCurso,_,Dia,Hora,Aula).
% ?- horario_curso(matematica, Dia, Hora, Aula).

cursos_profesor(Docente, Cursos) :-
    findall(Nombre, (curso(Nombre,Docente,,,_)), Cursos).
% ?- cursos_profesor(javier, Cursos).

conflicto_horario(NombreCursoUno, NombreCursoDos) :-
    curso(NombreCursoUno,,,HoraUno,_),
    curso(NombreCursoDos,,,HoraDos,_),
    HoraUno = HoraDos.
% ?- conflicto_horario(matematica, ciencias).    

aula_disponible(Dia, Hora, Aulas) :- 
    findall(Aula, 
        (curso(,,Dia,Hora,Aula)), 
        Aulas).
% ?- aula_disponible(martes, '5pm', Aulas).