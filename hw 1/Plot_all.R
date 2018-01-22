## BMB: please (1) include all your plots in the same .R file,
## (2) don't use file names (or directory names) with spaces in them -- it's
## very inconvenient when using command-line tools

library(ggplot2)
## library(base)  ## BMB: unnecessary; 'base' packages 
                  ##  (including base, stats, etc.) get loaded automatically
                  ## https://stackoverflow.com/questions/9700799/difference-between-r-base-and-r-recommended-packages


ggplot(data=Immunotherapy, mapping=aes(x=Type, fill=factor(Immunotherapy$Result_of_Treatment)))+
  geom_bar()+
  scale_fill_discrete(name="Success/Failure",
                      breaks=c(0,1),
                      labels=c("Failure","Success"))


#The bar chart here gives us information on the count of individual undergoing each type of treatment.
#With the count of success/failure stacking on top, it can be approximated that, type 3 treatment has the highest success rate.
#But currently, there are more patients undergoing type 1 treatment.
library(ggplot2)
library(base)

ggplot(data=Immunotherapy, mapping=aes(group=Type, x=Type, y=Time))+
  geom_boxplot()

#The boxplots showed us not only the average time it takes to finish the treatment, but also the distribution.
#Treatment type 2 has the longest duration of the treatment, but the range of variation is not huge.
#Both type 1 and 3 have huge span of time required, but in general, type 3 tends to require least amount of time.library(ggplot2)
library(base)


ggplot(data=Immunotherapy, mapping=aes(group=Type, x=Type, y=Area))+
  geom_violin()

#The violin plot of the data suggests that, the major probablity of the treatment area, is between 0 to 125.
#Although some indivuduals shows extremely high area(e.g.Type 3)
#To be honest, there is not much background info available on this set of data. Maybe next time I should pick something that I can fully understand.
