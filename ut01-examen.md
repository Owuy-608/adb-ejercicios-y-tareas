# Sistemas de Almacenamiento de la Información

## Ficheros

Los __ficheros__ son la forma más básica de almacenamiento de datos en un sistema informático. Existen diferentes tipos de ficheros según su estructura y la forma en que gestionan el acceso a la información:

### Ficheros Planos 

Son archivos simples donde los datos se almacenan en texto plano, sin ningún tipo de formato estructurado. Los datos se organizan en líneas, separadas por delimitadores (como comas en un archivo CSV). Se utilizan para almacenar configuraciones simples, logs de sistemas, o pequeños conjuntos de datos.

Ventajas:

* _Simplicidad y facilidad de uso_: los ficheros planos son fáciles de crear y utilizar. No requieren software especializado ni estructuras complejas para gestionar los datos. Pueden ser creados y editados con cualquier editor de texto básico, como Bloc de Notas, Notepad, Vim, o incluso aplicaciones de hojas de cálculo como Excel para  archivos CSV.
* _Compatibilidad y Portabilidad_: los ficheros planos son altamente portables entre diferentes sistemas operativos y plataformas. Se pueden transferir fácilmente entre sistemas Windows, Linux, MacOS y otros. No requieren drivers específicos ni software adicional para ser leídos en distintas plataformas.
* _Portabilidad_: pueden ser abiertos en cualquier sistema.
* _Bajo Consumo de recursos_: consumen pocos recursos del sistema, ya que no necesitan procesos adicionales de indexación, gestión de transacciones o bloqueo de registros. Adecuados para dispositivos de bajos recursos o sistemas embebidos.
* _Transparencia de los datos_: los datos se almacenan de forma legible. No hay necesidad de herramientas complejas para entender los datos, lo que es útil para tareas de verificación rápida.
* _Flexibilidad en el formato de datos_: no están sujetos a esquemas rígidos, lo que permite almacenar cualquier tipo de información en formato libre. Permiten añadir nuevos registros sin necesidad de alterar estructuras predefinidas.
* _Facilidad para automatización_: pueden ser fácilmente manipulados mediante scripts en lenguajes como Python, Bash o PowerShell, lo que facilita tareas automatizadas de lectura y escritura.

Desventajas:

* _Falta de estructura y relaciones_: no soportan estructuras complejas, como tablas relacionadas, claves primarias o ajenas, lo que limita su uso a casos muy básicos. Los datos suelen ser redundantes y difíciles de relacionar, lo que provoca inconsistencias.
* _Escalabilidad y rendimiento_: a medida que el tamaño del archivo crece, el rendimiento disminuye significativamente, ya que no existen mecanismos de indexación o búsqueda rápida. La lectura y escritura de grandes volúmenes de datos pueden volverse lentas, especialmente cuando se buscan registros específicos.
* _Seguridad y control de acceso_: carecen de mecanismos integrados para la gestión de permisos de acceso. Cualquiera que tenga acceso al archivo puede modificarlo. No ofrecen encriptación de datos de manera nativa, exponiendo la información a posibles accesos no autorizados.
* _Falta de integridad y control de errores_: no garantizan la integridad de los datos. No existen restricciones como las de una base de datos relacional (restricciones de tipo de datos, reglas de validación). La modificación manual de los datos puede llevar a errores fácilmente, como duplicados o registros mal formateados.
* _Dificultad en el mantenimiento_: a medida que los archivos crecen, se vuelve difícil mantener y organizar la información de manera coherente. El mantenimiento y limpieza de los datos, como la eliminación de duplicados o la corrección de errores, suele requerir procesos manuales o scripts adicionales.
* _Sin soporte para transacciones_: no pueden manejar operaciones transaccionales (conjunto de operaciones que deben completarse todas o ninguna), lo que puede llevar a estados inconsistentes si ocurre un error durante la modificación. No hay soporte para rollback (deshacer cambios) en caso de errores, lo que puede ser crítico en aplicaciones más sensibles.
* _Sin herramientas nativas para consultas complejas_: las consultas complejas requieren procesamiento manual o la creación de programas específicos, ya que no se puede realizar filtrado, agrupamiento o ordenamiento de forma eficiente sin leer el archivo completo. La ausencia de lenguajes de consulta estructurados como SQL dificulta la extracción de datos específicos.

Ejemplos de formatos de archivos planos: archivos _.txt_, _.csv_, _.log_.

Supongamos que los datos a almacenar son los siguientes:

| ID | Nombre          | Correo                   | Fecha de Registro |
|----|-----------------|--------------------------|-------------------|
| 1  | Juan Pérez      | juan.perez@mail.com      | 2024-09-15        |
| 2  | María García    | maria.garcia@mail.com    | 2024-09-16        |
| 3  | Carlos Sánchez  | carlos.sanchez@mail.com  | 2024-09-17        |
| 4  | Ana López       | ana.lopez@mail.com       | 2024-09-18        |
| 5  | Luis Fernández  | luis.fernandez@mail.com  | 2024-09-19        |

__Archivo .txt__

El archivo de texto plano simplemente presenta los datos en un formato legible, separados por un tabulador, espacios o cualquier otro separador básico.

Contenido del archivo _clientes.txt_:

```
ID: 1  Nombre: Juan Pérez     Correo: juan.perez@mail.com     Fecha de Registro: 2024-09-15
ID: 2  Nombre: María García   Correo: maria.garcia@mail.com   Fecha de Registro: 2024-09-16
ID: 3  Nombre: Carlos Sánchez Correo: carlos.sanchez@mail.com Fecha de Registro: 2024-09-17
ID: 4  Nombre: Ana López      Correo: ana.lopez@mail.com      Fecha de Registro: 2024-09-18
ID: 5  Nombre: Luis Fernández Correo: luis.fernandez@mail.com Fecha de Registro: 2024-09-19
```

__Archivo .csv__

El archivo CSV (Comma Separated Values) utiliza comas como delimitadores y es comúnmente utilizado para intercambiar datos entre diferentes programas.

Contenido del archivo _clientes.csv_:

```
ID,Nombre,Correo,Fecha de Registro
1,Juan Pérez,juan.perez@mail.com,2024-09-15
2,María García,maria.garcia@mail.com,2024-09-16
3,Carlos Sánchez,carlos.sanchez@mail.com,2024-09-17
4,Ana López,ana.lopez@mail.com,2024-09-18
5,Luis Fernández,luis.fernandez@mail.com,2024-09-19
```
__Archivo .log__

El archivo .log suele usarse para almacenar registros o eventos. Puede incluir información adicional como la hora en que se registraron los datos, y cada línea puede estar precedida por una marca de tiempo o información contextual.

Contenido del archivo _clientes.log_:

```
[2024-09-15 10:00:00] INFO: ID=1, Nombre=Juan Pérez, Correo=juan.perez@mail.com, Fecha de Registro=2024-09-15
[2024-09-16 11:30:00] INFO: ID=2, Nombre=María García, Correo=maria.garcia@mail.com, Fecha de Registro=2024-09-16
[2024-09-17 09:45:00] INFO: ID=3, Nombre=Carlos Sánchez, Correo=carlos.sanchez@mail.com, Fecha de Registro=2024-09-17
[2024-09-18 15:15:00] INFO: ID=4, Nombre=Ana López, Correo=ana.lopez@mail.com, Fecha de Registro=2024-09-18
[2024-09-19 19:25:00] INFO: ID=5, Nombre=Luis Fernández, Correo=luis.fernandez@mail.com, Fecha de Registro=2024-09-19
```

Ejemplo de script en Python que genera un fichero en formato CSV con los registros de la tabla de ejemplo:

```python
import csv

# Definir los datos para los 5 registros
registros = [
    {"id": 1, "nombre": "Juan Pérez", "correo": "juan.perez@mail.com", "fecha_registro": "2024-09-15"},
    {"id": 2, "nombre": "María García", "correo": "maria.garcia@mail.com", "fecha_registro": "2024-09-16"},
    {"id": 3, "nombre": "Carlos Sánchez", "correo": "carlos.sanchez@mail.com", "fecha_registro": "2024-09-17"},
    {"id": 4, "nombre": "Ana López", "correo": "ana.lopez@mail.com", "fecha_registro": "2024-09-18"},
    {"id": 5, "nombre": "Luis Fernández", "correo": "luis.fernandez@mail.com", "fecha_registro": "2024-09-19"}
]

# Variables de configuración
nombre_fichero = 'clientes.csv'  # Nombre del archivo CSV
delimitador = ','                # Especificar el caracter usado como delimitador
copiar_cabecera = False          # Establecer a True para copiar la cabecera, False en caso contrario

# Abrir y escribir en el archivo CSV
with open(nombre_fichero, mode='w', newline='', encoding='utf-8') as fichero:
    # Definir los nombres de las columnas
    campos = ['id', 'nombre', 'correo', 'fecha_registro']
    
    # Crear el objeto escritor con el delimitador especificado
    escritor = csv.DictWriter(fichero, fieldnames=campos, delimiter=delimitador)
    
    # Escribir la cabecera si se ha especificado en la variable
    if copiar_cabecera:
        escritor.writeheader()
    
    # Escribir los registros en el archivo
    for registro in registros:
        escritor.writerow(registro)

print(f"Fichero '{nombre_fichero}' creado y registros insertados correctamente.")
```

Para ejecutar el script:

```bash
$ python3 insertar_registros.py
Fichero 'clientes.csv' creado y registros insertados correctamente.

$ cat clientes.csv
id,nombre,correo,fecha_registro
1,Juan Pérez,juan.perez@mail.com,2024-09-15
2,María García,maria.garcia@mail.com,2024-09-16
3,Carlos Sánchez,carlos.sanchez@mail.com,2024-09-17
4,Ana López,ana.lopez@mail.com,2024-09-18
5,Luis Fernández,luis.fernandez@mail.com,2024-09-19
```

> __Nota__: los archivos con extensión .csv se pueden abrir con _LibreOffice Calc_.

