# Titolo del mio progetto d'esame

## Pacchetti utilizzati

Per questo esame i pacchetti utilizzati sono:

```r
library(terra)
```

## Importazione dei dati 
I dati sono stati importati da Earth Observatory: https://science.nasa.gov/earth/earth-observatory/eyeing-the-richat-structure/

Il codice utilizzato è il seguente:
- prima di tutto selezioniamo la seguente directory
```r
setwd("C:\\Users\\Utente\\Desktop\\Telerilevamento geo-ecologico in R")
getwd()
list.files()
```

Per importare i dati è stata utilizzata la funzione `rast()` del pacchetto `terra`:
```r
richat <- rast("richatstructure_oli_20260306.jpg")
richat <- flip(richat)
plot(richat)
```
<<img width="340" height="356" alt="2de55817-c575-47f7-82e7-c7778f1b6e3a" src="https://github.com/user-attachments/assets/8ab6d0ea-d747-4d8b-a56f-2e07c7cfe8cc" />

## Analisi esplorativa
```r
im.multiframe(2,1)
plot(richat[[1]])
plot(richat[[2]])
```
<img width="340" height="356" alt="6c36de78-bb72-4d11-88d3-f62b87e728f7" src="https://github.com/user-attachments/assets/f683b14e-4fed-49f5-b80f-2252d1bfc137" />



