## BMB: avoid file names with spaces in them!
library(aplpack)

## BMB: good practice to cache a version of the data set in case
##  the original source goes away (or no network connection)
crime <- read.csv("http://datasets.flowingdata.com/crimeRatesByState-formatted.csv")
crime[1:6,]

faces(crime[,2:8])
crime_filled <- cbind(crime[,1:6], rep(0, length(crime$state)), crime[,7:8])
faces(crime_filled[,2:8], labels=crime_filled$state)
## BMB: does alphabetical order make sense?
##  is there a way to add a legend? printing out the associations separately
##  is OK, but seems clunky