* __.txt__: formato libre y simple, usado para almacenar datos de manera legible sin una estructura estricta. Es fácil de leer y editar manualmente.
* __.csv__: estandarizado para ser importado y exportado por muchas aplicaciones (como Excel), ideal para tablas de datos con delimitadores claros (comas).
* __.log__: usado principalmente para seguimiento de eventos o auditoría, puede incluir información adicional como timestamps o niveles de registro (INFO, ERROR).

### Ficheros Indexados

Son archivos que contienen índices que permiten la búsqueda rápida de registros. Los índices actúan como punteros que dirigen a la ubicación exacta de los datos dentro del archivo. Se utilizan en aplicaciones donde se requiere acceso rápido a registros específicos, como catálogos de productos o sistemas de contabilidad.

Ventajas:

* __Acceso rápido a los datos__: los ficheros indexados utilizan índices que actúan como "puntos de acceso" hacia los registros dentro del archivo. Esto permite localizar rápidamente un registro sin tener que leer todo el archivo de manera secuencial. Es especialmente beneficioso cuando se manejan grandes volúmenes de datos y se necesitan respuestas rápidas para consultas específicas.
* __Eficiencia en las búsquedas__: gracias a la estructura de índices, las búsquedas de registros específicos son mucho más rápidas en comparación con los ficheros planos. Esto se logra porque el índice reduce significativamente el número de lecturas necesarias para encontrar un registro. Soportan búsquedas complejas, como búsquedas por campos no secuenciales, lo cual no es posible en ficheros secuenciales tradicionales.
* __Actualización y modificación de datos más eficiente__: permiten la inserción, actualización y eliminación de registros de manera más eficiente ya que no es necesario reorganizar todo el archivo tras cada operación; solo se actualizan los índices correspondientes. Pueden mantener múltiples índices para diferentes campos, facilitando operaciones que impliquen varios criterios de búsqueda.
* __Mejora del Rendimiento General del Sistema__: al reducir el tiempo de acceso a los datos, mejoran el rendimiento de las aplicaciones que dependen de la lectura y manipulación frecuente de archivos de gran tamaño. Ideal para aplicaciones que requieren respuestas en tiempo real o semi-tiempo real, como sistemas de ventas, inventarios o control de acceso.
* __Flexibilidad en la gestión de datos__: permiten el acceso tanto secuencial como aleatorio, lo cual es útil para operaciones mixtas de lectura, donde algunas operaciones pueden beneficiarse de un acceso secuencial y otras de uno directo. Soportan múltiples tipos de organización de índices (B-trees, hash tables, etc.), que pueden  optimizarse según los patrones de acceso.
* __Reducción del consumo de recursos__: aunque gestionan índices adicionales, la eficiencia en el acceso a los datos puede reducir significativamente el tiempo de CPU y el uso de disco en comparación con accesos secuenciales completos.

Desventajas:

* __Mayor uso de espacio en disco__: los índices adicionales ocupan espacio adicional en el disco. En algunos casos, los índices pueden ser casi tan grandes como los datos originales, especialmente si se manejan índices complejos o múltiples índices sobre los mismos datos. A medida que crece la cantidad de datos, el tamaño de los índices también aumenta, lo cual puede generar problemas de almacenamiento.
* __Mantenimiento Complejo__: los índices deben actualizarse cada vez que se realiza una operación de inserción, eliminación o modificación de datos, lo cual puede añadir complejidad y tiempo adicional al mantenimiento del archivo. La reconstrucción de índices (cuando los datos cambian significativamente) puede ser un proceso costoso en términos de tiempo y recursos.
* __Posibles Problemas de consistencia__: si los índices no se gestionan correctamente, pueden quedar desactualizados o inconsistentes respecto a los datos reales, lo que podría causar errores en las búsquedas o en la recuperación de datos. La corrupción de un índice puede requerir su reconstrucción completa, lo cual puede ser un proceso largo y complejo.
* __Dificultad en la gestión de múltiples índices__: mantener varios índices sobre el mismo archivo puede incrementar la complejidad de la administración y la posibilidad de errores. Es necesario un control cuidadoso para asegurar que todos los índices se actualicen correctamente en cada operación de escritura. Decidir qué campos deben ser indexados es crucial, ya que índices innecesarios o mal diseñados pueden degradar el rendimiento en lugar de mejorarlo.
* __Rendimiento Variable en Inserciones y Eliminaciones__: las operaciones de inserción y eliminación pueden ser lentas debido a la necesidad de actualizar uno o más índices. En casos extremos, las inserciones de grandes cantidades de datos pueden provocar tiempos de espera elevados. Operaciones que afectan los índices, como reindexar o reconstruir, pueden bloquear el acceso a los datos temporalmente, impactando la disponibilidad.
* __Complejidad en la Recuperación de Fallos__: en caso de fallos del sistema o errores en el disco, no solo los datos, sino también los índices pueden verse afectados, complicando la recuperación de información. La pérdida o corrupción de un índice puede dificultar o imposibilitar el acceso a los datos hasta que se reconstruya adecuadamente.
* __Mayor complejidad en la implementación__: crear y gestionar ficheros indexados requiere una implementación más sofisticada que la de ficheros planos. Esto incluye el desarrollo de mecanismos para la actualización y reconstrucción de índices, así como para la sincronización entre los datos y los índices. Puede requerir conocimientos avanzados de algoritmos de búsqueda y estructuras de datos, lo cual puede no ser ideal en contextos donde la simplicidad es clave.

Ejemplos de archivos de índíces: Hash, B-tree B+ tree.

__Archivo Indexado con Hash__

Para este ejemplo, usaremos una función hash básica: _hash(ID) = ID % 5_, que asigna cada registro a una posición específica en el archivo, gestionando las colisiones de manera lineal.

Estructura del Archivo con Índice Hash:
Datos Almacenados (posiciones asignadas según hash):

```
Registro 0:
- Ningún registro (hash = 0 no apunta a datos directos)

Registro 1:
- ID: 1, Nombre: Juan Pérez, Correo: juan.perez@mail.com, Fecha de Registro: 2024-09-15 (hash(1) = 1)

Registro 2:
- ID: 2, Nombre: María García, Correo: maria.garcia@mail.com, Fecha de Registro: 2024-09-16 (hash(2) = 2)

Registro 3:
- ID: 3, Nombre: Carlos Sánchez, Correo: carlos.sanchez@mail.com, Fecha de Registro: 2024-09-17 (hash(3) = 3)

Registro 4:
- ID: 4, Nombre: Ana López, Correo: ana.lopez@mail.com, Fecha de Registro: 2024-09-18 (hash(4) = 4)

Registro 0 (colisión manejada):
- ID: 5, Nombre: Luis Fernández, Correo: luis.fernandez@mail.com, Fecha de Registro: 2024-09-19 (hash(5) = 0)
```

__Archivo Indexado con B-tree__

Balancea los registros para optimizar la búsqueda y modificación de datos. Los nodos tienen forma de árbol contienen claves y punteros a sus hijos.

Estructura del Archivo con Índice B-tree:

```
      [ID 3]
     /       \
(ID 1, 2) (ID 4, 5)
```

Nodo central:
* ID: 3, Nombre: Carlos Sánchez, Correo: carlos.sanchez@mail.com, Fecha de Registro: 2024-09-17

Nodo izquierdo:
* ID: 1, Nombre: Juan Pérez, Correo: juan.perez@mail.com, Fecha de Registro: 2024-09-15
* ID: 2, Nombre: María García, Correo: maria.garcia@mail.com, Fecha de Registro: 2024-09-16

Nodo derecho:
* ID: 4, Nombre: Ana López, Correo: ana.lopez@mail.com, Fecha de Registro: 2024-09-18
* ID: 5, Nombre: Luis Fernández, Correo: luis.fernandez@mail.com, Fecha de Registro: 2024-09-19

* __Índice Hash__: acceso directo y rápido a los registros basados en la clave hash, pero requiere manejo de colisiones. 
* __Índice B-tree__: estructura balanceada que permite búsquedas rápidas y eficientes, con nodos que almacenan datos y rutas.
* __Índice B+ tree__: similar al B-tree, pero más eficiente para consultas secuenciales gracias a la conexión directa entre nodos hoja.

### Ficheros de Acceso Directo (Random Access Files)

Permiten acceder directamente a cualquier registro en el archivo sin tener que leer secuencialmente desde el inicio. Utilizan un esquema de direccionamiento basado en posiciones de registros. Se utilizan en aplicaciones donde se necesita acceso aleatorio a los datos, como sistemas de gestión de inventarios.

A continuación, se muestra un diagrama de la estructura interna de un archivo DBF:

```
+---------------------------+
|      Cabecera DBF         |
+---------------------------+
|  Información de Campos    |
+---------------------------+
|   Registro de Datos 1     |
+---------------------------+
|   Registro de Datos 2     |
+---------------------------+
|          ...              |
+---------------------------+
|   Registro de Datos N     |
+---------------------------+
|        Fin de Archivo     |
+---------------------------+
```

* __Cabecera DBF__: Contiene la información básica del archivo, como el tipo de archivo, la fecha de creación, el número de registros, el tamaño del encabezado, y el tamaño de cada registro.
Esta sección es crucial para que cualquier software que lea DBF sepa cómo manejar el archivo.
* __Información de Campos__: define los metadatos para cada campo de la tabla, es decir, los nombres de los campos (id, nombre, correo, fecha_reg), el tipo de datos (número, texto, fecha), y la longitud de cada campo. Cada campo se describe con una estructura de 32 bytes que incluye el nombre del campo, tipo, longitud, y decimales (si aplica).
* __Registro de Datos__: cada registro de datos contiene los valores reales correspondientes a los campos definidos anteriormente. Para tu ejemplo, un registro contendría: 1 | Juan Pérez | juan.perez@mail.com | 2024-09-15. Los datos se almacenan en formato secuencial y cada registro tiene un tamaño fijo.
* __Fin de Archivo__: marca el final del archivo con un byte especial (0x1A), que indica al sistema lector que no hay más datos.

Por ejemplo, para el registro:

```
{"id": 1, "nombre": "Juan Pérez", "correo": "juan.perez@mail.com", "fecha_reg": "2024-09-15"}
```

Internamente se vería algo como:

