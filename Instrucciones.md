# PASOS PARA REALZIAR EL ESTUDIO

## Preparar datos
### Recolocar datos de calidad del aire (Generando nuevo execel)
Los datos deben estar contenidos en un excel con las siguientes columnas:
	- Fecha 
	- Estacion
	- NO2
	- SO2
	- CO
	- PM10
	- PM 2.5
	- O3
	- BTX
	- HC
Asignar a los valores no validos un Na (se realiza por defecto), después, unirlos todos en un dataset

### Recolocar datos precipitaciones
Los datos delas precipitaciones deben estar en un excel con dos columnas, una fecha y otra la cantidad de precipitacion. Deben unirse en un dataset y cambiar el nombre de la 
columna precipitacion para que si no esta en UTF-8, no falle.
## Comienza el estudio
	- Cruzar datos de los años con las precipiatciones
	- Observar influencia de las precipitaciones
	- Elaboracion de graficas para visualziación de datos
