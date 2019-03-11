#Archivo uutilziado para recolocar los datos en un nuevo excel

#Instalamos paquetes para agrupar csv
install.packages("data.table")

#Intslamos paquete para manipular ts
install.packages("xts")

#Cargamos los datos de los anos en un dataset (utilziamos read.csv2 ya que el separador es ;)

data2001<- read.csv(file = "madrid_2001.csv",header = TRUE);
data2002<- read.csv(file = "madrid_2002.csv",header = TRUE);
data2003<- read.csv(file = "madrid_2003.csv",header = TRUE);
data2004<- read.csv(file = "madrid_2004.csv",header = TRUE);
data2005<- read.csv(file = "madrid_2005.csv",header = TRUE);
data2006<- read.csv(file = "madrid_2006.csv",header = TRUE);
data2007<- read.csv(file = "madrid_2007.csv",header = TRUE);
data2008<- read.csv(file = "madrid_2008.csv",header = TRUE);
data2009<- read.csv(file = "madrid_2009.csv",header = TRUE);
data2010<- read.csv(file = "madrid_2010.csv",header = TRUE);
data2011<- read.csv(file = "madrid_2011.csv",header = TRUE);
data2012<- read.csv(file = "madrid_2012.csv",header = TRUE);
data2013<- read.csv(file = "madrid_2013.csv",header = TRUE);
data2014<- read.csv(file = "madrid_2014.csv",header = TRUE);
data2015<- read.csv(file = "madrid_2015.csv",header = TRUE);
data2016<- read.csv(file = "madrid_2016.csv",header = TRUE);
data2017<- read.csv(file = "madrid_2017.csv",header = TRUE);
data2018<- read.csv(file = "madrid_2018.csv",header = TRUE);

#unimos los datos en una lista para luego introducirla en un dataset
data <- data.table::rbindlist(list(data2001,data2002,data2003,data2004,data2005,data2006,data2007,data2008,data2009,data2010,data2011,data2012,
              data2013,data2014,data2015,data2016,data2017,data2018), fill = TRUE);

datasetMadrid  <- as.data.frame(data); 

##observamos que todos los datos se han unido, aplicando head y tail al dataset para ver cuando empiezan y acaban fechas
head(datasetMadrid)
tail(datasetMadrid)

#Introducimos los datos en una serie temporal


#Cargamos los datos de las precipitaciones
rainfall_2001<- readxl::read_xlsx("rainfall_2001.xlsx",col_names = TRUE);
rainfall_2002<- readxl::read_xlsx("rainfall_2002.xlsx",col_names = TRUE);
rainfall_2003<- readxl::read_xlsx("rainfall_2003.xlsx",col_names = TRUE);
rainfall_2004<- readxl::read_xlsx("rainfall_2004.xlsx",col_names = TRUE);
rainfall_2005<- readxl::read_xlsx("rainfall_2005.xlsx",col_names = TRUE);
rainfall_2006<- readxl::read_xlsx("rainfall_2006.xlsx",col_names = TRUE);
rainfall_2007<- readxl::read_xlsx("rainfall_2007.xlsx",col_names = TRUE);
rainfall_2008<- readxl::read_xlsx("rainfall_2008.xlsx",col_names = TRUE);
rainfall_2009<- readxl::read_xlsx("rainfall_2009.xlsx",col_names = TRUE);
rainfall_2010<- readxl::read_xlsx("rainfall_2010.xlsx",col_names = TRUE);
rainfall_2011<- readxl::read_xlsx("rainfall_2011.xlsx",col_names = TRUE);
rainfall_2012<- readxl::read_xlsx("rainfall_2012.xlsx",col_names = TRUE);
rainfall_2013<- readxl::read_xlsx("rainfall_2013.xlsx",col_names = TRUE);
rainfall_2014<- readxl::read_xlsx("rainfall_2014.xlsx",col_names = TRUE);
rainfall_2015<- readxl::read_xlsx("rainfall_2015.xlsx",col_names = TRUE);
rainfall_2016<- readxl::read_xlsx("rainfall_2016.xlsx",col_names = TRUE);
rainfall_2017<- readxl::read_xlsx("rainfall_2017.xlsx",col_names = TRUE);
rainfall_2018<- readxl::read_xlsx("rainfall_2018.xlsx",col_names = TRUE);


rainfall <- data.table::rbindlist(list(rainfall_2001,rainfall_2002,rainfall_2003,rainfall_2004,
              rainfall_2005,rainfall_2006,rainfall_2007,rainfall_2008,rainfall_2009,rainfall_2010,
              rainfall_2011,rainfall_2012,rainfall_2013,rainfall_2014,rainfall_2015,rainfall_2016,
              rainfall_2017,rainfall_2018), fill = TRUE)


datasetRainfall <- as.data.frame(rainfall);

#Liberamos memoria de los datos 
rm(list=ls(pat="20"))
rm(data)

#Colocamos nombre a la segunda colomna para quitar el acento
names(datasetRainfall)[2]<-"l/m2"
##observamos que todos los datos se han unido, aplicando head y tail al dataset para ver cuando empiezan y acaban fechas
head(datasetRainfall)
tail(datasetRainfall)

#Limpieza de datos datasetMadrid
#1) Calculamos el porcenje de NA para descartar aquellas columnas cuyo porcentage sea muy alto
naPerColumn <- colSums(is.na(datasetMadrid))
percentageNA <- naPerColumn/nrow(datasetMadrid) *100
barplot(percentageNA)