```
| 01  | Juan Pérez               | juan.perez@mail.com         | 20240915 |
```

Los campos serían del siguiente tipo:

* id N(5,0): Un número entero de hasta 5 dígitos.
* nombre C(50): Un campo de texto con hasta 50 caracteres.
* correo C(50): Otro campo de texto con hasta 50 caracteres.
* fecha_reg D: Fecha en formato AAAAMMDD.

Ventajas:

* __Acceso Aleatorio Rápido__: permiten acceder directamente a cualquier registro en el archivo utilizando un identificador o una posición conocida, sin necesidad de leer todos los registros previos. Esto es especialmente útil en aplicaciones que necesitan recuperar registros específicos con rapidez, como bases de datos simples, sistemas de inventario o gestión de archivos.
* __Eficiencia en Lectura y Escritura__: las operaciones de lectura y escritura son más eficientes porque no requieren procesar el archivo completo. Solo se accede a las posiciones específicas que se desean modificar o consultar. Ideal para aplicaciones que requieren actualización frecuente de registros individuales.
* __Flexibilidad en la Modificación de Registros__: permiten modificar, agregar o eliminar registros sin necesidad de reorganizar el archivo completo, lo cual reduce significativamente el tiempo y los recursos requeridos para mantener los datos. El manejo de los datos se vuelve más flexible, permitiendo cambios en registros individuales sin afectar la estructura global.
* __Reducción del Tiempo de Procesamiento__: al permitir acceso directo a los registros, se reduce el tiempo total de procesamiento de datos, especialmente en grandes volúmenes de información. Mejora el rendimiento de las aplicaciones en tiempo real que necesitan acceso rápido y frecuente a los datos.
* __Adecuados para Grandes Volúmenes de Datos__: pueden manejar grandes volúmenes de datos de manera eficiente, ya que el acceso directo no se ve significativamente afectado por el tamaño del archivo. Ideales para sistemas que requieren un almacenamiento masivo de datos con acceso rápido, como sistemas financieros, gestión de pedidos y sistemas de control.
* __Uso en Aplicaciones Específicas__: los ficheros de acceso directo son altamente útiles en situaciones donde los datos se acceden con frecuencia y en un orden no secuencial, como sistemas de bases de datos simples o aplicaciones donde la velocidad es crucial. Permiten una organización de los datos más acorde a las necesidades del usuario, en lugar de seguir un orden secuencial estricto.

Desventajas:

* __Complejidad en la Gestión de Registros__: la gestión de la ubicación de los registros puede volverse compleja, especialmente si los registros tienen tamaños variables o si se requieren muchas operaciones de inserción y eliminación. Se requiere un sistema de administración de espacios libres y control de direcciones, lo que añade complejidad a la implementación y mantenimiento.
* __Problemas de Fragmentación__: la inserción y eliminación de registros pueden causar fragmentación del archivo, donde los registros se almacenan en posiciones no contiguas, afectando la eficiencia del acceso. La fragmentación puede llevar a un aumento en los tiempos de acceso y requerir procesos de reorganización o defragmentación.
* __Difícil Recuperación en Caso de Fallos__: en caso de corrupción del archivo o fallos del sistema, la recuperación de datos puede ser complicada, ya que los registros no están organizados de manera secuencial ni siguen un esquema de índice claro. Los fallos en la gestión de direcciones pueden llevar a la pérdida de datos o accesos incorrectos.
* __Mayor Uso de Memoria para Gestión de Direcciones__: requieren almacenamiento adicional para mantener las direcciones de los registros y la administración de espacios vacíos, lo que puede aumentar el uso de memoria. La gestión de estas estructuras de datos adicionales puede consumir recursos significativos, especialmente en sistemas con limitaciones de memoria.
* __Mayor Complejidad en la Implementación__: implementar ficheros de acceso directo requiere un conocimiento avanzado de estructuras de datos y manejo de archivos, lo cual no es trivial en comparación con ficheros secuenciales. Las funciones de búsqueda, inserción y eliminación deben estar cuidadosamente diseñadas para evitar errores y mantener la integridad del archivo.
* __No Adecuados para Todos los Tipos de Consultas__: no son eficientes para consultas secuenciales o para operaciones que requieren procesar todos los registros del archivo, ya que no optimizan el acceso ordenado. El acceso aleatorio no ofrece beneficios en situaciones donde se necesita recorrer todo el archivo o realizar análisis de datos completos.
* __Riesgo de Inconsistencias__: los cambios no coordinados en los registros pueden llevar a inconsistencias, especialmente si no se implementan correctamente mecanismos de bloqueo o control de concurrencia. Sin un manejo adecuado, las actualizaciones simultáneas de varios usuarios pueden causar corrupción de los datos.

Ejemplos: Archivos binarios utilizados en programación de sistemas, bases de datos antiguas (DBASE III, FoxPro), ficheros .dbf.

Ejemplo de script en Python que genera un fichero en formato CSV con los registros de la tabla de ejemplo:

```
$ sudo apt install python3-pip

$ pip3 install dbf
```

```python
import dbf
from datetime import datetime

# Crear la estructura de la tabla DBF con nombres de campos más cortos y definir la codificación
tabla = dbf.Table('clientes.dbf', 'id N(5,0); nombre C(50); correo C(50); fecha_reg D', codepage='utf8')

# Crear la tabla y abrirla en modo READ_WRITE
tabla.open(dbf.READ_WRITE)

# Definir los registros
registros = [
    {"id": 1, "nombre": "Juan Pérez", "correo": "juan.perez@mail.com", "fecha_reg": "2024-09-15"},
    {"id": 2, "nombre": "María García", "correo": "maria.garcia@mail.com", "fecha_reg": "2024-09-16"},
    {"id": 3, "nombre": "Carlos Sánchez", "correo": "carlos.sanchez@mail.com", "fecha_reg": "2024-09-17"},
    {"id": 4, "nombre": "Ana López", "correo": "ana.lopez@mail.com", "fecha_reg": "2024-09-18"},
    {"id": 5, "nombre": "Luis Fernández", "correo": "luis.fernandez@mail.com", "fecha_reg": "2024-09-19"}
]

# Convertir las fechas en objetos datetime.date
for registro in registros:
    registro['fecha_reg'] = datetime.strptime(registro['fecha_reg'], "%Y-%m-%d").date()

# Añadir los registros a la tabla DBF
for registro in registros:
    tabla.append((registro['id'], registro['nombre'], registro['correo'], registro['fecha_reg']))

# Cerrar la tabla
tabla.close()

print("Archivo 'clientes.dbf' creado y registros insertados correctamente.")
```

Para ejecutar el script:

```bash
$ python3 crear_dbf.py 
Archivo 'clientes.dbf' creado y registros insertados correctamente.

$ cat clientes.dbf
     1Juan Pérez                                       juan.perez@mail.com                               20240915     2María García                                    maria.garcia@mail.com                             20240916     3Carlos Sánchez                                   carlos.sanchez@mail.com                           20240917     4Ana López                                        ana.lopez@mail.com                                20240918     5Luis Fernández                                   luis.fernandez@mail.com                           20240919
```

> __Nota__: los archivos con extensión .dbf se pueden abrir con _LibreOffice Calc_.

__Archivo Binario utilizado en Programación__

En programación de sistemas, los archivos binarios se utilizan para almacenar datos de manera compacta y eficiente. Aquí, cada registro se almacena en un formato binario, con cada campo codificado de manera específica (por ejemplo, enteros, cadenas de texto y fechas).

Cada registro se almacena con los siguientes campos en binario:

* ID: entero de 4 bytes.
* Nombre: cadena de texto con longitud fija, por ejemplo, 50 bytes
* Correo: cadena de texto con longitud fija, por ejemplo, 50 bytes
* Fecha de Registro: cadena de texto de longitud fija, por ejemplo, 10 bytes

El archivo almacena cada registro secuencialmente, con cada campo ocupando un espacio fijo.

Ejemplo de Codificación Binaria de un Registro (Juan Pérez):

* ID: 1 → 4 bytes
* Nombre: "Juan Pérez" → 50 bytes (rellenado con espacios si es más corto)
* Correo: "juan.perez@mail.com" → 50 bytes
* Fecha: "2024-09-15" → 10 bytes
* Archivo Binario Total:

Cada registro ocuparía 4 + 50 + 50 + 10 = 114 bytes. Los 5 registros ocuparían 5 × 114 = 570 bytes.

Visualización Simplificada:

```
[Registro 1]
01 00 00 00 | 4A 75 61 6E 20 50 65 72 65 7A ... (hasta 50 bytes) | 6A 75 61 6E 2E 70 65 72 65 7A 40 6D 61 69 6C 2E 63 6F 6D ... (hasta 50 bytes) | 32 30 32 34 2D 30 39 2D 31 35

[Registro 2]
02 00 00 00 | 4D 61 72 69 61 20 47 61 72 63 69 61 ... | 6D 61 72 69 61 2E 67 61 72 63 69 61 40 6D 61 69 6C 2E 63 6F 6D ... | 32 30 32 34 2D 30 39 2D 31 36
... y así sucesivamente.
```

>__Notas__; la visión simplificada hace referencia a una representación textual del contenido del archivo binario, mostrando cómo los datos están organizados internamente en el archivo. Esta representación está diseñada para ilustrar de manera comprensible cómo se estructuran los datos en el almacenamiento binario, aunque en la realidad, los archivos binarios no se ven como texto sino como secuencias de bytes

__Archivo de Base de Datos Antigua (DBASE III, FoxPro)__

Las bases de datos antiguas como DBASE III y FoxPro eran muy populares antes de los sistemas modernos de bases de datos relacionales. Usaban un formato binario propietario para almacenar tablas de datos en archivos con extensiones como .dbf.

Cada archivo .dbf contiene una cabecera con la definición de los campos y los registros, todos almacenados en binario. Los datos se organizan en registros con campos de longitud fija.

Ejemplo de Estructura del Archivo .dbf:

* __Cabecera del Archivo__: incluye información sobre el número de registros, tamaño de los campos, y tipo de datos.
* __Registro de Datos__: los datos se almacenan secuencialmente, cada registro es una fila con los campos de longitud fija.

