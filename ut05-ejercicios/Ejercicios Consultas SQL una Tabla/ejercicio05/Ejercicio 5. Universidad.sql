-- 1. Devuelve un listado con el primer apellido, segundo apellido y el nombre de todos los alumnos. El listado deberá estar ordenado alfabéticamente de menor a mayor por el primer apellido, segundo apellido y nombre.
SELECT 
    p.apellido1 AS primer_apellido,
    p.apellido2 AS segundo_apellido,
    p.nombre AS nombre
FROM 
    persona AS p
WHERE 
    p.tipo = 'alumno'
ORDER BY 
    p.apellido1 ASC,
    p.apellido2 ASC,
    p.nombre ASC;

-- 2. Averigua el nombre y los dos apellidos de los alumnos que no han dado de alta su número de teléfono en la base de datos.
SELECT 
    p.apellido1 AS primer_apellido,
    p.apellido2 AS segundo_apellido,
    p.nombre AS nombre
FROM 
    persona AS p
WHERE 
    p.tipo = 'alumno'
    AND p.telefono IS NULL;

-- 3. Devuelve el listado de los alumnos que nacieron en 1999.
SELECT 
    *
FROM 
    persona AS p
WHERE 
    p.tipo = 'alumno'
    AND YEAR(p.fecha_nacimiento) = 1999;

-- 4. Devuelve el listado de profesores que no han dado de alta su número de teléfono en la base de datos y además su nif termina en K.
SELECT 
    *
FROM 
    persona AS p
WHERE 
    p.tipo = 'profesor'
    AND p.telefono IS NULL
    AND p.nif LIKE '%K';

-- 5. Devuelve el listado de las asignaturas que se imparten en el primer cuatrimestre, en el tercer curso del grado que tiene el identificador 7.
SELECT 
    *
FROM 
    asignatura AS a
WHERE 
    a.cuatrimestre = 1
    AND a.curso = 3
    AND a.id_grado = 7;

-- 6. Lista los nombres de todos los alumnos.
SELECT 
    p.nombre AS nombre
FROM 
    persona AS p
WHERE 
    p.tipo = 'alumno';

-- 7. Lista los alumnos que viven en 'Madrid'.
SELECT 
    *
FROM 
    persona AS p
WHERE 
    p.tipo = 'alumno'
    AND p.ciudad = 'Madrid';

-- 8. Lista los alumnos cuya ciudad comience por 'S'.
SELECT 
    *
FROM 
    persona AS p
WHERE 
    p.tipo = 'alumno'
    AND p.ciudad LIKE 'S%';

-- 9. Lista los alumnos que no viven en 'Madrid'.
SELECT 
    *
FROM 
    persona AS p
WHERE 
    p.tipo = 'alumno'
    AND p.ciudad != 'Madrid';

-- 10. Muestra cuántos alumnos hay en total.
SELECT 
    COUNT(*) AS total_alumnos
FROM 
    persona AS p
WHERE 
    p.tipo = 'alumno';

-- 11. Muestra cuántas ciudades diferentes hay entre los alumnos.
SELECT 
    COUNT(DISTINCT p.ciudad) AS num_ciudades
FROM 
    persona AS p
WHERE 
    p.tipo = 'alumno';

-- 12. Muestra los nombres y ciudades de los alumnos ordenados alfabéticamente por ciudad.
SELECT 
    p.nombre AS nombre,
    p.ciudad AS ciudad
FROM 
    persona AS p
WHERE 
    p.tipo = 'alumno'
ORDER BY 
    p.ciudad ASC;

-- 13. Muestra el número de alumnos por ciudad.
SELECT 
    p.ciudad AS ciudad,
    COUNT(*) AS num_alumnos
FROM 
    persona AS p
WHERE 
    p.tipo = 'alumno'
GROUP BY 
    p.ciudad;

-- 14. Muestra los alumnos cuyo nombre contenga la letra 'a'.
SELECT 
    *
FROM 
    persona AS p
WHERE 
    p.tipo = 'alumno'
    AND p.nombre LIKE '%a%';

-- 15. Muestra los alumnos cuya ciudad tenga exactamente 5 caracteres.
SELECT 
    *
FROM 
    persona AS p
WHERE 
    p.tipo = 'alumno'
    AND p.ciudad LIKE '_____';

-- 16. Lista el nombre de todos los profesores.
SELECT 
    p.nombre AS nombre
FROM 
    persona AS p
WHERE 
    p.tipo = 'profesor';

-- 17. Muestra los profesores que pertenecen al departamento 1.
SELECT 
    pr.*,
    d.nombre AS nombre_departamento
FROM 
    profesor AS pr
JOIN 
    departamento AS d
  ON pr.id_departamento = d.id
WHERE 
    d.id = 1;

-- 18. Muestra los profesores cuyo nombre empiece por 'M'.
SELECT 
    p.nombre AS nombre
FROM 
    persona AS p
WHERE 
    p.tipo = 'profesor'
    AND p.nombre LIKE 'M%';

-- 19. Muestra cuántos profesores hay por cada departamento.
SELECT 
    pr.id_departamento AS departamento_id,
    COUNT(*) AS num_profesores
FROM 
    profesor AS pr
GROUP BY 
    pr.id_departamento;

-- 20. Muestra el nombre del profesor que tiene el código más alto.
SELECT 
    p.nombre AS nombre
FROM 
    persona AS p
WHERE 
    p.tipo = 'profesor'
ORDER BY 
    p.id DESC
LIMIT 1;

-- 21. Muestra cuántos profesores hay en total.
SELECT 
    COUNT(*) AS total_profesores
FROM 
    profesor AS pr;

-- 22. Muestra los códigos de departamento distintos de los profesores.
SELECT 
    DISTINCT pr.id_departamento AS departamento_id
FROM 
    profesor AS pr;

-- 23. Muestra el nombre de todas las asignaturas de 1er curso.
SELECT 
    a.nombre AS nombre_asignatura
FROM 
    asignatura AS a
WHERE 
    a.curso = 1;

-- 24. Muestra las asignaturas del primer cuatrimestre.
SELECT 
    *
FROM 
    asignatura AS a
WHERE 
    a.cuatrimestre = 1;

-- 25. Muestra las asignaturas que tengan más de 6 créditos.
SELECT 
    *
FROM 
    asignatura AS a
WHERE 
    a.creditos > 6;

-- 26. Muestra cuántas asignaturas hay por cada curso.
SELECT 
    a.curso AS curso,
    COUNT(*) AS num_asignaturas
FROM 
    asignatura AS a
GROUP BY 
    a.curso;

-- 27. Muestra las asignaturas ordenadas por número de créditos (descendente).
SELECT 
    *
FROM 
    asignatura AS a
ORDER BY 
    a.creditos DESC;

-- 28. Muestra los nombres de asignaturas que tengan la palabra 'Programación'.
SELECT 
    a.nombre AS nombre_asignatura
FROM 
    asignatura AS a
WHERE 
    a.nombre LIKE '%Programación%';

-- 29. Muestra cuántas asignaturas hay en total.
SELECT 
    COUNT(*) AS total_asignaturas
FROM 
    asignatura AS a;

-- 30. Muestra cuántas matrículas hay registradas.
SELECT 
    COUNT(*) AS total_matriculas
FROM 
    alumno_se_matricula_asignatura AS m;

