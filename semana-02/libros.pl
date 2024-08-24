libro('1984', george_orwell).
libro('Brave New World', aldous_huxley).
libro('Moby Dick', herman_melville).
libro('Animal Farm', george_orwell).

% Regla 1: Autor de un libro
autorDe(Libro, Autor) :-
    libro(Libro, Autor).

% Reto 1: de un libro, regreseme el autor.
autorDeLibro(Libro, Autor) :-
    findall(Autor,
        libro(Libro, Autor),
        Autor).

% Reto 2: Libros de un autor específico
librosDeAutor(Autor, Libros) :-
    findall(Libro, 
        libro(Libro, Autor), 
        Libros).