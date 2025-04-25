# This is a basic R script, you can execute single lines or marked lines by
# the "Run" command in the upper list or by pressing CTRL+Enter (STRG+Enter on
# German keyboards). 

# The strength of scripts is that they can be ran headless and is best for
# computationally heavy tasks.

rm(list = ls()) # This clear all R-history and should be included in all code
library(dplyr)  # Library for more elegant data handling
library(ggplot2)# Powerful plotting library

# Anything written that is not commented is interpreted as R-code and will be 
# attempted to be ran. 

data(iris)

# Make a boxplot of Sepal.Width for the different Species of irises
ggplot(aes(x=Species, y=Sepal.Width), data=iris) + geom_boxplot()

# The first bit of code ggplot(aes(x=Species, y=Sepal.Width), data=iris) set up 
# the data set that should be handled and what role the different columns have.
# The code bit geom_boxplot() gives the instruction that we want a boxplot.
# The resulting plot appear in the bottom right panel of RStudio. There you also
# have the option exporting the image.

# Let's do a second plot
ggplot(aes(x=Petal.Length, y=Sepal.Width), data=iris) + geom_point()

# The second plot now appears bottom right and to see the previous plot you can
# press the left arrow in the top of the bottom right panel.

# While scripts are great for running in the background, you have already seen
# that 90% of what is written here are comments, which are not so nice to either
# write or read. Therefore we are now switching to a better solution within 
# RStudio, please open Plotting_R_Markdown.Rmd.
