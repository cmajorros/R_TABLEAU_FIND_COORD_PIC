
install.packages("imager")
library(imager)
Jasaman <- load.image("C:/Users/User/Pictures/Ja_Saman.jpg")

#plot the picture
plot(Jasaman)

#Check Dimension of Pic
dim(Jasaman)


#plot picture 1 and 2 frame
plot(Jasaman)


#cal rgb for each point
cscale <- function(r,g,b) rgb(g,r,b)
plot(Jasaman,colourscale=cscale,rescale=FALSE)



#Map grayscale values to blue
cscale <- function(v) rgb(0,0,v)
grayscale(Jasaman) %>% plot(colourscale=cscale,rescale=FALSE)

#cscale is now a function returning colour codes
cscale(0)


x <- "#FF2400FF"
paste(as.data.frame(x), collapse = " ")

bdf <- as.data.frame(Jasaman)





cluster <- kmeans(bdf["value"], centers = 20,  nstart = 1 )
cscale(cluster$centers)





cluster <- kmeans(Jasaman)
str(cluster)

color$color <-  data.frame(cluster$cluster)

str(color$color)
Jasaman_Draw <- data.frame(c(bdf))

write.table(Jasaman_Draw, "C:/Users/User/Documents/Jasaman_Draw.txt", sep="\t", row.names = F)



