library(terra)

setwd("C:\\Users\\Utente\\Desktop\\Telerilevamento geo-ecologico in R")
getwd()
list.files()

richat <- rast("richatstructure_oli_20260306.jpg")
richat <- flip(richat)
plot(richat)



library(imageRy)
im.multiframe(2,1)
plot(richat[[1]])
plot(richat[[2]])
dev.off()



