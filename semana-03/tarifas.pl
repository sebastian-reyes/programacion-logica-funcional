% Hechos para las tarifas de pago
tarifa_por_hora(15).
tarifa_hora_extra(22.5). % 1.5 veces la tarifa regular
horas_por_semana(40). % Horas estándar de trabajo por semana

% Hechos para obreros: nombre, horas trabajadas en la semana
obrero(pedro, 45).
obrero(ana, 38).
obrero(luis, 50).
obrero(sofia, 40).

% Regla para calcular el pago semanal de un obrero
pago_semanal(Nombre, Pago) :-
    obrero(Nombre, HorasTrabajadas),
    tarifa_por_hora(TarifaHora),
    tarifa_hora_extra(TarifaExtra),
    horas_por_semana(HorasSemana),
    (HorasTrabajadas =< HorasSemana ->
    % Si el obrero no trabaja horas extras
    Pago is HorasTrabajadas * TarifaHora;
    % Si el obrero trabaja horas extras
    HorasExtras is HorasTrabajadas - HorasSemana,
    PagoHorasNormales is HorasSemana * TarifaHora,
    PagoHorasExtras is HorasExtras * TarifaExtra,
    Pago is PagoHorasNormales + PagoHorasExtras).

% Regla para determinar si un obrero ha trabajado horas extras
trabajo_horas_extras(Nombre) :-
    obrero(Nombre, HorasTrabajadas),
    horas_por_semana(HorasSemana),
    HorasTrabajadas > HorasSemana.