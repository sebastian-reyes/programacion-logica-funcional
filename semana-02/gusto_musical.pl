amigo(john, rock).
amigo(mary, pop).
amigo(alice, jazz).
amigo(bob, rock).

% Regla 1: Amigo con un gusto musical específico
gustoMusical(Amigo, Gusto) :-
    amigo(Amigo, Gusto).

% Regla 2: Amigos que comparten el mismo gusto musical
amigosQueCompartenGusto(Amigo1, Amigo2) :-
    amigo(Amigo1, Gusto),
    amigo(Amigo2, Gusto),
    Amigo1 \= Amigo2.