-- 1. Listar el primer apellido de todos los empleados.
SELECT 
    e.apellido1 AS primer_apellido
FROM 
    empleado AS e;

-- 2. Listar el primer apellido de los empleados eliminando duplicados.
SELECT 
    DISTINCT e.apellido1 AS primer_apellido_unico
FROM 
    empleado AS e;

-- 3. Listar todas las columnas de la tabla empleado.
SELECT 
    *
FROM 
    empleado AS e;

-- 4. Listar el nombre y los apellidos de todos los empleados.
SELECT 
    e.nombre AS nombre,
    e.apellido1 AS apellido1,
    e.apellido2 AS apellido2
FROM 
    empleado AS e;

-- 5. Listar el identificador de los departamentos de los empleados que aparecen en la tabla empleado.
SELECT 
    e.id_departamento AS departamento_id
FROM 
    empleado AS e;

-- 6. Listar el identificador de los departamentos de los empleados, eliminando duplicados.
SELECT 
    DISTINCT e.id_departamento AS departamento_id_unico
FROM 
    empleado AS e;

-- 7. Listar el nombre completo de los empleados (nombre + apellidos) en una única columna.
SELECT 
    CONCAT_WS(' ', e.nombre, e.apellido1, e.apellido2) AS nombre_completo
FROM 
    empleado AS e;

-- 8. Listar el nombre completo en mayúsculas.
SELECT 
    UPPER(CONCAT_WS(' ', e.nombre, e.apellido1, e.apellido2)) AS nombre_completo_mayus
FROM 
    empleado AS e;

-- 9. Listar el nombre completo en minúsculas.
SELECT 
    LOWER(CONCAT_WS(' ', e.nombre, e.apellido1, e.apellido2)) AS nombre_completo_minus
FROM 
    empleado AS e;

-- 10. Listar el identificador de empleados y desglosar el NIF en dígitos y letra.
SELECT 
    e.id AS empleado_id,
    SUBSTR(e.nif, 1, 8) AS dig_nif,
    SUBSTR(e.nif, -1) AS let_nif
FROM 
    empleado AS e;

-- 11. Listar nombre de cada departamento y el presupuesto actual (presupuesto - gastos).
SELECT 
    d.nombre AS departamento_nombre,
    (d.presupuesto - d.gastos) AS presupuesto_actual
FROM 
    departamento AS d;

-- 12. Listar nombre y presupuesto actual, ordenado ascendente por presupuesto actual.
SELECT 
    d.nombre AS departamento_nombre,
    (d.presupuesto - d.gastos) AS presupuesto_actual
FROM 
    departamento AS d
ORDER BY 
    presupuesto_actual ASC;

-- 13. Listar nombres de todos los departamentos ordenados ascendente.
SELECT 
    d.nombre AS departamento_nombre
FROM 
    departamento AS d
ORDER BY 
    d.nombre ASC;

-- 14. Listar nombres de todos los departamentos ordenados descendente.
SELECT 
    d.nombre AS departamento_nombre
FROM 
    departamento AS d
ORDER BY 
    d.nombre DESC;

-- 15. Listar apellidos y nombre de todos los empleados, ordenado por apellido1 ASC y luego nombre ASC.
SELECT 
    e.apellido1 AS primer_apellido,
    e.apellido2 AS segundo_apellido,
    e.nombre AS nombre
FROM 
    empleado AS e
ORDER BY 
    e.apellido1 ASC,
    e.nombre ASC;

-- 16. Nombre y presupuesto de los 3 departamentos con mayor presupuesto.
SELECT 
    d.nombre AS departamento_nombre,
    d.presupuesto AS presupuesto
FROM 
    departamento AS d
ORDER BY 
    d.presupuesto DESC
LIMIT 3;

-- 17. Nombre y presupuesto de los 3 departamentos con menor presupuesto.
SELECT 
    d.nombre AS departamento_nombre,
    d.presupuesto AS presupuesto
FROM 
    departamento AS d
ORDER BY 
    d.presupuesto ASC
LIMIT 3;

-- 18. Nombre y gastos de los 2 departamentos con mayor gasto.
SELECT 
    d.nombre AS departamento_nombre,
    d.gastos AS gastos
FROM 
    departamento AS d
ORDER BY 
    d.gastos DESC
LIMIT 2;

-- 19. Nombre y gastos de los 2 departamentos con menor gasto.
SELECT 
    d.nombre AS departamento_nombre,
    d.gastos AS gastos
FROM 
    departamento AS d
ORDER BY 
    d.gastos ASC
LIMIT 2;

-- 20. Obtener 5 filas a partir de la tercera fila de la tabla empleado (incluye fila 3).
SELECT 
    *
FROM 
    empleado AS e
LIMIT 5 OFFSET 2;

