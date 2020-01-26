library(ggplot2)
library(datasets)
data("mtcars")

mtcars$cyl_labels <- factor(as.character(mtcars$cyl), labels = c("4 Cylinder", "6 Cylinder", "8 Cylinder"))
factor()


qplot(mtcars$mpg, mtcars$disp,data = mtcars, color = mtcars$cyl,facets = .~mtcars$cyl, geom=c("point", "smooth"))
qplot(mtcars$mpg, data=mtcars,facets = mtcars$cyl~., binwidth = 2)
q

ggplot(mtcars,aes(mtcars$mpg,mtcars$disp,color=mtcars$cyl_labels)) + geom_density()+ facet_wrap(mtcars$cyl_labels) +  theme_bw()

