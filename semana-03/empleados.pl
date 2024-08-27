% Hechos para empleados: nombre, salario base, horas extras, años de antigüedad
empleado(juan, 3000, 10, 5).
empleado(maria, 3500, 5, 2).
empleado(carlos, 4000, 8, 8).
empleado(luisa, 2800, 0, 1).

% Hecho para la tarifa de pago de horas extras por hora
tarifaHoraExtra(50).

% Regla para calcular el salario mensual de un empleado
salario_mensual(Nombre, SalarioMensual) :-
    empleado(Nombre, SalarioBase, HorasExtras, _),
    tarifaHoraExtra(TarifaExtra),
    PagoExtras is HorasExtras * TarifaExtra,
    SalarioMensual is SalarioBase + PagoExtras.

% Regla para determinar si un empleado tiene derecho a un bono
% Se da un bono si el empleado tiene más de 5 años de antigüedad
tieneBono(Nombre) :-
    empleado(Nombre, _, _, AnosAntiguedad),
    AnosAntiguedad > 5.