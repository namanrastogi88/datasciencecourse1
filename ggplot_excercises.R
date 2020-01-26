library(ggplot2)
library(datasets)
data("mtcars")

mtcars$cyl_labels <- factor(as.character(mtcars$cyl), labels = c("4 Cylinder", "6 Cylinder", "8 Cylinder"))
factor()

str(mtcars)

ggplot(mtcars,aes(mtcars$mpg,mtcars$disp,color=mtcars$cyl_labels)) + geom_point()+ facet_wrap(mtcars$cyl_labels) + geom_smooth()+ theme_bw()
