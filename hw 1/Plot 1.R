library(ggplot2)
library(base)


ggplot(data=Immunotherapy, mapping=aes(x=Type, fill=factor(Immunotherapy$Result_of_Treatment)))+
  geom_bar()+
  scale_fill_discrete(name="Success/Failure",
                      breaks=c(0,1),
                      labels=c("Failure","Success"))
