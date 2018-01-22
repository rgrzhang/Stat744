library(ggplot2)
library(base)


ggplot(data=Immunotherapy, mapping=aes(x=Type, fill=factor(Immunotherapy$Result_of_Treatment)))+
  geom_bar()+
  scale_fill_discrete(name="Success/Failure",
                      breaks=c(0,1),
                      labels=c("Failure","Success"))


#The bar chart here gives us information on the count of individual undergoing each type of treatment.
#With the count of success/failure stacking on top, it can be approximated that, type 3 treatment has the highest success rate.
#But currently, there are more patients undergoing type 1 treatment.
