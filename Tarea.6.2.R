##Carga una df llamada futmat el archivo con el archivo maizteozintle_SNP50K_meta_extended.txt.
getwd()
fullmat<-read.delim("../meta/maizteocintle_SNP50k_meta_extended.txt")

#¿Que tipo de objeto creamos al cargar la base?

class(fullmat)

#¿Como se ven las primeras seis lineas del archivo?
head(fullmat)

#¿Cuantas muestras hay?
nrow(fullmat)

#¿De cuantos estados se tienen muestras?

levels(fullmat$Estado)

#¿cuantas muestras fueron colocadas antes de 1980?

fullmat$A.o._de_colecta[fullmat$A.o._de_colecta>1980] 

#¿Cuantas muestras hay de cada raza?

table(fullmat$Raza)


#En promedio ¿a que altitud fueron colocadas las muestras?

mean(fullmat$Altitud)

# ¿Y a que altitud maxima y minima fueron colectadas?

range(fullmat$Altitud, na.rm = FALSE)


#Crea una nueva df de datos solo con la muestra de la raza de Otillo

datos_olotillo <- subset (fullmat, Raza == "Olotillo")

#Crea una nueva df de datos solo con la muestra de la raza de Reventador, Jala y Ancho

subset(fullmat, Raza=="Reventador"|Raza == "Jala"|Raza == "Ancho")

datos_razas <-subset(fullmat, Raza=="Reventador"|Raza == "Jala"|Raza == "Ancho")


#Escribe la matrix anterior  en un archivo llamado "subcomat.cvs" en /meta.


write.csv(datos_razas,"../meta/subcomat.cvs")