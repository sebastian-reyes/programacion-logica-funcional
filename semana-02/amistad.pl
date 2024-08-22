amigo(john, mary).
amigo(mary, alice).
amigo(alice, bob).
amigo(bob, charlie).

% Regla 1: amigo indirecto (amigo de mi amigo)
amigoIndirecto(Persona1, Persona2) :-
    amigo(Persona1, Persona3),
    amigo(Persona3, Persona2),
    Persona1 \= Persona2.

% Regla 2: Una persona tiene una cadena de amigos si hay una conexión de al menos 3 amigos
cadenaDeAmigos(Persona, Cadena) :-
    amigo(Persona, Amigo1),
    amigo(Amigo1, Amigo2),
    amigo(Amigo2, Amigo3),
    Cadena = [Persona, Amigo1, Amigo2, Amigo3].