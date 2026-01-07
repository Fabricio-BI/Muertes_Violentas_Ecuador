--Creacon de la Base de Datos
CREATE DATABASE RegistroMuertes_Ecuador;

USE RegistroMuertes_Ecuador;
---Creacion de la Tabla de Armas usadas en los delitos
CREATE TABLE Directorio_Armas (
    id_tipo_arma INT IDENTITY(1,1) PRIMARY KEY,
    tipo_arma VARCHAR(100) NOT NULL,
    arma VARCHAR(100) NOT NULL
);


USE RegistroMuertes_Ecuador;
--Creacion de la tabla Ubicacion donde se cometio el delito 
CREATE TABLE Ubicacion_Delito (
	id_canton INT IDENTITY(1,1) PRIMARY KEY,
	canton VARCHAR(100) NOT NULL ,
	provincia VARCHAR(100) NOT NULL,
	zona VARCHAR(100) NOT NULL,
	area_hecho VARCHAR(100) NOT NULL
);

--Creacion de la tabla de Armas Usadas en el delito 
CREATE TABLE Armas_Usadas (
	id_tipo_arma INT IDENTITY(1,1) PRIMARY KEY,
	tipo_arma VARCHAR(100) NOT NULL,
	arma VARCHAR(100) NOT NULL
);

--Creacion de la tabla de Delito
CREATE TABLE Delito(
	id_muerte INT IDENTITY(1,1) PRIMARY KEY,
	tipo_muerte VARCHAR(100) NOT NULL
);

--Creacion de la Tabla Motivacion del Delito 
CREATE TABLE Motivacion_Delito(
	id_motivacion INT IDENTITY(1,1)PRIMARY KEY,
	motivacion_observada VARCHAR(100)NOT NULL,
	presunta_motivacion VARCHAR(100) NOT NULL,
	id_tipo_arma INT NOT NULL
);

--Creacion de la Tabla Registro General de las muertes 
CREATE TABLE Registro_General (
	id_caso INT IDENTITY(1,1) PRIMARY KEY,
	fecha_infraccion DATE NOT NULL,
	id_muerte INT NOT NULL,
	id_canton INT NOT NULL,
	id_tipo_arma INT NOT NULL,
	id_motivacion INT NOT NULL,
	edad INT NOT NULL,
	sexo TEXT NOT NULL,
	cantidad INT NOT NULL
	FOREIGN KEY (id_muerte) REFERENCES Delito(id_muerte),
	FOREIGN KEY (id_canton) REFERENCES Ubicacion_Delito(id_canton),
	FOREIGN KEY (id_tipo_arma) REFERENCES Armas_Usadas(id_tipo_arma),
	FOREIGN KEY (id_motivacion) REFERENCES Motivacion_Delito(id_motivacion)
)


--Añadimos datos a las tablas 
--Cargar Manualmente informacion a la tabla Directorio_Armas

INSERT INTO Delito(tipo_muerte)
VALUES
	('ASESINATO'),
	('HOMICIDIO'),
	('SICARIATO'),
	('FEMICIDIO')

---Cargar Manualmente informacion a la tabla Directorio_Armas 
INSERT INTO Armas_Usadas(tipo_arma,arma)
VALUES
	('OTRO','ARMA DE FUEGO'),
	('OTRO','ARMA DE FUEGO'),
	('CUCHILLO','ARMA BLANCA'),
	('PISTOLA','ARMA DE FUEGO'),
	('REVOLVER','ARMA DE FUEGO'),
	('OBJETO CONTUSO','ARMA CONTUNDENTE'),
	('OTRAS ARMA CORTA','ARMA DE FUEGO'),
	('CARTUCHERA','ARMA DE FUEGO'),
	('SOGA','CONSTRICTORA'),
	('NINGUNA','OTROS'),
	('SUBAMETRALLADORA','ARMA DE FUEGO'),
	('ESCOPETA','ARMA DE FUEGO'),
	('EXPLOSIVOS','OTROS'),
	('ROCA','ARMA CONTUNDENTE'),
	('MACHETE','ARMA BLANCA'),
	('FARMACOS','SUSTANCIAS'),
	('PRENDA TEXTIL','CONSTRICTORA'),
	('PALO','ARMA CONTUNDENTE'),
	('GARROTE','ARMA CONTUNDENTE'),
	('FUNDA','OTROS'),
	('ALCOHOL','SUSTANCIAS'),
	('LANZA','ARMA BLANCA'),
	('CARABINA','ARMA DE FUEGO'),
	('SIN_DATO','ARMA DE FUEGO'),
	('BARRA','ARMA CONTUNDENTE'),
	('CORREA','CONSTRICTORA'),
	('HIDROCARBUROS','OTROS'),
	('CINTA DE EMBALAJE','OTROS'),
	('DESTORNILLADOR','ARMA BLANCA'),
	('NAVAJA','ARMA BLANCA'),
	('VENENO','SUSTANCIAS'),
	('ESCOPOLAMINA','SUSTANCIAS'),
	('CABLE','CONSTRICTORA'),
	('AMETRALLADORA','ARMA DE FUEGO'),
	('MARTILLO','ARMA CONTUNDENTE'),
	('CUERDA','CONSTRICTORA'),
	('PUÑAL','ARMA BLANCA'),
	('FUSIL','ARMA DE FUEGO'),
	('NATURAL TÓXICA','SUSTANCIAS'),
	('REPETIDORA','ARMA DE FUEGO'),
	('AGROQUIMICO','SUSTANCIAS'),
	('TIJERAS','ARMA BLANCA'),
	('OTROS ARMA LARGA','ARMA DE FUEGO'),
	('DROGAS ADICTIVAS','SUSTANCIAS'),
	('PICA HIELO','ARMA BLANCA'),
	('DAGA','ARMA BLANCA'),
	('HOJA DE AFEITAR','ARMA BLANCA'),
	('CADENA','CONSTRICTORA'),
	('ELECTRICIDAD','OTROS'),
	('BATE','ARMA CONTUNDENTE'),
	('ACIDOS','OTROS'),
	('BISTURI','ARMA BLANCA'),
	('PISTOLA  DE PERFORACION','ARMA DE FUEGO'),
	('ESCOPETA COMPACTA','ARMA DE FUEGO'),
	('NAVAJA','ARMA BLANCA'),
	('SABLE','ARMA BLANCA'),
	('RILFE DE CAZA','ARMA DE FUEGO'),
	('CARTUCHERA  DE BOLSILLO','ARMA DE FUEGO'),
	('PISTOLA AMETRALLADORA','ARMA DE FUEGO'),
	('RIFLE DE ASALTO','ARMA DE FUEGO'),
	('AMETRALLADORA LIGERA','ARMA DE FUEGO'),
	('HACHA','ARMA BLANCA')

