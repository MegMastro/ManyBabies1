# loading tidyverse package
library(tidyverse)

# loading mpg datafram from ggplot2
ggplot2::mpg

# creating the scatterplot to find relationship between engine size (displ) and fuel efficiency (hwy)
ggplot(data = mpg) +
  geom_point(mapping = aes(x = displ, y = hwy))

# running ggplot data for practice
ggplot(data = mpg)

# what does drv variable describe?
?mpg

# mapping the aesthetics in my plot to variables in my dataset by color
ggplot(data = mpg) +
  geom_point(mapping = aes(x = displ, y = hwy, color = class))

# mapping the aesthetics in my plot to variables in my dataset by size
ggplot(data = mpg) +
  geom_point(mapping = aes(x = displ, y = hwy, size = class))

# mapping the aesthetics in my plot to variables in my dataset by alpha (transparency)
ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy, alpha = class))

# mapping the aesthetics in my plot to variables in my dataset by shape
ggplot(data = mpg) +
  geom_point(mapping = aes(x = displ, y = hwy, shape = class))

# creating a facet of class
ggplot(data = mpg) +
  geom_point(mapping = aes(x = displ, y = hwy)) +
  facet_wrap(~ class, nrow = 2)

# creating a facet plot with a combination fo 2 variables
ggplot(data = mpg) +
  geom_point(mapping = aes(x = displ, y = hwy)) +
  facet_grid(drv ~ cyl)
