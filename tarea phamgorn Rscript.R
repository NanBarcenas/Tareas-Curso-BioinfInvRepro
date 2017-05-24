library(phangorn)


## Importo mi aliniamiento.

pentas<-read.phyDat(file.path(fdir="aliniamiento_fasta"), format = "fasta", type = "DNA")

## Genero una matriz de distancias

dsmtx<-dist.ml(pentas)

## Creo arbol de NJ con la Matriz

treeNJ<-NJ(dsmtx)

## Para ver mi arbol 

plot(treeNJ)
