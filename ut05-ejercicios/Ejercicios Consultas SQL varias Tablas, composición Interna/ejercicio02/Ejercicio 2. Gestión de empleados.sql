-- 1. Devuelve un listado con los empleados y los datos de los departamentos donde trabaja cada uno.
SELECT 
    e.nombre AS empleado_nombre,
    e.apellido1 AS empleado_apellido1,
    e.apellido2 AS empleado_apellido2,
    d.nombre AS departamento_nombre,
    d.presupuesto AS departamento_presupuesto,
    d.gastos AS departamento_gastos
FROM 
    empleado AS e
JOIN 
    departamento AS d 
    ON e.id_departamento = d.id;

-- 2. Devuelve un listado con los empleados y los datos de los departamentos donde trabaja cada uno. Ordena el resultado por nombre del departamento, luego por apellidos y nombre del empleado.
SELECT 
    e.nombre AS empleado_nombre,
    e.apellido1 AS empleado_apellido1,
    e.apellido2 AS empleado_apellido2,
    d.nombre AS departamento_nombre,
    d.presupuesto AS departamento_presupuesto,
    d.gastos AS departamento_gastos
FROM 
    empleado AS e
JOIN 
    departamento AS d 
    ON e.id_departamento = d.id
ORDER BY 
    d.nombre ASC,
    e.apellido1 ASC,
    e.apellido2 ASC,
    e.nombre ASC;

-- 3. Devuelve un listado con el identificador y el nombre del departamento, solamente de aquellos departamentos que tienen empleados.
SELECT 
    DISTINCT d.id AS departamento_id,
    d.nombre AS departamento_nombre
FROM 
    departamento AS d
JOIN 
    empleado AS e 
    ON d.id = e.id_departamento;

-- 4. Devuelve un listado con el identificador, el nombre del departamento y el presupuesto actual (presupuesto - gastos) de aquellos departamentos que tienen empleados.
SELECT 
    DISTINCT d.id AS departamento_id,
    d.nombre AS departamento_nombre,
    (d.presupuesto - d.gastos) AS presupuesto_actual
FROM 
    departamento AS d
JOIN 
    empleado AS e 
    ON d.id = e.id_departamento;

-- 5. Devuelve el nombre del departamento donde trabaja el empleado que tiene el nif 38382980M.
SELECT 
    d.nombre AS departamento_nombre
FROM 
    empleado AS e
JOIN 
    departamento AS d 
    ON e.id_departamento = d.id
WHERE 
    e.nif = '38382980M';

-- 6. Devuelve el nombre del departamento donde trabaja el empleado Pepe Ruiz Santana.
SELECT 
    d.nombre AS departamento_nombre
FROM 
    empleado AS e
JOIN 
    departamento AS d 
    ON e.id_departamento = d.id
WHERE 
    e.nombre = 'Pepe'
    AND e.apellido1 = 'Ruiz'
    AND e.apellido2 = 'Santana';

-- 7. Devuelve un listado con los datos de los empleados que trabajan en el departamento de I+D. Ordena el resultado alfabéticamente por apellidos y nombre.
SELECT 
    e.nombre AS empleado_nombre,
    e.apellido1 AS empleado_apellido1,
    e.apellido2 AS empleado_apellido2,
    d.nombre AS departamento_nombre
FROM 
    empleado AS e
JOIN 
    departamento AS d 
    ON e.id_departamento = d.id
WHERE 
    d.nombre = 'I+D'
ORDER BY 
    e.apellido1 ASC,
    e.apellido2 ASC,
    e.nombre ASC;

-- 8. Devuelve un listado con los datos de los empleados que trabajan en los departamentos de Sistemas, Contabilidad o I+D. Ordena el resultado alfabéticamente por apellidos y nombre.
SELECT 
    e.nombre AS empleado_nombre,
    e.apellido1 AS empleado_apellido1,
    e.apellido2 AS empleado_apellido2,
    d.nombre AS departamento_nombre
FROM 
    empleado AS e
JOIN 
    departamento AS d 
    ON e.id_departamento = d.id
WHERE 
    d.nombre IN ('Sistemas', 'Contabilidad', 'I+D')
ORDER BY 
    e.apellido1 ASC,
    e.apellido2 ASC,
    e.nombre ASC;

-- 9. Devuelve una lista con el nombre de los empleados cuyos departamentos no tienen un presupuesto entre 100000 y 200000 euros.
SELECT 
    e.nombre AS empleado_nombre,
    e.apellido1 AS empleado_apellido1,
    e.apellido2 AS empleado_apellido2
FROM 
    empleado AS e
JOIN 
    departamento AS d 
    ON e.id_departamento = d.id
WHERE 
    d.presupuesto < 100000
    OR d.presupuesto > 200000;

-- 10. Devuelve un listado con el nombre de los departamentos donde existe algún empleado cuyo segundo apellido sea NULL. Sin repetir nombres de departamento.
SELECT 
    DISTINCT d.nombre AS departamento_nombre
FROM 
    empleado AS e
JOIN 
    departamento AS d 
    ON e.id_departamento = d.id
WHERE 
    e.apellido2 IS NULL;

