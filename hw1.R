3+3
log10(100)
Library(help="datasets")
5+6
factorial(5)
data(package = .packages(all.available = TRUE))

install.packages("ggplot2")
install.packages("tidyverse")
library(ggplot2)
library(base)

ggplot(data=Immunotherapy, mapping=aes(x=Type, y=Number_of_Warts, colour=Type))+
  geom_point()+
  facet_wrap(~sex)

ggplot(data=Immunotherapy, mapping=aes(x=Type, fill=factor(Immunotherapy$Result_of_Treatment)))+
  geom_bar()
  