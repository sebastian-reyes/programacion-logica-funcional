habitacion(101, simple).
habitacion(102, doble).
habitacion(103, suite).
habitacion(104, suite).

% Hechos de reservas
reservado(101, '2024-08-20').
reservado(102, '2024-08-21').

% Regla 1: Verificar si una habitación está disponible en una fecha
disponible(Habitacion, Fecha) :-
    habitacion(Habitacion, _),
    \+ reservado(Habitacion, Fecha).

% Regla 2: Obtener habitaciones disponibles de un tipo específico
habitacionesDisponibles(Tipo, HabitacionesDisponibles) :-
    findall(Habitacion, 
        (habitacion(Habitacion, Tipo), disponible(Habitacion, _)),
        HabitacionesDisponibles).