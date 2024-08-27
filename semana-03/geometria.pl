% Hecho para el valor de PI
pi(3.141592653589793).

% Reglas para el cálculo del área y perímetro de un círculo

areaCirculo(Radio, Area) :-
    pi(Pi),
    Area is Pi * Radio * Radio.

perimetroCirculo(Radio, Perimetro) :-
    pi(Pi),
    Perimetro is 2 * Pi * Radio

% Reglas para el cálculo del área y perímetro de un rectángulo

areaRectangulo(Base, Altura, Area) :-
    Area is Base * Altura.

perimetroRectangulo(Base, Altura, Perimetro) :-
    Perimetro is 2 * (Base + Altura).
