producto(televisor, 500).
producto(refrigerador, 300).
producto(microondas, 150).
producto(ssd, 250).
producto(grafica, 1350).
producto(teclado, 200).

descuento(televisor, 0.10). % 10% de descuentohalt
descuento(refrigerador, 0.15). % 15% de descuento
descuento(microondas, 0.05). % 5% de descuento
descuento(ssd, 0.10). 
descuento(grafica, 0.25). 
descuento(teclado, 0).

% Regla 1: Aplicar descuento
precioConDescuento(Producto, PrecioFinal) :-
    producto(Producto, Precio),
    descuento(Producto, Descuento),
    PrecioFinal is Precio * (1 - Descuento).

% Regla 2: Verficar si el producto es caro
productoCaro(Producto) :-
    producto(Producto, Precio),
    Precio > 250.