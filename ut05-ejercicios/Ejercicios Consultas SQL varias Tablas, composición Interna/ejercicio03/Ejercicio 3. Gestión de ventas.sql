-- 1. Devuelve un listado con el identificador, nombre y apellidos de todos los clientes que han realizado algún pedido. El listado debe estar ordenado alfabéticamente y eliminar duplicados.
SELECT 
    DISTINCT c.id AS cliente_id,
    c.nombre AS cliente_nombre,
    c.apellido1 AS cliente_apellido1,
    c.apellido2 AS cliente_apellido2
FROM 
    cliente AS c
JOIN 
    pedido AS p 
  ON 
    c.id = p.id_cliente
ORDER BY 
    c.nombre ASC,
    c.apellido1 ASC,
    c.apellido2 ASC;

-- 2. Devuelve un listado que muestre todos los pedidos que ha realizado cada cliente. Muestra todos los datos de los pedidos y del cliente, ordenados alfabéticamente por cliente.
SELECT 
    p.*,
    c.nombre AS cliente_nombre,
    c.apellido1 AS cliente_apellido1,
    c.apellido2 AS cliente_apellido2
FROM 
    pedido AS p
JOIN 
    cliente AS c 
  ON 
    p.id_cliente = c.id
ORDER BY 
    c.nombre ASC,
    c.apellido1 ASC,
    c.apellido2 ASC;

-- 3. Devuelve un listado que muestre todos los pedidos en los que ha participado un comercial. Muestra todos los datos de los pedidos y del comercial, ordenados alfabéticamente por comercial.
SELECT 
    p.*,
    co.nombre AS comercial_nombre,
    co.apellido1 AS comercial_apellido1,
    co.apellido2 AS comercial_apellido2
FROM 
    pedido AS p
JOIN 
    comercial AS co 
  ON 
    p.id_comercial = co.id
ORDER BY 
    co.nombre ASC,
    co.apellido1 ASC,
    co.apellido2 ASC;

-- 4. Devuelve un listado que muestre todos los clientes, con todos los pedidos que han realizado y con los datos de los comerciales asociados a cada pedido.
SELECT 
    c.nombre AS cliente_nombre,
    c.apellido1 AS cliente_apellido1,
    c.apellido2 AS cliente_apellido2,
    p.id AS pedido_id,
    p.total AS pedido_total,
    p.fecha AS pedido_fecha,
    co.nombre AS comercial_nombre,
    co.apellido1 AS comercial_apellido1,
    co.apellido2 AS comercial_apellido2
FROM 
    cliente AS c
JOIN 
    pedido AS p 
  ON 
    c.id = p.id_cliente
JOIN 
    comercial AS co 
  ON 
    p.id_comercial = co.id
ORDER BY 
    c.nombre ASC,
    c.apellido1 ASC,
    c.apellido2 ASC;

-- 5. Devuelve un listado de todos los clientes que realizaron un pedido durante el año 2017, cuya cantidad esté entre 300 € y 1000 €.
SELECT 
    DISTINCT c.nombre AS cliente_nombre,
    c.apellido1 AS cliente_apellido1,
    c.apellido2 AS cliente_apellido2
FROM 
    cliente AS c
JOIN 
    pedido AS p 
  ON 
    c.id = p.id_cliente
WHERE 
      p.total BETWEEN 300 AND 1000
  AND YEAR(p.fecha) = 2017;

-- 6. Devuelve el nombre y apellidos de todos los comerciales que han participado en algún pedido realizado por María Santana Moreno.
SELECT 
    DISTINCT co.nombre AS comercial_nombre,
    co.apellido1 AS comercial_apellido1,
    co.apellido2 AS comercial_apellido2
FROM 
    comercial AS co
JOIN 
    pedido AS p 
  ON 
    co.id = p.id_comercial
JOIN 
    cliente AS c 
  ON 
    p.id_cliente = c.id
WHERE 
      c.nombre = 'María'
  AND c.apellido1 = 'Santana'
  AND c.apellido2 = 'Moreno';

-- 7. Devuelve el nombre de todos los clientes que han realizado algún pedido con el comercial Daniel Sáez Vega.
SELECT 
    DISTINCT c.nombre AS cliente_nombre,
    c.apellido1 AS cliente_apellido1,
    c.apellido2 AS cliente_apellido2
FROM 
    cliente AS c
JOIN 
    pedido AS p 
  ON 
    c.id = p.id_cliente
JOIN 
    comercial AS co 
  ON 
    p.id_comercial = co.id
WHERE 
      co.nombre = 'Daniel'
  AND co.apellido1 = 'Sáez'
  AND co.apellido2 = 'Vega';

