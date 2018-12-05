mtcars
levels(mtcars$cyl)
barplot(mtcars$vs)
library(ggplot2)
f=table(mtcars$cyl,mtcars$vs,mtcars$am,mtcars$gear,mtcars$carb)
f
###############barplot
barplot(f,col = rainbow(3),legend = rownames(f))
ggplot(mtcars,aes(x=factor(cyl))) +geom_bar(fill="red")
ggplot(mtcars,aes(x=factor(vs))) +geom_bar(fill="blue")
ggplot(mtcars,aes(x=factor(gear))) +geom_bar(fill="blue")
ggplot(mtcars,aes(x=factor(am))) +geom_bar(fill="blue")
ggplot(mtcars,aes(x=factor(carb))) +geom_bar(fill="blue")

ggplot(mtcars,aes(x=factor(carb))) +geom_sc(fill="blue")

##########scatterplot
library(car)
scatterplotMatrix(~ mpg+disp+drat+wt|gear,mtcars)

######density plot
d <- density(mtcars$mpg)
plot(d)
library(sm)
attach(mtcars)

sm.density.compare(mpg, cyl, xlab="Miles Per Gallon")
title(main="MPG Distribution by Car Cylinders")