Definición de Campos en .dbf:

```
Field 1: ID, Integer, 4 bytes
Field 2: Nombre, Character, 50 bytes
Field 3: Correo, Character, 50 bytes
Field 4: Fecha de Registro, Character, 10 bytes
```

Ejemplo de Registro en .dbf (Juan Pérez):

```
01 00 00 00 | "Juan Pérez                                       " | "juan.perez@mail.com                         " | "2024-09-15"
```

Visualización del archivo completo en binario:

```
[Header]
DB 03 00 00 00 05 00 72 00 ...

[Registro 1]
01 00 00 00 | 4A 75 61 6E 20 50 65 72 65 7A ... | 6A 75 61 6E 2E 70 65 72 65 7A 40 6D 61 69 6C 2E 63 6F 6D ... | 32 30 32 34 2D 30 39 2D 31 35

[Registro 2]
02 00 00 00 | 4D 61 72 69 61 20 47 61 72 63 69 61 ... | 6D 61 72 69 61 2E 67 61 72 63 69 61 40 6D 61 69 6C 2E 63 6F 6D ... | 32 30 32 34 2D 30 39 2D 31 36

... y así sucesivamente.
```
* __Archivo Binario de Programación de Sistemas__: es muy eficiente en términos de espacio y acceso, pero carece de estructura legible y requiere un programa específico para la lectura y manipulación de los datos.
* __Archivo .dbf de DBASE III/FoxPro__: utiliza un formato binario para almacenar datos de manera estructurada con metadatos incluidos en la cabecera, permitiendo acceso rápido a registros, pero depende de software específico para manipulación.

# Bases de Datos

## Introducción

Una base de datos es una colección organizada de datos que están estructurados para facilitar su acceso, gestión y actualización. Las bases de datos permiten almacenar grandes cantidades de información de manera que sea fácilmente recuperable, manipulable y protegida. Los elementos principales de una base de datos son:

* __Tablas__: la unidad básica en bases de datos relacionales. Cada tabla contiene registros (filas) y campos (columnas).
* __Registros__: una fila en una tabla que representa una entrada completa de datos.
* __Campos__: las columnas de una tabla que especifican el tipo de datos que se almacenan, como nombres, fechas, números, etc.
* __Índices__: estructuras que mejoran la velocidad de las operaciones de búsqueda y ordenamiento.

Usos de las Bases de Datos:

* __Gestión de información empresarial__: almacenan y gestionan datos críticos como información de clientes, transacciones, inventarios y empleados.
* __Aplicaciones web y móviles__: mantienen datos de usuarios, contenido dinámico, y permiten funcionalidades complejas como la personalización de contenidos y el seguimiento de interacciones.
* __Sistemas de información__: utilizados en organizaciones como hospitales, escuelas, bibliotecas y gobiernos para gestionar grandes volúmenes de datos relacionados con operaciones diarias.
* __Análisis de datos y Big Data__: en análisis de grandes volúmenes de datos para obtener insights valiosos en tiempo real o casi real.

Los tipos de Bases de Datos según el _modelo de datos_ son _BBDD relacionales_, _BBDD noSQL_, _BBDD orientada a objetos_ y _BBDD jerárquicas y de red_: 

## Bases de Datos Relacionales (RDBMS)

Organizan los datos en tablas relacionadas mediante claves primarias y ajenas. Utilizan el lenguaje SQL (Structured Query Language) para la gestión y manipulación de datos:

Características:
* _Datos estructurados_: los datos se estructuran en tablas, donde cada fila representa un registro y cada columna un campo.
* _Integridad de los datos_: mediante restricciones y reglas como, por ejemplo claves primarias, claves foráneas, podemos mantener la integridad referencial.
* _Soporte para transacciones_: atomicidad, consistencia, aislamiento y durabilidad (ACID).

Ventajas:
* Alta consistencia y precisión de los datos.
* Eficiencia en consultas complejas y uniones de tablas.
* Existe bastante documentación sobre este tipo de bases de datos
* Multitud de herramientas de desarrollo disponibles.

Ejemplos de Sistemas Gestores de Bases de Datos relacionales: MySQL, MariaDB, PostgreSQL, Oracle Database, Microsoft SQL Server.

## Bases de Datos NoSQL

Diseñadas para datos no estructurados o semiestructurados y para aplicaciones que requieren escalabilidad horizontal y flexibilidad. Los distintos tipos son:

* __Documentales__: almacenan datos en documentos (JSON, BSON). Un ejemplo de Sistema Gestor de Bases de Datos documentales sería  _MongoDB_.
* __Clave-Valor__: almacenan datos como pares clave-valor, muy rápidos y simples. Un ejemplo de Sistema Gestor de Bases de Datos de tipo clave-valor sería _Redis_.
* __Columnas__: organizan datos por columnas, optimizadas para grandes volúmenes de datos analíticos. Un ejemplo de Sistema Gestor de Bases de Datos documentales sería  _Apache Cassandra_ o _HBase_.
* __Grafos__: almacenan datos en nodos y aristas, ideales para gestionar relaciones complejas. Un ejemplo de Sistema Gestor de Bases de Datos documentales sería  _Neo4j_.

Características:
* Mayor flexibilidad y capacidad de escalar horizontalmente.
* Diseñadas para manejar grandes volúmenes de datos distribuidos.

Ventajas:
* Escalabilidad masiva y flexibilidad en el diseño de esquemas.
* Mejor rendimiento en aplicaciones con datos no estructurados o semi-estructurados.

Desventajas:
* Menor consistencia y soporte limitado para transacciones complejas.
* Curva de aprendizaje mayor para administrar modelos de datos no convencionales.

Ejemplo para Bases de Datos NoSQL basadas en ficheros JSON:

```JSON
[
  {
    "_id": 1,
    "nombre": "Juan Pérez",
    "correo": "juan.perez@mail.com",
    "fechaRegistro": "2024-09-15"
  },
  {
    "_id": 2,
    "nombre": "María García",
    "correo": "maria.garcia@mail.com",
    "fechaRegistro": "2024-09-16"
  },
  {
    "_id": 3,
    "nombre": "Carlos Sánchez",
    "correo": "carlos.sanchez@mail.com",
    "fechaRegistro": "2024-09-17"
  },
  {
    "_id": 4,
    "nombre": "Ana López",
    "correo": "ana.lopez@mail.com",
    "fechaRegistro": "2024-09-18"
  },
  {
    "_id": 5,
    "nombre": "Luis Fernández",
    "correo": "luis.fernandez@mail.com",
    "fechaRegistro": "2024-09-19"
  }
]
```

Explicación del JSON:

* ___id__: este campo es el identificador único de cada documento en MongoDB. Aquí se usa como una clave primaria similar al ID en las bases de datos relacionales.
* __nombre__: almacena el nombre del cliente.
* __correo__: guarda la dirección de correo electrónico.
* __fechaRegistro__: almacena la fecha de registro en formato YYYY-MM-DD.

## Bases de Datos Orientadas a Objetos

Integran conceptos de la programación orientada a objetos, permitiendo que los datos se almacenen como objetos con atributos y métodos. Los objetos se almacenan en una estructura que refleja las clases y herencias de los programas. Permiten almacenar datos complejos que incluyen relaciones y métodos.

Ventajas:
* Soportan almacenamiento de objetos complejos sin necesidad de descomponerlos en tablas.
* Ideal para aplicaciones con modelos de datos complejos y con requisitos de manipulación avanzada.

Ejemplos: ObjectDB, db4o.

## Bases de Datos Jerárquicas y de Red

Las Bases de Datos Jerárquicas organizan los datos en una estructura jerárquica de árbol. Cada nodo tiene uno o varios nodos hijos pero un solo nodo padre. Común en sistemas antiguos como IMS (Information Management System) de IBM.

Desventajas:
* Estructura rígida que no permite relaciones complejas entre nodos.

Las Bases de Datos de Red son similares a la jerárquica, pero permite relaciones múltiples (nodos pueden tener múltiples padres). Se emplea empleada en sistemas complejos de modelado de datos previos a las bases de datos relacionales.

Ejemplos: IDMS (Integrated Database Management System).

## Tipos de Bases de Datos Según la Ubicación de la Información

En las _Bases de Datos centralizadas_ toda la información reside en un único servidor o centro de datos.

Ventajas:
* Sencillez en la gestión y el mantenimiento.
* Mejor control de seguridad y de acceso a los datos.

Desventajas:
* Punto único de fallo, lo que puede provocar problemas de disponibilidad y pérdida de datos si ocurre un fallo.
* Limitaciones en el escalado para soportar grandes volúmenes de usuarios.

En las bases de datos distribuidas los datos se almacenan en múltiples ubicaciones físicas, pero se gestionan como una única base de datos lógica.

Ventajas:
* Mejor rendimiento y disponibilidad al distribuir la carga entre varios servidores.
* Redundancia y tolerancia a fallos mejorada.

Desventajas:
* Complejidad en la sincronización de datos y la gestión de la consistencia entre nodos.
* Mayor dificultad en la administración y en la implementación de seguridad.

## SQL

_SQL_ (_Structured Query Language_) es un lenguaje de programación estándar diseñado específicamente para gestionar, manipular y consultar datos en sistemas de gestión de bases de datos relacionales (RDBMS). SQL permite a los usuarios interactuar con la base de datos para realizar operaciones como la creación y modificación de tablas, inserción, actualización, eliminación de datos, y la ejecución de consultas para recuperar información específica.

Características principales de SQL:

* __Consultas de datos__: permite seleccionar y recuperar datos específicos de una base de datos usando comandos como SELECT.
* __Manipulación de datos__: ofrece comandos para insertar (INSERT), actualizar (UPDATE) y eliminar (DELETE) datos en la base de datos.
* __Definición de datos__: permite definir la estructura de las bases de datos, como crear (CREATE), modificar (ALTER) y eliminar (DROP) tablas y otros objetos de base de datos.
* __Control de acceso__: proporciona comandos para definir permisos y seguridad sobre los datos, asegurando que solo usuarios autorizados puedan realizar ciertas acciones.
* __Transacciones__: soporta transacciones que permiten agrupar varias operaciones en una sola unidad de trabajo, garantizando la consistencia y la integridad de los datos.

