#Archivo uutilziado para recolocar los datos en un nuevo excel

#Instalamos paquetes para agrupar csv

install.packages("data.table")

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
data <- rbind(list(data2001,data2002,data2003,data2004,data2005,data2006,data2007,data2008,data2009,data2010,data2011,data2012,
              data2013,data2014,data2015,data2016,data2017,data2018), fill = TRUE);

datasetMadrid  <- as.data.frame(data); 

##observamos que todos los datos se han unido, aplicando head y tail al dataset para ver cuando empiezan y acaban fechas
head(datasetMadrid)
tail(datasetMadrid)

#Introducimos los datos en una serie temporal


#Cargamos los datos dfe las precipitaciones