-- 21. Nombre y presupuesto de los departamentos con presupuesto ≥ 150000 €.
SELECT 
    d.nombre AS departamento_nombre,
    d.presupuesto AS presupuesto
FROM 
    departamento AS d
WHERE 
    d.presupuesto >= 150000;

-- 22. Nombre y gastos de los departamentos con gastos < 5000 €.
SELECT 
    d.nombre AS departamento_nombre,
    d.gastos AS gastos
FROM 
    departamento AS d
WHERE 
    d.gastos < 5000;

-- 23. Nombre y presupuesto de los departamentos con presupuesto entre 100000 y 200000 € (sin BETWEEN).
SELECT 
    d.nombre AS departamento_nombre,
    d.presupuesto AS presupuesto
FROM 
    departamento AS d
WHERE 
      d.presupuesto > 100000
  AND d.presupuesto < 200000;

-- 24. Nombre y presupuesto de los departamentos que NO tienen presupuesto entre 100000 y 200000 € (sin BETWEEN).
SELECT 
    d.nombre AS departamento_nombre,
    d.presupuesto AS presupuesto
FROM 
    departamento AS d
WHERE 
    NOT (d.presupuesto > 100000 AND d.presupuesto < 200000);

-- 25. Nombre y presupuesto de los departamentos con presupuesto entre 100000 y 200000 € (con BETWEEN).
SELECT 
    d.nombre AS departamento_nombre,
    d.presupuesto AS presupuesto
FROM 
    departamento AS d
WHERE 
    d.presupuesto BETWEEN 100000 AND 200000;

-- 26. Nombre y presupuesto de los departamentos que NO tienen presupuesto entre 100000 y 200000 € (con BETWEEN).
SELECT 
    d.nombre AS departamento_nombre,
    d.presupuesto AS presupuesto
FROM 
    departamento AS d
WHERE 
    d.presupuesto NOT BETWEEN 100000 AND 200000;

-- 27. Nombre, gastos y presupuesto de los departamentos donde gastos > presupuesto.
SELECT 
    d.nombre AS departamento_nombre,
    d.gastos AS gastos,
    d.presupuesto AS presupuesto
FROM 
    departamento AS d
WHERE 
    d.gastos > d.presupuesto;

-- 28. Nombre, gastos y presupuesto de los departamentos donde gastos < presupuesto.
SELECT 
    d.nombre AS departamento_nombre,
    d.gastos AS gastos,
    d.presupuesto AS presupuesto
FROM 
    departamento AS d
WHERE 
    d.gastos < d.presupuesto;

-- 29. Nombre, gastos y presupuesto de los departamentos donde gastos = presupuesto.
SELECT 
    d.nombre AS departamento_nombre,
    d.gastos AS gastos,
    d.presupuesto AS presupuesto
FROM 
    departamento AS d
WHERE 
    d.gastos = d.presupuesto;

-- 30. Listar todos los datos de los empleados cuyo segundo apellido sea NULL.
SELECT 
    *
FROM 
    empleado AS e
WHERE 
    e.apellido2 IS NULL;

-- 31. Listar todos los datos de los empleados cuyo segundo apellido NO sea NULL.
SELECT 
    *
FROM 
    empleado AS e
WHERE 
    e.apellido2 IS NOT NULL;

-- 32. Listar todos los datos de los empleados cuyo segundo apellido sea 'López'.
SELECT 
    *
FROM 
    empleado AS e
WHERE 
    e.apellido2 = 'López';

-- 33. Listar todos los datos de los empleados cuyo segundo apellido sea 'Díaz' o 'Moreno' (sin IN).
SELECT 
    *
FROM 
    empleado AS e
WHERE 
      e.apellido2 = 'Díaz'
  OR  e.apellido2 = 'Moreno';

-- 34. Listar todos los datos de los empleados cuyo segundo apellido sea 'Díaz' o 'Moreno' (con IN).
SELECT 
    *
FROM 
    empleado AS e
WHERE 
    e.apellido2 IN ('Díaz', 'Moreno');

-- 35. Listar nombre, apellidos y NIF de los empleados que trabajan en el departamento 3.
SELECT 
    e.nombre AS nombre,
    e.apellido1 AS apellido1,
    e.apellido2 AS apellido2,
    e.nif AS nif
FROM 
    empleado AS e
WHERE 
    e.id_departamento = 3;

-- 36. Listar nombre, apellidos y NIF de los empleados que trabajan en los departamentos 2, 4 o 5.
SELECT 
    e.nombre AS nombre,
    e.apellido1 AS apellido1,
    e.apellido2 AS apellido2,
    e.nif AS nif
FROM 
    empleado AS e
WHERE 
    e.id_departamento IN (2, 4, 5);