A continuación, se muestra una tabla con la evolución de las distintas versiones del Lenguaje SQL:

| **Versión SQL**  | **Año de Lanzamiento** | **Principales Características**                                                                                                                                         |
|------------------|-------------------------|--------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| **SQL-86**       | 1986                    | Primera versión estandarizada por ANSI. Proporciona las bases del lenguaje SQL, incluyendo comandos básicos como `SELECT`, `INSERT`, `UPDATE`, y `DELETE`.              |
| **SQL-89**       | 1989                    | Mejora el estándar de 1986 con correcciones y extensiones menores, como la introducción de la cláusula `AS` para alias de tablas y columnas.                             |
| **SQL-92**       | 1992                    | Amplía significativamente SQL con soporte para subconsultas, nuevas funciones de cadena, la introducción de los `JOIN`, y mejores capacidades para manejar `NULL`.       |
| **SQL:1999**     | 1999                    | Introduce características avanzadas como los procedimientos almacenados, disparadores, tipos de datos definidos por el usuario, y soporte para programación orientada a objetos. |
| **SQL:2003**     | 2003                    | Añade soporte para XML, la instrucción `MERGE`, y nuevas funciones de ventana para el análisis de datos. Mejora el manejo de secuencias y la manipulación de datos complejos. |
| **SQL:2006**     | 2006                    | Introduce mejoras en el manejo de datos XML, como la consulta y la manipulación de datos XML almacenados en la base de datos.                                            |
| **SQL:2008**     | 2008                    | Incluye nuevas especificaciones para el almacenamiento de datos espaciales, mejora las funciones de ventana y añade nuevas funciones de diagnóstico.                     |
| **SQL:2011**     | 2011                    | Añade soporte para la sintaxis de procesamiento de datos temporales, mejorando el manejo de datos históricos y vigentes en las tablas.                                   |
| **SQL:2016**     | 2016                    | Introduce mejoras significativas en las funciones de JSON, mejoras de rendimiento y nuevas funciones analíticas avanzadas.                                               |
| **SQL:2019**     | 2019                    | Se enfoca en mejorar la integración con Big Data y mejorar la eficiencia en la ejecución de consultas, introduciendo conceptos modernos como Machine Learning e IA.      |

A continuación, se muestra una imagen con un listado de los lenguajes más utilizandos según el _Índice Tiobe_, donde se encuentra el lenguaje SQL en la posición 9:

_SQL_ es un lenguaje ampliamente utilizado en la mayoría de los Sistemas Gestores de Bases de Datos, como _MySQL_, _PostgreSQL_, _Microsoft SQL Server_ y _Oracle_.

## Conclusión

Las bases de datos son esenciales para la gestión de la información en aplicaciones modernas, proporcionando una estructura que permite a las empresas y organizaciones almacenar, acceder y analizar datos de manera segura y eficiente. La elección del tipo de base de datos depende de factores como la naturaleza de los datos, las necesidades de rendimiento, la escalabilidad y la complejidad de las relaciones entre los datos.

# Sistemas Gestores de Base de Datos

## Introducción

Los Sistemas Gestores de Bases de Datos (SGBD) son software diseñados para facilitar la creación, manipulación y administración de bases de datos. Estos sistemas permiten a los usuarios almacenar, recuperar, actualizar y eliminar datos de manera eficiente, garantizando la integridad, seguridad y consistencia de la información. Los SGBD son esenciales en cualquier aplicación que requiera gestión de datos estructurados, desde pequeños programas de escritorio hasta complejos sistemas empresariales y aplicaciones web.

A continuación, se muestra una imagen donde se muestran los Sistemas Gestores de Bases de Datos más utilizados según DB-Engines:

## Sistemas Gestores de Bases de Datos Relacionales

### MySQL

MySQL es un Sistema Gestor de Bases de datos de código abierto más popular del mercado. Según DB-Engines, MySQL se clasifica como la segunda base de datos más popular, detrás de Oracle Database. MySQL está detrás de aplicaciones como como Facebook, Twitter, Netflix, Uber, Airbnb, Shopify y Booking.com. Dado que MySQL es de código abierto, incluye numerosas funciones desarrolladas en estrecha colaboración con los usuarios durante más de 25 años. Por lo tanto, la gran mayoría de lenguajes de programación favorito sea compatible con MySQL Database.

El logotipo MySQL es un delfín llamado Sakila. El nombre se eligió de entre una larga lista sugerida por los usuarios durante el concurso "Ponle nombre al delfín". El nombre ganador fue enviado por Ambrose Twebaze, un desarrollador de software de código abierto de Eswatini (antigua Swazilandia), África.

MySQL es de código abierto, lo que significa que que cualquier usuario puede utilizar y modificar el software. Cualquier persona puede descargar el software MySQL de Internet y utilizarlo sin pagar por ello. También puedes modificar su código fuente para adaptarlo a tus necesidades. El software MySQL utiliza la GNU General Public License (GPL) para definir lo que puede y no puede hacer con el software en diferentes situaciones.

MySQL se sitúa sistemáticamente como la base de datos más popular entre los desarrolladores, según encuestas de Stack Overflow y JetBrains debido a su alto rendimiento, confiabilidad y facilidad de uso.

MySQL es compatible con algunos lengaujes de desaroollo como  PHP, Python, Java, Node.js, Perl, Ruby, Rust, C, C++, ...

MySQL también se ha convertido en el Sistema Gestor de Bases de Datos elegido por muchas de las aplicaciones de código abierto de mayor éxito, como WordPress, Drupal, Joomla y Magento. MySQL es la "M" en la popular pila de código abierto LAMP (Linux, Apache, MySQL, Perl/Python/PHP) para desarrollar aplicaciones web.

Las principales ventajas de MySQL incluyen:
* __Facilidad de uso__: los desarrolladores pueden instalar MySQL en minutos y la base de datos es fácil de gestionar.
* __Confiabilidad__: MySQL es una de las bases de datos más maduras y utilizadas. Lleva más de 25 años probándose en una amplia variedad de casos, incluso en muchas de las mayores empresas del mundo. Las organizaciones utilizan MySQL para ejecutar aplicaciones clave para el negocio debido a su confiabilidad.
* __Escalabilidad__: MySQL se amplía para satisfacer las demandas de las aplicaciones más accesibles. La arquitectura de replicación nativa de MySQL permite a organizaciones como Facebook escalar aplicaciones para admitir miles de millones de usuarios.
* __Alta disponibilidad__: MySQL ofrece un conjunto completo de tecnologías de replicación nativas y totalmente integradas para una alta disponibilidad y recuperación ante desastres.
* __Flexibilidad__: el almacén de documentos MySQL proporciona a los usuarios la máxima flexibilidad para desarrollar aplicaciones de base de datos SQL tradicionales y sin esquema NoSQL. Los desarrolladores pueden combinar datos relacionales y documentos JSON en la misma base de datos y aplicación.

Casos de uso de MySQL:
* __Comercio electrónico__: muchas de las aplicaciones de comercio electrónico más grandes del mundo (por ejemplo, Shopify, Uber y Booking.com) ejecutan sus sistemas transaccionales en MySQL. Es una opción popular para gestionar perfiles de usuario, credenciales, contenido de usuario, datos financieros, incluidos pagos y detección de fraudes.
* __Plataformas sociales__: Facebook, Twitter y LinkedIn se encuentran entre las redes sociales más grandes del mundo que utilizan MySQL.
* __Gestión de contenido__: a diferencia de las bases de datos de documentos de un solo propósito, MySQL activa SQL y NoSQL con una sola base de datos. El almacén de documentos MySQL permite operaciones CRUD y la potencia de SQL para consultar datos de documentos JSON para informes y análisis.

MySQL se ofrece en dos versiones principales: Community Edition y Enterprise Edition. Cada versión está diseñada para diferentes tipos de usuarios y casos de uso, con diferencias clave en términos de características, soporte y licenciamiento.

__MySQL Community Edition__

_MySQL Community Edition_ es la versión gratuita y de código abierto de MySQL, disponible bajo la Licencia Pública General de GNU (GPL). Es la versión más utilizada de MySQL y es mantenida y actualizada por Oracle, así como por una comunidad activa de desarrolladores.

Características:
* __Código abierto__: disponible de forma gratuita y su código fuente está abierto para modificaciones y redistribución bajo la licencia GPL.
* __Características completas de SQL__: soporta transacciones ACID, procedimientos almacenados, triggers, vistas, y muchas de las funcionalidades estándar de SQL.
* __Motores de almacenamiento__: Incluye InnoDB para transacciones y MyISAM para rendimiento de lectura rápida, entre otros motores de almacenamiento.
* __Actualizaciones y parches de seguridad__: recibe actualizaciones regulares y parches de seguridad de la comunidad y de Oracle.
* __Soporte comunitario__: el soporte es proporcionado por la comunidad de usuarios a través de foros, documentación en línea y recursos de la comunidad.

Uso Común:
* Ideal para pequeñas y medianas empresas, desarrolladores, aplicaciones web, y cualquier proyecto que busque una solución de base de datos potente sin costo asociado.

A continuación, se muestra un ejemplo de sentencias SQL en un SGBD MySQL para crear una tabla y un índice, e insertar registros en la tabla:

```SQL
-- Creación de la tabla con la clave primaria y un índice en la columna correo
CREATE TABLE clientes (
    id INT PRIMARY KEY,
    nombre VARCHAR(50),
    correo VARCHAR(50),
    fecha_registro DATE
);

-- Creación del índice en la columna correo para optimizar las búsquedas por correo
CREATE INDEX idx_correo ON clientes(correo);

-- Inserción de los 5 registros
INSERT INTO clientes (id, nombre, correo, fecha_registro) VALUES
(1, 'Juan Pérez', 'juan.perez@mail.com', '2024-09-15'),
(2, 'María García', 'maria.garcia@mail.com', '2024-09-16'),
(3, 'Carlos Sánchez', 'carlos.sanchez@mail.com', '2024-09-17'),
(4, 'Ana López', 'ana.lopez@mail.com', '2024-09-18'),
(5, 'Luis Fernández', 'luis.fernandez@mail.com', '2024-09-19');
```

