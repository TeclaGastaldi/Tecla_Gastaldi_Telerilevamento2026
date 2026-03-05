#R code for visualizing satellite images

library(terra)
library(imageRy)

install.packages("viridis")

im.list()

#importing images
b2<-im.import("sentinel.dolomites.b2.tif")

#Changing colors: digita su google r colors

cl <- colorRampPalette(c("salmon","seagreen1","royalblue3"))(100)#la parentesi esterna vuole dare numero di sfumature tra un colore e l'altro
plot(b2, col=cl)

#oppure usare il package viridis, che ha legende già create visibili anche da daltonici

library(viridis)
plot(b2,col=inferno(100))

#Excercise: plot with mako
plot(b2,col=mako(100))

#Excercise: plot band 2 with a greyscale palette

cl.1<- colorRampPalette(c("gray41","#9C9C9C","gray81"))(100)
plot(b2,col=cl.1)

#Multiframe
par(mfrow=c(1,2))
plot(b2,col=cl.1)
plot(b2,col=inferno(100))

dev.off()

?im.multiframe
im.multiframe(1,2)
plot(b2,col=cl.1)
plot(b2,col=inferno(100))

#Import band 4
b3<-im.import("sentinel.dolomites.b3.tif")

#Excerise: change viridis palette
plot(b3,col=mako(100))
plot(b3,col=plasma(100))

#Import band 4
b4<-im.import("sentinel.dolomites.b4.tif")

#Import band 8
b8<-im.import("sentinel.dolomites.b8.tif")

#Excercise: multiframe with the 4 bands, legendes: in line with the wavelenght
im.multiframe(2,2)
plot(b2,col=mako(100))
plot(b3,col=viridis(100))
plot(b4,col=rocket(100))
cl.2<- colorRampPalette(c("slateblue","mediumorchid2","lightpink"))(100)
plot(b8,col=cl.2)






