USE tienda;

-- 1. Listar el nombre de todos los productos.
SELECT 
    p.nombre AS producto_nombre
FROM 
    producto AS p;

-- 2. Listar nombres y precios de todos los productos.
SELECT 
    p.nombre AS producto_nombre,
    p.precio AS precio
FROM 
    producto AS p;

-- 3. Listar todas las columnas de la tabla producto.
SELECT 
    *
FROM 
    producto AS p;

-- 4. Mostrar nombre, precio en euros y precio en dólares estadounidenses (USD).
SELECT 
    p.nombre AS producto_nombre,
    CONCAT(p.precio, ' €') AS precio_euros,
    ROUND(p.precio * 1.14, 2) AS precio_usd
FROM 
    producto AS p;

-- 5. Mismo ejercicio anterior, pero con aliases específicos para las columnas.
SELECT 
    p.nombre AS nombre_producto,
    CONCAT(p.precio, ' €') AS euros,
    ROUND(p.precio * 1.14, 2) AS dolares
FROM 
    producto AS p;

-- 6. Nombres en mayúscula y precio sin cambios.
SELECT 
    UPPER(p.nombre) AS nombre_mayuscula,
    p.precio AS precio
FROM 
    producto AS p;

-- 7. Nombres en minúscula y precio sin cambios.
SELECT 
    LOWER(p.nombre) AS nombre_minuscula,
    p.precio AS precio
FROM 
    producto AS p;

-- 8. (Para la tabla fabricante) Nombre y dos primeras letras en mayúsculas.
SELECT 
    f.nombre AS nombre_fabricante,
    SUBSTR(UPPER(f.nombre), 1, 2) AS iniciales_mayus
FROM 
    fabricante AS f;

-- 9. Redondear el precio de cada producto.
SELECT 
    p.nombre AS producto_nombre,
    ROUND(p.precio) AS precio_redondeado
FROM 
    producto AS p;

-- 10. Truncar el precio de cada producto (sin decimales).
SELECT 
    p.nombre AS producto_nombre,
    TRUNCATE(p.precio, 0) AS precio_truncado
FROM 
    producto AS p;

-- 11. Listar identificadores de fabricante presentes en producto (sin eliminar duplicados).
SELECT 
    p.id_fabricante
FROM 
    producto AS p;

-- 12. Listar identificadores de fabricante presentes en producto (sin duplicados).
SELECT 
    DISTINCT p.id_fabricante
FROM 
    producto AS p;

-- 13. Listar nombres de fabricantes ordenados ascendente.
SELECT 
    f.nombre AS nombre_fabricante
FROM 
    fabricante AS f
ORDER BY 
    f.nombre ASC;

-- 14. Listar nombres de fabricantes ordenados descendente.
SELECT 
    f.nombre AS nombre_fabricante
FROM 
    fabricante AS f
ORDER BY 
    f.nombre DESC;

-- 15. Listar nombre y precio de productos, ordenando primero por nombre ASC y luego por precio DESC.
SELECT 
    p.nombre AS producto_nombre,
    p.precio AS precio
FROM 
    producto AS p
ORDER BY 
    p.nombre ASC,
    p.precio DESC;

-- 16. Obtener las primeras 5 filas de la tabla fabricante.
SELECT 
    *
FROM 
    fabricante AS f
LIMIT 5 OFFSET 0;

-- 17. Obtener 2 filas a partir de la cuarta fila de la tabla fabricante (incluye la fila 4).
SELECT 
    *
FROM 
    fabricante AS f
LIMIT 2 OFFSET 3;

-- 18. Nombre y precio del producto más barato (solo ORDER BY + LIMIT).
SELECT 
    p.nombre AS producto_mas_barato,
    p.precio AS precio_min
FROM 
    producto AS p
ORDER BY 
    p.precio ASC
LIMIT 1;

-- 19. Nombre y precio del producto más caro (solo ORDER BY + LIMIT).
SELECT 
    p.nombre AS producto_mas_caro,
    p.precio AS precio_max
