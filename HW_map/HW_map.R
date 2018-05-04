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
addPolylines()
## Add default OpenStreetMap map tiles
addMarkers(lng=-150, lat=100)

for (i in 1:length(vary_state))
  addpolygons(fillColor = i)
  ## colours are used to do a fill in different states with spatial polygons.

## Now do a plot for weather. 
leaflet()  
addTiles()
addPolylines()
addMarkers(lng=-150, lat=100)
setView(-100, 50, zoom = 5)
  ## The area selected for plotting is approximated with where the country is located.
  addWMSTiles(
    "http://mesonet.agron.iastate.edu/cgi-bin/wms/nexrad/n0r.cgi",
    layers = "nexrad-n0r-900913",
    options = WMSTileOptions(format = "jpg/png", transparent = TRUE),
    attribution = "Weather data ? 2012 IEM Nexrad"
  )

## I made the plot for different states and weather informations separately.
## I got this data by suggestion from Yicheng.
## Ref: https://rstudio.github.io/leaflet/ For coding tutorials.