
##
# cdl git practice! 
# Garrett K. and Sam E.
##

# load some libraries; installs if you don't have them already

if (!require("palmerpenguins")) install.packages("palmerpenguins")
library(palmerpenguins)

if (!require("tidyverse")) install.packages("tidyverse")
library(tidyverse)

# make the penguin data into a dataframe

penguins <- penguins_raw

# how many species do we have? 
unique(penguins$Species)

# make a boxplot! does body mass vary across species?

ggplot(penguins, aes(x = Species, y = `Body Mass (g)`, fill = Species)) +
  geom_boxplot() +
  scale_fill_manual(values = c("purple","orange", "pink")) +
  theme(axis.text.x = element_blank(),
        legend.position = "bottom") +
  labs(title = "CDL Penguins Boxplot - Made by: Garrett")
  
# make a scatter plot with a line! does body mass vary across species?

ggplot(penguins, aes(x = `Flipper Length (mm)`, y = `Body Mass (g)`, color = Island, fill = Island)) +
  geom_point() +
  geom_smooth() +
  scale_fill_manual(values = c("green","blue", "yellow")) +
  scale_color_manual(values = c("green","blue", "yellow")) +
  theme(axis.text.x = element_blank(),
        legend.position = "bottom") +
  labs(title = "CDL Penguins Line - Made by: Garrett")

