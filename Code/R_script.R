# First R script

2+3

#oggetto e assegnazione
obj <- 2+3
obj = 2+3 #a livello di significato non è bella perchè è biunivoco, cioè obj è 2+3 e 2+3 è obj, nel caso precedente 2+3 viene assegnato in modo univoco a obj

tecla <- 4+6 
tecla

#tutte le operazioni possibili con i miei oggetti
obj+tecla
obj^tecla
obj/tecla

#vettori o arrays
sonia <- c(10, 8, 3, 1, 0) #questi sono elementi di un campionamento che rappresenta il vettore, legati tra loro tramite una funzione c() con all'interno gli argomenti (numero delfini)
giorgia <- c(3, 10, 20, 50, 100) #quantità inquinanti

plot(giorgia, sonia) #variabile indipendente sulla x che dipendono da variabile sulla y
 plot(giorgia, sonia, col="blue", pch=19) #colore e tipo di pallino 
plot(giorgia, sonia, col="blue", pch=19, cex=2) #dimesione dei simboli
plot(giorgia, sonia, col="blue", pch=19, cex=2, xlab="pollution", ylab="numero delfini") #nome degli assi

#installazione pacchetti
#CRAN
install.packages("terra")
library(terra)

#GitHub
install.packages("devtools") #remote
library(devtools)

install_github("ducciorocchini/imageRy")
