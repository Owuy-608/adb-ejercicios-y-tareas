-- 1. Devuelve un listado con el nombre del cliente y el nombre y primer apellido de su representante de ventas.
SELECT 
    c.nombre_cliente AS cliente_nombre,
    e.nombre          AS rep_nombre,
    e.apellido1       AS rep_apellido1
FROM 
    cliente AS c
JOIN 
    empleado AS e 
  ON 
    c.codigo_empleado_rep_ventas = e.codigo_empleado;

-- 2. Muestra el nombre de los clientes que hayan realizado pagos junto con el nombre de sus representantes de ventas.
SELECT 
    DISTINCT c.nombre_cliente AS cliente_nombre,
             e.nombre          AS rep_nombre,
             e.apellido1       AS rep_apellido1
FROM 
    cliente AS c
JOIN 
    pago AS p 
  ON 
    c.codigo_cliente = p.codigo_cliente
JOIN 
    empleado AS e 
  ON 
    c.codigo_empleado_rep_ventas = e.codigo_empleado;

-- 3. Muestra el nombre de los clientes que no hayan realizado pagos junto con el nombre de sus representantes de ventas.
SELECT 
    c.nombre_cliente AS cliente_nombre,
    e.nombre          AS rep_nombre,
    e.apellido1       AS rep_apellido1
FROM 
    cliente AS c
JOIN 
    empleado AS e 
  ON 
    c.codigo_empleado_rep_ventas = e.codigo_empleado
LEFT JOIN 
    pago AS p 
  ON 
    c.codigo_cliente = p.codigo_cliente
WHERE 
    p.codigo_cliente IS NULL;

-- 4. Devuelve el nombre de los clientes que han hecho pagos y el nombre de sus representantes junto con la ciudad de la oficina a la que pertenece el representante.
SELECT 
    DISTINCT c.nombre_cliente AS cliente_nombre,
             e.nombre          AS rep_nombre,
             e.apellido1       AS rep_apellido1,
             o.ciudad          AS oficina_ciudad
FROM 
    cliente AS c
JOIN 
    pago AS p 
  ON 
    c.codigo_cliente = p.codigo_cliente
JOIN 
    empleado AS e 
  ON 
    c.codigo_empleado_rep_ventas = e.codigo_empleado
JOIN 
    oficina AS o 
  ON 
    e.codigo_oficina = o.codigo_oficina;

-- 5. Devuelve el nombre de los clientes que no hayan hecho pagos y el nombre de sus representantes 
--    junto con la ciudad de la oficina a la que pertenece el representante.
SELECT 
    c.nombre_cliente AS cliente_nombre,
    e.nombre          AS rep_nombre,
    e.apellido1       AS rep_apellido1,
    o.ciudad          AS oficina_ciudad
FROM 
    cliente AS c
JOIN 
    empleado AS e 
  ON 
    c.codigo_empleado_rep_ventas = e.codigo_empleado
JOIN 
    oficina AS o 
  ON 
    e.codigo_oficina = o.codigo_oficina
LEFT JOIN 
    pago AS p 
  ON 
    c.codigo_cliente = p.codigo_cliente
WHERE 
    p.codigo_cliente IS NULL;

-- 6. Lista la dirección de las oficinas que tengan clientes en Fuenlabrada.
SELECT 
    DISTINCT o.linea_direccion1 AS direccion_linea1,
             o.linea_direccion2 AS direccion_linea2
FROM 
    oficina AS o
JOIN 
    empleado AS e 
  ON 
    o.codigo_oficina = e.codigo_oficina
JOIN 
    cliente AS c 
  ON 
    e.codigo_empleado = c.codigo_empleado_rep_ventas
WHERE 
    c.ciudad = 'Fuenlabrada';

-- 7. Devuelve el nombre de los clientes y el nombre de sus representantes junto con la ciudad de la oficina.
SELECT 
    c.nombre_cliente AS cliente_nombre,
    e.nombre          AS rep_nombre,
    e.apellido1       AS rep_apellido1,
    o.ciudad          AS oficina_ciudad
FROM 
    cliente AS c
JOIN 
    empleado AS e 
  ON 
    c.codigo_empleado_rep_ventas = e.codigo_empleado
JOIN 
    oficina AS o 
  ON 
    e.codigo_oficina = o.codigo_oficina;

-- 8. Devuelve un listado con el nombre de los empleados junto con el nombre de sus jefes.
SELECT 
    e.nombre AS empleado_nombre,
    e.apellido1 AS empleado_apellido1,
    j.nombre AS jefe_nombre,
    j.apellido1 AS jefe_apellido1
FROM 
    empleado AS e
JOIN 
    empleado AS j 
  ON 
    e.codigo_jefe = j.codigo_empleado;

-- 9. Devuelve un listado que muestre el nombre de cada empleado, el nombre de su jefe y el nombre del jefe de su jefe.
SELECT 
    e.nombre       AS empleado_nombre,
    e.apellido1    AS empleado_apellido1,
    j.nombre       AS jefe_nombre,
    j.apellido1    AS jefe_apellido1,
    jj.nombre      AS jefe_jefe_nombre,
    jj.apellido1   AS jefe_jefe_apellido1
FROM 
    empleado AS e
JOIN 
    empleado AS j 
  ON 
    e.codigo_jefe = j.codigo_empleado
JOIN 
    empleado AS jj 
  ON 
    j.codigo_jefe = jj.codigo_empleado;

-- 10. Devuelve el nombre de los clientes a los que no se les ha entregado a tiempo un pedido.
SELECT 
    DISTINCT c.nombre_cliente AS cliente_nombre
FROM 
    cliente AS c
JOIN 
    pedido AS p 
  ON 
    c.codigo_cliente = p.codigo_cliente
WHERE 
    p.fecha_entrega > p.fecha_esperada;

-- 11. Devuelve un listado de las diferentes gamas de producto que ha comprado cada cliente.
SELECT 
    DISTINCT c.nombre_cliente AS cliente_nombre,
             pr.gama           AS gama_producto
FROM 
    cliente AS c
JOIN 
    pedido AS p 
  ON 
    c.codigo_cliente = p.codigo_cliente
JOIN 
    detalle_pedido AS dp 
  ON 
    p.codigo_pedido = dp.codigo_pedido
JOIN 
    producto AS pr 
  ON 
    dp.codigo_producto = pr.codigo_producto;

