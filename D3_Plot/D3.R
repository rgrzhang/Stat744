library(networkD3)
source <- c("chicago", "newyork", "boston", "newyork", "newyork", "boston", "newyork", "newyork", "boston")
target <- c("newyork", "chicago", "newyork", "altanta", "cleveland", "seattle", "seattle", "miami", "miami")
networkData <- data.frame(source, target)
simpleNetwork(Data = networkData, 
              Source = 1, 
              Target = 2,
              opacity = 1,
              fontFamily = "sans",
              fontSize = 15,
              linkColour = "#123abc",
              nodeColour = "Red",
              zoom = T
)

## This is a nework plot of "what I imagined the connection between cities". In fact, with the help of our network packages, we can also easily regenerate this with "igraph"
## Somehow I'm unable to produce the image this time, I could before. Now it keeps telling me "cannot change working directory".