library(ggplot2)
library(base)

ggplot(data=Immunotherapy, mapping=aes(group=Type, x=Type, y=Time))+
  geom_boxplot()

#The boxplots showed us not only the average time it takes to finish the treatment, but also the distribution.
#Treatment type 2 has the longest duration of the treatment, but the range of variation is not huge.
#Both type 1 and 3 have huge span of time required, but in general, type 3 tends to require least amount of time.