---Cargar Manualmente informacion a la tabla Motivacion Delito

INSERT INTO Motivacion_Delito(motivacion_observada,presunta_motivacion,id_tipo_arma)
VALUES
	('DEUDAS','VIOLENCIA COMUNITARIA',1),
	('RIÑAS','VIOLENCIA COMUNITARIA',2),
	('AMENAZA','DELINCUENCIA COMUN',4),
	('ROBO A PERSONAS','DELINCUENCIA COMUN',3),
	('ACTOS DE ODIO','VIOLENCIA COMUNITARIA',4),
	('LINCHAMIENTO','VIOLENCIA COMUNITARIA',3),
	('TRAFICO INTERNOS DE DROGAS (MICROTRAFICO)','DELINCUENCIA COMUN',4),
	('EMOCIONAL','VIOLENCIA COMUNITARIA',6),
	('MALTRATO','VIOLENCIA INTRAFAMILIAR',5),
	('SENTIMENTAL','VIOLENCIA INTRAFAMILIAR',8),
	('ROBO A DOMICILIOS','DELINCUENCIA COMUN',9),
	('ROBO DE BIENES PATRIMONIALES','DELINCUENCIA COMUN',7),
	('ROBO A UNIDADES ECONÓMICAS','DELINCUENCIA COMUN',4),
	('LITIGIO DE TIERRAS','VIOLENCIA COMUNITARIA',6),
	('ROBO DE CARROS','DELINCUENCIA COMUN',3),
	('DEFENSA PROPIA','DELINCUENCIA COMUN',4),
	('VIOLACION FAMILIAR DIRECTO (PERSONA CONOCIDA)','VIOLENCIA SEXUAL',17),
	('ROBO EN EJES VIALES O CARRETERAS','DELINCUENCIA COMUN',4),
	('EVASION DE LA JUSTICIA','DELINCUENCIA COMUN',1),
	('SECUESTRO','TRANSNACIONAL',4),
	('ROBO DE MOTOS','DELINCUENCIA COMUN',7),
	('VIOLACION SEXUAL (DESCONOCIDO)','DELINCUENCIA COMUN',3),
	('SIN_DATO','NO DETERMINADA',10),
	('SECUESTRO EXPRESS','DELINCUENCIA COMUN',5),
	('TRANSTORNOS MENTALES','SICOPATOLOGIAS',4),
	('TRAFICO INTERNACIONAL DE DROGA','TRANSNACIONAL',3),
	('LITIGIO DE BIENES','VIOLENCIA INTRAFAMILIAR',6),
	('ROBO A ENTIDADES FINANCEIRAS','DELINCUENCIA COMUN',15),
	('ABIGEATO','DELINCUENCIA COMUN',2),
	('CONTRABANDO','TRANSNACIONAL',13),
	('TERRORISMO','TERRORISMO',4),
	('TRAFICOS DE MIGRANTES','TRANSNACIONAL',24),
	('TRATA DE PERSONAS','TRANSNACIONAL',4),
	('TRAFICO DE ARMAS','TRANSNACIONAL',4),
	('RECEPTACIÓN ILEGAL (CACHINERIA)','DELINCUENCIA COMUN',1)

---Cargar  informacion a la tabla Ubicacion_Delito

BULK INSERT Ubicacion_Delito
FROM 'C:\Users\HP\Documents\1.Fabricio Coque\16.Proyectos\2.SQL\Libro 12(Hoja3) (2).csv'
WITH
(
    FIELDTERMINATOR = ';',    -- Separador de campos
    ROWTERMINATOR = '\n',     -- Separador de filas
    FIRSTROW = 2             -- Si hay encabezado en la primera fila
)


---Cargar informacion a la tabla Registro_General
BULK INSERT Registro_General
FROM 'C:\Users\HP\Documents\1.Fabricio Coque\16.Proyectos\2.SQL\MuertesViolentas2014-2024.csv'
WITH 
(
	FIELDTERMINATOR =',',  -- Separador de campos
	ROWTERMINATOR='\n',    -- Separador de filas
	FIRSTROW= 2            -- Si hay encabezado en la primera fila
)