FROM 
    producto AS p
ORDER BY 
    p.precio DESC
LIMIT 1;

-- 20. Productos cuyo id_fabricante = 2.
SELECT 
    p.nombre AS producto_nombre
FROM 
    producto AS p
WHERE 
    p.id_fabricante = 2;

-- 21. Productos con precio ≤ 120 €.
SELECT 
    p.nombre AS producto_nombre
FROM 
    producto AS p
WHERE 
    p.precio <= 120;

-- 22. Productos con precio ≥ 400 €.
SELECT 
    p.nombre AS producto_nombre
FROM 
    producto AS p
WHERE 
    p.precio >= 400;

-- 23. Productos que NO tienen precio ≥ 400 €.
SELECT 
    p.nombre AS producto_nombre
FROM 
    producto AS p
WHERE 
    NOT (p.precio >= 400);

-- 24. Productos con precio entre 80 € y 300 € (sin BETWEEN).
SELECT 
    p.nombre AS producto_nombre
FROM 
    producto AS p
WHERE 
    p.precio > 80
  AND p.precio < 300;

-- 25. Productos con precio entre 60 € y 200 € (con BETWEEN).
SELECT 
    p.nombre AS producto_nombre
FROM 
    producto AS p
WHERE 
    p.precio BETWEEN 60 AND 200;

-- 26. Productos con precio > 200 € y id_fabricante = 6.
SELECT 
    *
FROM 
    producto AS p
WHERE 
    p.precio > 200
  AND p.id_fabricante = 6;

-- 27. Productos cuyo id_fabricante sea 1, 3 o 5 (sin IN).
SELECT 
    *
FROM 
    producto AS p
WHERE 
      p.id_fabricante = 1
  OR  p.id_fabricante = 3
  OR  p.id_fabricante = 5;

-- 28. Productos cuyo id_fabricante sea 1, 3 o 5 (con IN).
SELECT 
    *
FROM 
    producto AS p
WHERE 
    p.id_fabricante IN (1, 3, 5);

-- 29. Nombre y precio en céntimos (multiplicar precio por 100).
SELECT 
    p.nombre AS producto_nombre,
    (p.precio * 100) AS precio_centimos
FROM 
    producto AS p;

-- 30. Nombres de fabricantes que empiezan por 'S'.
SELECT 
    f.nombre AS nombre_fabricante
FROM 
    fabricante AS f
WHERE 
    f.nombre LIKE 'S%';

-- 31. Nombres de fabricantes que terminan con la vocal 'e'.
SELECT 
    f.nombre AS nombre_fabricante
FROM 
    fabricante AS f
WHERE 
    f.nombre LIKE '%e';

-- 32. Nombres de fabricantes que contienen el carácter 'w'.
SELECT 
    f.nombre AS nombre_fabricante
FROM 
    fabricante AS f
WHERE 
    f.nombre LIKE '%w%';

-- 33. Nombres de fabricantes de exactamente 4 caracteres.
SELECT 
    f.nombre AS nombre_fabricante
FROM 
    fabricante AS f
WHERE 
    f.nombre LIKE '____';

-- 34. Productos que contienen 'Portátil' en el nombre.
SELECT 
    p.nombre AS producto_nombre
FROM 
    producto AS p
WHERE 
    p.nombre LIKE '%Portátil%';

-- 35. Productos que contienen 'Monitor' y precio < 215 €.
SELECT 
    p.nombre AS producto_nombre
FROM 
    producto AS p
WHERE 
    p.nombre LIKE '%Monitor%'
  AND p.precio < 215;

-- 36. Productos con precio ≥ 180 €, ordenados por precio DESC y luego por nombre ASC.
SELECT 
    p.nombre AS producto_nombre,
    p.precio AS precio
FROM 
    producto AS p
WHERE 
    p.precio >= 180
ORDER BY 
    p.precio DESC,
    p.nombre ASC;

