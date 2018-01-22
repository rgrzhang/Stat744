library(ggplot2)
library(base)

ggplot(data=Immunotherapy, mapping=aes(group=Type, x=Type, y=Time))+
  geom_boxplot()
