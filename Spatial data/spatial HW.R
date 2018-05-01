# Homework for 

library(ggplot2)
library(tidyverse)

library(forcats)
library(labeling)
library(ggmap)
library(leaflet)
library(maps)

leaflet(options = leafletOptions(minZoom = 0, maxZoom = 15))

StatesofUS = map("states", fill = TRUE, plot = FALSE)
leaflet(data = StatesofUS) 
addTiles()
for (i in 1:length(vary_p))
  spatialpolygons(fillColor = i)
  ## colours are used to do a fill in different states with spatial polygons.

## Now do a plot for weather. 
leaflet()  
addTiles()
setView(-100, 50, zoom = 5)
  ## The area selected for plotting is approximated with where the country is located.
  addWMSTiles(
    "http://mesonet.agron.iastate.edu/cgi-bin/wms/nexrad/n0r.cgi",
    layers = "nexrad-n0r-900913",
    options = WMSTileOptions(format = "jpg/png", transparent = TRUE),
    attribution = "Weather data ? 2012 IEM Nexrad"
  )

## I made the plot for different states and weather informations separately.
## I got this date by suggestion from Yicheng.