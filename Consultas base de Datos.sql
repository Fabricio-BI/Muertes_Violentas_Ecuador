--Total de Muertes Violentas por Año

Select YEAR(Fecha_Delito) as Año,COUNT(Id_Registro) as Cantidad
FROM Registro_Muertes
GROUP BY YEAR(Fecha_Delito)
ORDER BY Cantidad DESC

--Total de Muertes Violentas por Presunta Motivacion 

SELECT MD.Presunta_Motivacion as Motivacion ,
	   COUNT(RM.Id_Registro) as Cantidad 	
FROM Registro_Muertes RM
JOIN MOTIVACION_DELITO MD ON RM.Id_Motivacion= MD.Id_Motivacion
GROUP BY MD.Presunta_Motivacion
ORDER BY Cantidad DESC 

--Total de Muertes Violentas por Arma Usada 
SELECT AUS.Nombre_Arma,
		COUNT(RM.Id_Registro) as Cantidad
FROM Registro_Muertes RM
JOIN ARMA_USADA AUS ON RM.Id_Arma= AUS.Id_Arma 
GROUP BY AUS.Nombre_Arma
ORDER BY Cantidad DESC

