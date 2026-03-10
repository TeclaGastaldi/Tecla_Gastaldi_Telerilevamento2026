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

#stack mettono tutte insieme le bande della stessa immagine satellitare
sentinel <- c(b2, b3, b4, b8)
plot(sentinel)
plot(sentinel, col=inferno(100))

names(sentinel)

plot(sent$sentinel.dolomites.b8) #$ in R serve per collegare vari pezzi tutti insieme, ma non ci piace

#layer1=b2, layer2=b3, layer3=b4, layer4=b8
plot(sentinel[[4]])
plot(sentinel[[2]])

#sist rife
library(gggplot)
?im.ggplot

b2<-im.import("sentinel.dolomites.b2.tif")
b3<-im.import("sentinel.dolomites.b3.tif")
b4<-im.import("sentinel.dolomites.b4.tif")
b8<-im.import("sentinel.dolomites.b8.tif")

p1<-im.ggplot(b8)
p2<-im.ggplot(b4)
library(patchwork)

p1+p2

#Multiframe: riassunto
#1. par(mfrow=c(1,2))
#2. im.multiframe(1,2)
#3. stack
#4. ggplot2 patchwork

#RGB plotting
sentinel<-c(b2, b3, b4, b8)

#3 filtri e 4 bande, esempio usiamo solo le bande del visibile
im.plotRGB(sentinel, r=3, g=2, b=1)#natural colors

im.plotRGB(sentinel, r=4, g=3, b=2)#false colors

im.multiframe(1,2)
im.plotRGB(sentinel, r=3, g=2, b=1)#natural colors
im.plotRGB(sentinel, r=4, g=3, b=2)#false colors

plot(sentinel[[4]])
im.plotRGB(sentinel, r=4, g=3, b=2)#false colors

#Nir on green
im.plotRGB(sentinel, r=3, g=4, b=2)

#Excercise: NIR on top of the blue component of the RGB scheme
im.plotRGB(sentinel, r=3, g=4, b=2)

#Plot the four manners of RGB in a single multiframe
im.multiframe(2,2)
im.plotRGB(sentinel, r=3, g=2, b=1)
im.plotRGB(sentinel, r=4, g=3, b=2)
im.plotRGB(sentinel, r=3, g=4, b=2)
im.plotRGB(sentinel, r=3, g=2, b=4)

dev.off()

im.multiframe(1,2)
im.plotRGB(sentinel, r=4, g=3, b=2)
im.plotRGB(sentinel, r=4, g=2, b=3)

pairs(sentinel)

#simplifying the function
im.plotRGB(sentinel, 4, 2, 3)

#plotRGB from terra
plotRGB(sentinel, 4, 2, 3, stretch="lin")