Descripción de los comandos:
* __CREATE TABLE clientes (...)__: crea una tabla llamada clientes con las siguientes columnas:
 * __id INT PRIMARY KEY__: define el campo id como un entero y clave primaria de la tabla, lo que garantiza que cada registro sea único.
 * __nombre VARCHAR(50)__: almacena los nombres con un máximo de 50 caracteres.
 * __correo VARCHAR(50)__: almacena las direcciones de correo electrónico con un máximo de 50 caracteres.
 * __fecha_registro DATE__: almacena las fechas en formato YYYY-MM-DD.
* __CREATE INDEX idx_correo ON clientes(correo);__: crea un índice llamado idx_correo en la columna correo para mejorar el rendimiento de las búsquedas y consultas basadas en el correo electrónico.
* __INSERT INTO clientes (...) VALUES (...)__: inserta los 5 registros especificados con sus respectivos datos de ID, nombre, correo y fecha de registro.

Para buscar el registro con id = 4, puedes usar el comando _SELECT_ con la cláusula _WHERE_ para filtrar por el _id_:

```SQL
-- Consulta SQL para buscar el registro con id = 4
SELECT * FROM clientes WHERE id = 4;
```

__MySQL Enterprise Edition__

 Es la versión comercial y de pago de MySQL, diseñada para aplicaciones empresariales que requieren un alto nivel de soporte, seguridad y características adicionales que no están disponibles en la Community Edition.

Características Adicionales:
* Soporte técnico profesional: soporte 24/7 proporcionado por Oracle con opciones de asistencia telefónica y por correo electrónico.
* Monitoreo y administración: incluye MySQL Enterprise Monitor para la supervisión en tiempo real del rendimiento y la seguridad.
* Seguridad avanzada: características de seguridad adicionales como el cifrado de datos en reposo, autenticación avanzada y auditoría.
* Alta disponibilidad: herramientas avanzadas de replicación y alta disponibilidad, incluyendo MySQL InnoDB Cluster y MySQL Router para configuraciones de alta disponibilidad.
* Backup y recuperación Avanzada: MySQL Enterprise Backup proporciona copias de seguridad sin interrupciones y recuperación rápida, incluso para grandes volúmenes de datos.
* MySQL enterprise audit: herramientas de auditoría para el cumplimiento de normativas y la supervisión de la actividad de la base de datos.
* Licencia: requiere una suscripción de pago, que incluye el derecho de uso de las herramientas adicionales y acceso a parches de seguridad exclusivos antes de su publicación en Community Edition.

Uso Común:
* Utilizada por grandes corporaciones, bancos, gobiernos y cualquier entidad que necesite características avanzadas de seguridad, soporte y alta disponibilidad.

Resumen:
* __MySQL Community Edition__: ideal para desarrolladores, proyectos de código abierto y pequeñas empresas que necesitan una solución robusta sin costo.
* __MySQL Enterprise Edition__: dirigida a entornos empresariales donde la seguridad, soporte, y alta disponibilidad son esenciales y justifican el costo adicional de la licencia.

> __Nota__: ambas versiones son muy potentes, pero la elección dependerá de las necesidades específicas del proyecto y los recursos disponibles para su mantenimiento y soporte.

MySQL utiliza una versión personalizada del lenguaje SQL basada en los estándares SQL, como SQL-92, SQL:1999, SQL:2003, SQL:2008, SQL:2011 y SQL:2016, pero incluye extensiones y características específicas que no siempre cumplen al 100% con estos estándares.

MySQL sigue principalmente los estándares de _SQL-92_ y ha ido incorporando características de versiones más recientes del estándar SQL, como _SQL:1999_, _SQL:2003_, _SQL:2008_, y _SQL:2011_. Sin embargo, MySQL no implementa completamente todos los aspectos de estos estándares y a menudo tiene su propia manera de manejar ciertas funcionalidades. MySQL ha añadido muchas extensiones y características propias que no están necesariamente alineadas con los estándares oficiales. Estas extensiones incluyen funciones específicas, tipos de datos adicionales, y características de optimización. Por ejemplo, MySQL tiene su propia manera de manejar funciones de agregación, variables de usuario, y procedimientos almacenados, que pueden diferir de las implementaciones estrictamente estandarizadas.

Compatibilidad con otros Sistemas Gestores de Bases de Datos:
* MySQL puede tener pequeñas diferencias en la implementación de algunos comandos SQL en comparación con otros sistemas de bases de datos que siguen estrictamente los estándares, como PostgreSQL o SQL Server.

Versiones de MySQL:

| **Versión de MySQL** | **Año de Lanzamiento** |
|-----------------------|------------------------|
| MySQL 1.0             | 1995                   |
| MySQL 3.11            | 1996                   |
| MySQL 3.20            | 1997                   |
| MySQL 3.21            | 1998                   |
| MySQL 3.22            | 1998                   |
| MySQL 3.23            | 2000                   |
| MySQL 4.0             | 2003                   |
| MySQL 4.1             | 2004                   |
| MySQL 5.0             | 2005                   |
| MySQL 5.1             | 2008                   |
| MySQL 5.5             | 2010                   |
| MySQL 5.6             | 2013                   |
| MySQL 5.7             | 2015                   |
| MySQL 8.0             | 2018                   |

Las versiones de MySQL no siguen una numeración continua. Por ejemplo, después de MySQL 5.7 se pasó directamente a MySQL 8.0, omitiendo las versiones 6.x y 7.x por diversas razones internas de desarrollo.
MySQL 8.0 es la versión más actual (a partir de 2024) y ha introducido importantes mejoras en rendimiento, seguridad, y compatibilidad con los estándares SQL más recientes.

### MariaDB

MariaDB es un sistema de bases de datos relacional desarrollado como un fork de MySQL por los creadores originales de MySQL. Se diseñó como una alternativa gratuita y abierta tras la adquisición de MySQL por Oracle, manteniendo compatibilidad con las versiones de MySQL pero añadiendo mejoras de rendimiento y nuevas características:
* Totalmente compatible con MySQL en términos de comandos, bibliotecas y API.
* Mejoras en rendimiento y seguridad en comparación con MySQL, con características como motores de almacenamiento avanzados (Aria, XtraDB).
* Soporte mejorado para transacciones, particionamiento y replicación.
* Ciclos de desarrollo más rápidos y transparentes con nuevas funcionalidades y optimizaciones.

Es la opción preferida para los desarrolladores que buscan una alternativa más libre y abierta a MySQL, con adopción creciente en proyectos de código abierto.

Versiones de MariaDB y su compatibilidad con MySQL:

| **Versión de MariaDB** | **Año de Lanzamiento** | **Compatibilidad con MySQL**          |
|-------------------------|------------------------|---------------------------------------|
| MariaDB 5.1             | 2009                   | Compatible con MySQL 5.1             |
| MariaDB 5.2             | 2010                   | Compatible con MySQL 5.1             |
| MariaDB 5.3             | 2011                   | Compatible con MySQL 5.1             |
| MariaDB 5.5             | 2012                   | Compatible con MySQL 5.5             |
| MariaDB 10.0            | 2014                   | Compatible con MySQL 5.6             |
| MariaDB 10.1            | 2015                   | Compatible con MySQL 5.6             |
| MariaDB 10.2            | 2017                   | Compatible con MySQL 5.7             |
| MariaDB 10.3            | 2018                   | Compatible con MySQL 5.7             |
| MariaDB 10.4            | 2019                   | Parcialmente compatible con MySQL 5.7|
| MariaDB 10.5            | 2020                   | Parcialmente compatible con MySQL 8.0|
| MariaDB 10.6            | 2021                   | Parcialmente compatible con MySQL 8.0|
| MariaDB 10.7            | 2021                   | Parcialmente compatible con MySQL 8.0|
| MariaDB 10.8            | 2022                   | Parcialmente compatible con MySQL 8.0|
| MariaDB 10.9            | 2022                   | Parcialmente compatible con MySQL 8.0|
| MariaDB 10.10           | 2022                   | Parcialmente compatible con MySQL 8.0|
| MariaDB 10.11           | 2023                   | Parcialmente compatible con MySQL 8.0|

Notas sobre compatibilidad:
* __Versiones iniciales (5.1 - 5.5)__: las primeras versiones de MariaDB fueron desarrolladas como reemplazos directos de MySQL y mantienen una alta compatibilidad en cuanto a comandos SQL, estructuras de datos y funciones básicas.
* __Versiones 10.x__: A partir de MariaDB 10.0, se empezaron a añadir características que no están presentes en MySQL y se mejoraron algunas funciones, lo que ocasionó algunas diferencias y limitaciones en la compatibilidad bidireccional.
* __Compatibilidad con MySQL 8.0__: MariaDB no es completamente compatible con MySQL 8.0 debido a diferencias en la implementación de algunos comandos, tipos de datos, y funciones específicas.

> __Nota__: MariaDB sigue siendo en gran parte compatible con MySQL, especialmente en sus primeras versiones, pero a medida que ha evolucionado, ha introducido características propias que pueden causar diferencias en ciertos casos de uso.

MariaDB utiliza una versión propia del lenguaje SQL basada en los estándares SQL, similar a MySQL, pero con sus propias extensiones y mejoras que la diferencian. MariaDB sigue principalmente los estándares SQL-92, SQL:1999, SQL:2003, SQL:2008, SQL:2011, y SQL:2016. Sin embargo, al igual que MySQL, MariaDB no implementa completamente todos los aspectos de estos estándares y tiene algunas variaciones y extensiones propias. La versión SQL implementada en MariaDB incluye soporte para transacciones ACID, subconsultas, funciones de ventana, y otros elementos avanzados de los estándares SQL modernos.

Aunque MariaDB sigue una línea de compatibilidad con MySQL, las versiones más recientes (a partir de MariaDB 10.4) han empezado a incluir características que no están presentes en MySQL, lo que puede llevar a comportamientos ligeramente diferentes o a la falta de compatibilidad bidireccional en ciertos casos.

