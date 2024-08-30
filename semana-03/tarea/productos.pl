% Base de conocimiento productos
% producto(id_producto, nombre, categoria, precio, cantidad_en_stock).

producto(1, televisor, electrodomestico, 250.0, 300).
producto(2, radio, electrodomestico, 50.0, 269).
producto(3, libro, entretenimiento, 60.0, 333).
producto(4, pelicula, entretenimiento, 20.0, 546).
producto(5, mesa, hogar, 250.0, 113).
producto(6, silla, hogar, 50.0, 332).
producto(7, mouse, perifericos, 60.0, 1231).
producto(8, teclado, perifericos, 100.0, 1502).
producto(9, cuadro, arte, 65.0, 0).
producto(10, estatua, arte, 250.0, 0).

en_stock(ProductoId) :-
    producto(ProductoId, _, _, _, Stock),
    Stock > 0.
% ?- en_stock(1). --> true

precio_producto(NombreProducto, PrecioProducto) :-
    producto(,NombreProducto,,PrecioProducto,_).
% ?- precio_producto(televisor, PrecioProducto).

productos_categoria(Categoria, Productos) :-
    findall(Nombre, 
        (producto(,Nombre,Categoria,,_)), 
        Productos).
% ?- productos_categoria(electrodomesticos, Productos).