#The data is trying to find if the vaccine licensed is effective, simply by looking if there is a decrease of cases counts after vaccine is licensed.


library(ggplot2)

## BMB: your code should be self-contained.

vaccine_data_online <- read.csv("vaccine_data_online.csv")

## BMB: colour="red" should be outside the aes() statement
ggplot(data=vaccine_data_online,mapping=aes(x=year,y=cases))+
  geom_line()+
  facet_wrap(~disease,scale="free")+
  geom_point(data=subset(vaccine_data_online,vaccine!=FALSE)
             ,aes(x=year,y=cases,colour="red"))

#The line plot is better at showing the trend.
#Now we can see the effect of vaccine easier just by looking at how much the function decreases.

ggplot(data=vaccine_data_online,mapping=aes(x=year,y=disease,size=cases,fill="red",alpha=cases))+
  geom_point(shape=20,colour="red")+
  scale_size_area(max_size = 15)+
  scale_x_continuous(breaks=c(1945:2015, by=10))

##By plotting it horizontally, we can now see the whole picture instead of needing to scroll down every time.

## BMB several good points here.