MariaDB utiliza una versión personalizada del lenguaje SQL basada en los estándares SQL reconocidos, con extensiones propias para mejorar el rendimiento, la flexibilidad, y la funcionalidad. La compatibilidad con MySQL es alta, especialmente en versiones anteriores, pero MariaDB sigue evolucionando con características únicas que lo distinguen en el ecosistema de bases de datos.

### Oracle Database

Oracle Database es uno de los Sistemas Gestores de Bases de Datos más robustos y completos del mercado, desarrollado por Oracle Corporation. Es ampliamente utilizado en grandes corporaciones y entornos empresariales por su capacidad para manejar enormes volúmenes de datos y alta disponibilidad.

Características:
* Soporta características avanzadas como transacciones distribuidas, alta disponibilidad, y recuperación ante desastres (Oracle RAC, Data Guard).
* Optimización de rendimiento con particionamiento avanzado y paralelismo.
* Seguridad avanzada con opciones de cifrado, autenticación y auditoría.
* Soporte para procedimientos almacenados y extensiones propias (PL/SQL).

Utilizado en grandes empresas, bancos, telecomunicaciones, y cualquier entorno que requiera alta fiabilidad, escalabilidad y seguridad.

A continuación, se muestra una tabla con las versiones principales de Oracle Database y sus respectivos años de lanzamiento:

| **Versión de Oracle** | **Año de Lanzamiento** |
|------------------------|------------------------|
| Oracle V2              | 1979                   |
| Oracle 3               | 1983                   |
| Oracle 4               | 1984                   |
| Oracle 5               | 1985                   |
| Oracle 6               | 1988                   |
| Oracle 7               | 1992                   |
| Oracle 8               | 1997                   |
| Oracle 8i              | 1999                   |
| Oracle 9i              | 2001                   |
| Oracle 10g             | 2003                   |
| Oracle 11g             | 2007                   |
| Oracle 12c             | 2013                   |
| Oracle 18c             | 2018                   |
| Oracle 19c             | 2019                   |
| Oracle 21c             | 2021                   |
| Oracle 23c (beta)      | 2023                   |

Notas:
* Oracle V2 fue la primera versión comercializada de Oracle (no hubo versión 1).
* Las versiones 8i, 9i, y 10g introdujeron características importantes como la integración con Internet (i) y computación grid (g).
* Oracle 12c introdujo la arquitectura multitenant, que permite la gestión de múltiples bases de datos como contenedores.
* Oracle 18c y 19c forman parte de la estrategia de versiones anuales, con el año de lanzamiento reflejado en el número de la versión.
* Oracle 23c es la versión más reciente anunciada, actualmente en fase beta.

### PostgreSQL

Descripción: PostgreSQL es un sistema de bases de datos relacional de código abierto, conocido por su robustez, extensibilidad y cumplimiento de estándares SQL. A menudo es referido como la base de datos de código abierto más avanzada del mundo.
Características:
Soporte avanzado para transacciones ACID, integridad referencial y concurrencia sin bloqueos.
Ampliamente extensible, permitiendo añadir funciones personalizadas, tipos de datos y operadores.
Soporte para JSON y JSONB, permitiendo trabajar con datos semi-estructurados como en bases de datos NoSQL.
Amplias capacidades de replicación y opciones de alta disponibilidad.
Uso Común: Preferido por desarrolladores para aplicaciones web, análisis de datos, sistemas GIS, y aplicaciones que requieren complejas consultas y alta integridad de datos.

Aquí tienes una tabla en formato Markdown con las versiones principales de PostgreSQL y sus respectivos años de lanzamiento:

| **Versión de PostgreSQL** | **Año de Lanzamiento** |
|---------------------------|------------------------|
| PostgreSQL 6.0            | 1997                   |
| PostgreSQL 6.1            | 1997                   |
| PostgreSQL 6.2            | 1997                   |
| PostgreSQL 6.3            | 1998                   |
| PostgreSQL 6.4            | 1998                   |
| PostgreSQL 6.5            | 1999                   |
| PostgreSQL 7.0            | 2000                   |
| PostgreSQL 7.1            | 2001                   |
| PostgreSQL 7.2            | 2002                   |
| PostgreSQL 7.3            | 2002                   |
| PostgreSQL 7.4            | 2003                   |
| PostgreSQL 8.0            | 2005                   |
| PostgreSQL 8.1            | 2005                   |
| PostgreSQL 8.2            | 2006                   |
| PostgreSQL 8.3            | 2008                   |
| PostgreSQL 8.4            | 2009                   |
| PostgreSQL 9.0            | 2010                   |
| PostgreSQL 9.1            | 2011                   |
| PostgreSQL 9.2            | 2012                   |
| PostgreSQL 9.3            | 2013                   |
| PostgreSQL 9.4            | 2014                   |
| PostgreSQL 9.5            | 2016                   |
| PostgreSQL 9.6            | 2016                   |
| PostgreSQL 10             | 2017                   |
| PostgreSQL 11             | 2018                   |
| PostgreSQL 12             | 2019                   |
| PostgreSQL 13             | 2020                   |
| PostgreSQL 14             | 2021                   |
| PostgreSQL 15             | 2022                   |

Notas:
* PostgreSQL comenzó a numerarse con la versión 6.0 tras su separación del proyecto original de Ingres y el inicio del desarrollo independiente.
* Las versiones más recientes han adoptado un esquema de numeración más simple (10, 11, etc.) en lugar del formato anterior (9.x).
* Cada versión de PostgreSQL suele introducir mejoras en rendimiento, nuevas características SQL, y mayor soporte para tipos de datos avanzados y estándares de integridad.
* Esta tabla refleja la evolución de PostgreSQL a lo largo de los años, destacando su desarrollo continuo y su adopción como una de las bases de datos relacionales más avanzadas y confiables.

PostgreSQL utiliza una versión del lenguaje SQL que se adhiere de cerca a los estándares internacionales, incluyendo características de las especificaciones más recientes de SQL, como SQL:2011, SQL:2016, y SQL:2019. PostgreSQL es conocido por su cumplimiento con los estándares SQL y por su capacidad de incorporar funcionalidades avanzadas y extensiones propias.

PostgreSQL, a lo largo de sus versiones, ha ido incorporando cada vez más características de los estándares SQL, desde SQL-92 hasta los más recientes, como SQL:2016 y SQL:2019. A continuación, te detallo cómo cada versión principal de PostgreSQL ha ido adoptando y extendiendo estos estándares.

La siguiente tabla muestra las versiones de PostgreSQL y los estándares SQL que implementa cada una:

| **Versión de PostgreSQL** | **Estándar SQL Implementado**        | **Notas**                                                                                       |
|---------------------------|--------------------------------------|-----------------------------------------------------------------------------------------------|
| PostgreSQL 6.x            | SQL-92                               | Introducción de características básicas del estándar SQL-92.                                  |
| PostgreSQL 7.x            | SQL-92 y SQL:1999                    | Soporte mejorado para subconsultas y funciones agregadas.                                     |
| PostgreSQL 8.0            | SQL:1999                             | Introducción de transacciones avanzadas, y mejoras en subconsultas y procedimientos.          |
| PostgreSQL 8.4            | SQL:2003                             | Incorporación de funciones de ventana y CTEs (Common Table Expressions).                      |
| PostgreSQL 9.0            | SQL:2003 y SQL:2008                  | Soporte para replicación y gestión de datos XML.                                              |
| PostgreSQL 9.1            | SQL:2008                             | Implementación de funciones de ventana y soporte para estándares avanzados de transacciones.  |
| PostgreSQL 9.3            | SQL:2011                             | Mejoras en manejo de JSON y funciones avanzadas en las consultas.                             |
| PostgreSQL 9.4            | SQL:2011 y SQL:2016                  | Introducción de JSONB, un formato binario de JSON más rápido y eficiente.                     |
| PostgreSQL 9.6            | SQL:2016                             | Mejoras en paralelismo de consultas y soporte de funciones avanzadas de manejo de datos.      |
| PostgreSQL 10             | SQL:2016                             | Soporte para declarative table partitioning y mejoras en el paralelismo y en funciones JSON.  |
| PostgreSQL 11             | SQL:2016                             | Introducción de mejoras en el manejo de índices y más funciones de ventana.                   |
| PostgreSQL 12             | SQL:2016 y parciales de SQL:2019     | Optimización en consultas con particionamiento y mejoras en la gestión de JSON y funciones.   |
| PostgreSQL 13             | SQL:2016 y características de SQL:2019| Mejoras en índices y funciones avanzadas, con soporte parcial para funcionalidades SQL:2019.  |
| PostgreSQL 14             | SQL:2016 y características de SQL:2019| Nuevas funciones de ventana y mejoras en el rendimiento del sistema de transacciones.         |
| PostgreSQL 15             | SQL:2016 y algunas de SQL:2019       | Incorporación de nuevas funciones SQL avanzadas y soporte de tipos de datos adicionales.      |

Esta tabla refleja cómo PostgreSQL ha ido incorporando y mejorando las características de los estándares SQL a lo largo de sus versiones, destacando su enfoque en la compatibilidad y la innovación en la funcionalidad de bases de datos.

A continuación, se muestra un ejemplo de sentencias SQL en un SGBD PostgreSQL para crear una tabla y un índice, e insertar registros en la tabla:

```SQL
-- Creación de la tabla con la clave primaria y un índice en la columna correo
CREATE TABLE clientes (
    id INT PRIMARY KEY,
    nombre VARCHAR(50),
    correo VARCHAR(50),
    fecha_registro DATE
);

-- Creación del índice en la columna correo para optimizar las búsquedas por correo
CREATE INDEX idx_correo ON clientes(correo);

-- Inserción de los 5 registros
INSERT INTO clientes (id, nombre, correo, fecha_registro) VALUES
(1, 'Juan Pérez', 'juan.perez@mail.com', '2024-09-15'),
(2, 'María García', 'maria.garcia@mail.com', '2024-09-16'),
(3, 'Carlos Sánchez', 'carlos.sanchez@mail.com', '2024-09-17'),
(4, 'Ana López', 'ana.lopez@mail.com', '2024-09-18'),
(5, 'Luis Fernández', 'luis.fernandez@mail.com', '2024-09-19');
```

