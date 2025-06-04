-- 1. Devuelve una lista con el nombre del producto, precio y nombre de fabricante de todos los productos de la base de datos.
SELECT 
  p.nombre AS nombre_producto,
  p.precio AS precio,
  f.nombre AS nombre_fabricante
FROM 
  producto AS p
JOIN 
  fabricante AS f 
  ON p.id_fabricante = f.id;

-- 2. Devuelve una lista con el nombre del producto, precio y nombre de fabricante de todos los productos de la base de datos. Ordene el resultado por el nombre del fabricante, por orden alfabético.
SELECT 
  p.nombre AS nombre_producto,
  p.precio AS precio,
  f.nombre AS nombre_fabricante
FROM 
  producto AS p
JOIN 
  fabricante AS f 
  ON p.id_fabricante = f.id
ORDER BY 
  f.nombre ASC;

-- 3. Devuelve una lista con el identificador del producto, nombre del producto, identificador del fabricante y nombre del fabricante, de todos los productos de la base de datos.
SELECT 
  p.id AS id_producto,
  p.nombre AS nombre_producto,
  p.id_fabricante AS id_fabricante,
  f.nombre AS nombre_fabricante
FROM 
  producto AS p
JOIN 
  fabricante AS f 
  ON p.id_fabricante = f.id;

-- 4. Devuelve el nombre del producto, su precio y el nombre de su fabricante, del producto más barato.
SELECT 
  p.nombre AS nombre_producto,
  p.precio AS precio,
  f.nombre AS nombre_fabricante
FROM 
  producto AS p
JOIN 
  fabricante AS f 
  ON p.id_fabricante = f.id
ORDER BY 
  p.precio ASC
LIMIT 1;

-- 5. Devuelve el nombre del producto, su precio y el nombre de su fabricante, del producto más caro.
SELECT 
  p.nombre AS nombre_producto,
  p.precio AS precio,
  f.nombre AS nombre_fabricante
FROM 
  producto AS p
JOIN 
  fabricante AS f 
  ON p.id_fabricante = f.id
ORDER BY 
  p.precio DESC
LIMIT 1;

-- 6. Devuelve una lista de todos los productos del fabricante Lenovo.
SELECT 
  p.*
FROM 
  producto AS p
JOIN 
  fabricante AS f 
  ON p.id_fabricante = f.id
WHERE 
  f.nombre = 'Lenovo';

-- 7. Devuelve una lista de todos los productos del fabricante Crucial que tengan un precio mayor que 200€.
SELECT 
  p.*
FROM 
  producto AS p
JOIN 
  fabricante AS f 
  ON p.id_fabricante = f.id
WHERE 
  f.nombre = 'Crucial'
  AND p.precio > 200;

-- 8. Devuelve un listado con todos los productos de los fabricantes Asus, Hewlett-Packardy y Seagate. Sin utilizar el operador IN.
SELECT 
  p.*
FROM 
  producto AS p
JOIN 
  fabricante AS f 
  ON p.id_fabricante = f.id
WHERE 
  f.nombre = 'Asus'
  OR f.nombre = 'Hewlett-Packardy'
  OR f.nombre = 'Seagate';

-- 9. Devuelve un listado con todos los productos de los fabricantes Asus, Hewlett-Packardy y Seagate. Utilizando el operador IN.
SELECT 
  p.*
FROM 
  producto AS p
JOIN 
  fabricante AS f 
  ON p.id_fabricante = f.id
WHERE 
  f.nombre IN ('Asus', 'Hewlett-Packardy', 'Seagate');

-- 10. Devuelve un listado con el nombre y el precio de todos los productos de los fabricantes cuyo nombre termine por la vocal e.
SELECT 
  p.nombre AS nombre_producto,
  p.precio AS precio
FROM 
  producto AS p
JOIN 
  fabricante AS f 
  ON p.id_fabricante = f.id
WHERE 
  f.nombre LIKE '%e';

-- 11. Devuelve un listado con el nombre y el precio de todos los productos cuyo nombre de fabricante contenga el carácter w en su nombre.
SELECT 
  p.nombre AS nombre_producto,
  p.precio AS precio
FROM 
  producto AS p
JOIN 
  fabricante AS f 
  ON p.id_fabricante = f.id
WHERE 
  f.nombre LIKE '%w%';

-- 12. Devuelve un listado con el nombre de producto, precio y nombre de fabricante, de todos los productos que tengan un precio mayor o igual a 180€. Ordene el resultado en primer lugar por el precio (en orden descendente) y en segundo lugar por el nombre (en orden ascendente).
SELECT 
  p.nombre AS nombre_producto,
  p.precio AS precio,
  f.nombre AS nombre_fabricante
FROM 
  producto AS p
JOIN 
  fabricante AS f 
  ON p.id_fabricante = f.id
WHERE 
  p.precio >= 180
ORDER BY 
  p.precio DESC,
  p.nombre ASC;

-- 13. Devuelve un listado con el identificador y el nombre de fabricante, solamente de aquellos fabricantes que tienen productos asociados en la base de datos.
SELECT 
  DISTINCT f.id AS id_fabricante,
  f.nombre AS nombre_fabricante
FROM 
  fabricante AS f
JOIN 
  producto AS p 
  ON f.id = p.id_fabricante;

