## BMB: please (1) include all your plots in the same .R file,
## (2) don't use file names (or directory names) with spaces in them -- it's
## very inconvenient when using command-line tools

library(ggplot2)
## library(base)  ## BMB: unnecessary; 'base' packages 
                  ##  (including base, stats, etc.) get loaded automatically
                  ## https://stackoverflow.com/questions/9700799/difference-between-r-base-and-r-recommended-packages


## BMB:  thanks for including the data, but you should still provide
##  metadata -- where does this come from ???
load("../Immunotherapy.RData")
ggplot(data=Immunotherapy, mapping=aes(x=Type, fill=factor(Immunotherapy$Result_of_Treatment)))+
  geom_bar()+
  scale_fill_discrete(name="Success/Failure",
                      breaks=c(0,1),
                      labels=c("Failure","Success"))


#The bar chart here gives us information on the count of individual undergoing each type of treatment.
#With the count of success/failure stacking on top, it can be approximated that, type 3 treatment has the highest success rate.
#But currently, there are more patients undergoing type 1 treatment.

## BMB: why is this a useful view of the data?
##   didn't Rauser say that stacking is almost never a good idea?

ggplot(data=Immunotherapy, mapping=aes(group=Type, x=Type, y=Time))+
  geom_boxplot(notch=TRUE)

#The boxplots showed us not only the average time it takes to finish the treatment, but also the distribution.
#Treatment type 2 has the longest duration of the treatment, but the range of variation is not huge.
#Both type 1 and 3 have huge span of time required, but in general, type 3 tends to require least amount of time.

## BMB: this is a good place for notch=TRUE

ggplot(data=Immunotherapy, mapping=aes(group=Type, x=Type, y=Area))+
  geom_violin()

#The violin plot of the data suggests that, the major probablity of the treatment area, is between 0 to 125.
#Although some individuals show extremely high area (e.g.Type 3)
#To be honest, there is not much background info available on this set of data. Maybe next time I should pick something that I can fully understand.

## BMB: agreed ...
##
## where did you get these data from?  Assuming they're these data
##  (seems likely since there are the same number of observations)
##  https://archive.ics.uci.edu/ml/datasets/Immunotherapy+Dataset
## you could have found the original papers and seen what they said ...
## so there is actually background data

## There's lots more data in this data set, though
##  (age, sex, area of wart,  ... ) -- why didn't you take advantage of it??