Para buscar el registro con id = 4, puedes usar el comando _SELECT_ con la cláusula _WHERE_ para filtrar por el _id_:

```SQL
-- Consulta SQL para buscar el registro con id = 4
SELECT * FROM clientes WHERE id = 4;
```

Descripción de los comandos:
* __CREATE TABLE clientes (...)__: crea una tabla llamada clientes con las siguientes columnas:
  * __id INT PRIMARY KEY__: define el campo id como un entero y clave primaria de la tabla, garantizando que cada registro sea único.
  * __nombre VARCHAR(50)__: almacena los nombres con un máximo de 50 caracteres.
  * __correo VARCHAR(50)__: almacena las direcciones de correo electrónico con un máximo de 50 caracteres.
  * __fecha_registro DATE__: almacena las fechas en formato YYYY-MM-DD.
* __CREATE INDEX idx_correo ON clientes(correo);__: crea un índice llamado idx_correo en la columna correo para mejorar el rendimiento de las búsquedas y consultas basadas en el correo electrónico.
* __INSERT INTO clientes (...) VALUES (...)__: inserta los 5 registros especificados con sus respectivos datos de id, nombre, correo y fecha de registro.

### SQLite

SQLite es un motor de bases de datos embebido, ligero y de código abierto que no requiere una configuración de servidor separado.

Algunas de sus características son:
* Extremadamente ligero y fácil de integrar en aplicaciones.
* No requiere configuración de servidor ni administración de usuarios.
* Ideal para aplicaciones pequeñas y medianas con necesidades de almacenamiento local.
* Soporta transacciones ACID, lo que garantiza la integridad de los datos.

Utilizado en aplicaciones móviles (iOS y Android), navegadores web, software de escritorio, y pequeños dispositivos embebidos.


### SQL Server (Microsoft SQL Server)

Descripción: SQL Server es un sistema de gestión de bases de datos relacional desarrollado por Microsoft. Es conocido por su integración con el ecosistema de productos de Microsoft y su capacidad para manejar datos a gran escala.
Características:
Soporte para transacciones ACID, procedimientos almacenados, y funcionalidades avanzadas de seguridad.
Integración estrecha con otros productos de Microsoft como Azure, .NET, y Visual Studio.
Capacidades de Business Intelligence con herramientas como SQL Server Reporting Services (SSRS) y SQL Server Integration Services (SSIS).
Alta disponibilidad con características como AlwaysOn Availability Groups.
Uso Común: Utilizado ampliamente en entornos empresariales, aplicaciones comerciales, sistemas de gestión, y como backend para aplicaciones .NET.
Conclusión
Cada sistema de bases de datos tiene sus fortalezas y aplicaciones específicas, desde la ligereza de SQLite hasta la robustez de Oracle y SQL Server. La elección del sistema adecuado depende de factores como el tamaño de los datos, la complejidad de las consultas, la necesidad de escalabilidad, y el entorno en el que se va a desplegar la aplicación. En la actualidad, las bases de datos relacionales siguen siendo esenciales para la mayoría de las aplicaciones empresariales, sitios web, y servicios en la nube debido a su capacidad para gestionar datos de forma estructurada y fiable.

## Sistemas Gestores de Bases de Datos NoSQL

### MongoDB

__MongoDB__ es un sistema de base de datos NoSQL orientado a documentos. A diferencia de las bases de datos relacionales (SQL), MongoDB utiliza un modelo de datos flexible basado en documentos JSON (llamados BSON en MongoDB) en lugar de tablas y registros.
Al ser NoSQL, permite una estructura de datos más flexible, lo que es ideal para manejar grandes volúmenes de datos que pueden no seguir un esquema rígido.

Principales características:
* __NoSQL (No Relacional)__: MongoDB no sigue el esquema clásico de tablas, columnas y filas. En lugar de ello, los datos se almacenan en colecciones de documentos, lo que da mayor flexibilidad.
* __Documentos BSON (Binary JSON)__: los documentos de MongoDB se almacenan en un formato binario basado en JSON. Esto permite almacenar estructuras de datos complejas y tipos de datos avanzados.
* __Esquema flexible__: A diferencia de las bases de datos SQL, MongoDB no requiere que todos los documentos en una colección tengan la misma estructura, lo que facilita la evolución de la base de datos.
* __Escalabilidad horizontal__: MongoDB está diseñado para escalar horizontalmente mediante particionamiento (sharding). Esto significa que grandes volúmenes de datos pueden distribuirse en varios servidores.
* __Alta disponibilidad__: utiliza la replicación mediante conjuntos de réplicas para garantizar que los datos estén disponibles incluso en caso de fallos.

Estructura de MongoDB:
* __Base de Datos__: es un conjunto de colecciones. Cada base de datos tiene su propio conjunto de archivos en el sistema de archivos.
* __Colección__: es un grupo de documentos relacionados. En términos SQL, podría compararse con una tabla.
* __Documento__: es la unidad básica de datos en MongoDB. Se representa en formato JSON o BSON. Contiene pares de clave-valor, y puede incluir anidaciones (documentos dentro de documentos).
* __Campos__: Cada documento tiene múltiples campos, que son el equivalente a las columnas en SQL.
1. Consultas en MongoDB
Las consultas en MongoDB se hacen a través de métodos y operadores basados en JSON.

Ejemplo de consulta en la consola del SGBD de MongoDB en una consulta:

```
> use miBaseDeDatos
switched to db miBaseDeDatos

> db.clientes.find().pretty()
{
  "_id": 1,
  "nombre": "Juan Pérez",
  "correo": "juan.perez@mail.com",
  "fechaRegistro": "2024-09-15"
}
{
  "_id": 2,
  "nombre": "María García",
  "correo": "maria.garcia@mail.com",
  "fechaRegistro": "2024-09-16"
}
{
  "_id": 3,
  "nombre": "Carlos Sánchez",
  "correo": "carlos.sanchez@mail.com",
  "fechaRegistro": "2024-09-17"
}
{
  "_id": 4,
  "nombre": "Ana López",
  "correo": "ana.lopez@mail.com",
  "fechaRegistro": "2024-09-18"
}
{
  "_id": 5,
  "nombre": "Luis Fernández",
  "correo": "luis.fernandez@mail.com",
  "fechaRegistro": "2024-09-19"
}
```

Descripción de los comandos:
* __db.clientes.find().pretty()__: este comando muestra todos los documentos de la colección clientes de una manera legible (pretty format). Cada objeto representa un registro de cliente con un identificador único (_id), un nombre, un correo y la fecha de registro.

Los índices en MongoDB mejoran la eficiencia de las consultas. Se pueden crear índices de cualquier campo de los documentos.

```
db.clientes.createIndex({ _id: 1 });
```

Ventajas de MongoDB: 
* __Escalabilidad__: ideal para aplicaciones que requieren escalabilidad horizontal y grandes volúmenes de datos.
* __Flexibilidad de esquema__: permite añadir, modificar o eliminar campos en los documentos sin afectar otros documentos.
* __Alta disponibilidad__: a través de la replicación y la partición, MongoDB garantiza la disponibilidad y recuperación rápida ante fallos.
* __Velocidad en lecturas y escrituras__: especialmente cuando se usan índices adecuados, MongoDB es eficiente para operaciones de lectura/escritura.

> __Nota__: el escalado horizontal (también conocido como escalado a lo ancho) es una estrategia para mejorar la capacidad y el rendimiento de un sistema añadiendo más instancias o nodos en paralelo, en lugar de aumentar la capacidad de los recursos existentes. En lugar de mejorar la capacidad de un solo servidor (como agregar más CPU o memoria), se agregan más servidores o nodos al sistema. Cada nueva instancia ayuda a distribuir la carga de trabajo, lo que mejora el rendimiento general del sistema y su capacidad para manejar más usuarios o transacciones.

### Redis

__Redis__ (_Remote Dictionary Server_) es un sistema de gestión de bases de datos NoSQL en memoria, que se utiliza principalmente como base de datos, caché y broker de mensajes. Almacena los datos en clave-valor y es altamente eficiente debido a que los datos se gestionan principalmente en memoria RAM, lo que le proporciona un rendimiento extremadamente rápido.

Redis soporta estructuras de datos como cadenas, listas, conjuntos, conjuntos ordenados y hashes, lo que lo diferencia de otros sistemas de bases de datos clave-valor más simples.

Principales características:
* __Almacenamiento en memoria__: Redis almacena todos sus datos en memoria, lo que permite operaciones de lectura y escritura extremadamente rápidas, pero también puede persistir los datos en disco si es necesario.
* __Estructuras de datos complejas__: Redis no solo maneja claves y valores simples, sino también tipos de datos más complejos como listas, conjuntos, hashes, y más.
* __Persistencia opcional__: Aunque es una base de datos en memoria, Redis ofrece opciones para persistir datos en disco para garantizar la durabilidad.
* __Operaciones atómicas__: Todas las operaciones en Redis son atómicas, lo que significa que se completan completamente o no se completan en absoluto.
* __Replicación maestro-esclavo__: Redis permite replicar los datos de un servidor maestro a múltiples réplicas esclavas, lo que mejora la disponibilidad y el rendimiento.

Estructura de Redis:
* __Clave-Valor__: la estructura principal de Redis se basa en el almacenamiento de datos en pares clave-valor. Cada clave en Redis está asociada con uno de los varios tipos de datos soportados.

Tipos de Datos:
* __Strings__: tipo de dato básico, almacena cadenas de texto o datos binarios.
* __Lists__ (_Listas_): listas de cadenas ordenadas por inserción.
* __Sets__ (_Conjuntos_): colecciones de cadenas únicas sin orden.
* __Sorted Sets__ (_Conjuntos ordenados_): similar a los conjuntos, pero cada elemento tiene una puntuación asociada que determina el orden.

Redis se usa comúnmente para almacenar en caché datos que se acceden frecuentemente, mejorando así el rendimiento de las aplicaciones.


