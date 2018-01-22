library(ggplot2)
library(base)


ggplot(data=Immunotherapy, mapping=aes(group=Type, x=Type, y=Area))+
  geom_violin()

#The violin plot of the data suggests that, the major probablity of the treatment area, is between 0 to 125.
#Although some indivuduals shows extremely high area(e.g.Type 3)
#To be honest, there is not much background info available on this set of data. Maybe next time I should pick something that I can fully understand.
