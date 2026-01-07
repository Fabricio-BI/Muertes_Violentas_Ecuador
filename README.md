
# Análisis de Muertes Violentas en Ecuador (2014-2024)

## Descripción del Proyecto
Este proyecto consiste en la creación de una base de datos en SQL que almacena y organiza información sobre las muertes violentas ocurridas en Ecuador en el periodo 2014-2024. La base de datos permite analizar patrones de violencia a lo largo del tiempo y en diferentes ubicaciones geográficas.

## Estructura de la Base de Datos
La base de datos contiene una tabla principal llamada `muertes_violentas`, con los siguientes campos:

- `id`: Identificador único de cada registro.
- `tipo_muerte`: Clasificación legal del caso (asesinato, homicidio, femicidio, sicariato, etc.).
- `provincia`: Provincia donde ocurrió el hecho.
- `canton`: Cantón donde ocurrió el hecho.
- `arma`: Tipo de arma utilizada (arma blanca, arma de fuego, etc.).
- `tipo_arma`: Especificación del arma utilizada (cuchillo, revólver, etc.).
- `presunta_motivacion`: Razón probable del hecho (delincuencia común, violencia intrafamiliar, etc.).
- `fecha`: Fecha en la que ocurrió el suceso.

## Objetivos del Proyecto
- Construir un esquema relacional eficiente para almacenar datos de crímenes violentos.
- Facilitar el análisis de tendencias de violencia en diferentes regiones y periodos de tiempo.
- Permitir consultas SQL para identificar patrones en los datos.

## Uso de la Base de Datos
1. **Creación de la base de datos**: Ejecutar el script SQL para crear la base de datos y la tabla `muertes_violentas`.
2. **Carga de datos**: Insertar los datos extraídos del archivo original en la base de datos.
3. **Consultas SQL**: Utilizar consultas para analizar tendencias y realizar reportes.

## Requisitos
- SQL (MySQL, PostgreSQL o SQL Server).
- Editor SQL o entorno de desarrollo compatible.

## Fuentes de Datos
Los datos provienen de registros oficiales y han sido estructurados para su almacenamiento en bases de datos relacionales.

## Autor
Fabricio Coque Marin - Analista de Datos

---
Este repositorio se actualizará con consultas SQL y reportes basados en los datos almacenados.
