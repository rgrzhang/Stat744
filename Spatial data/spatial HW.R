# Homework for 

library(ggplot2)
library(tidyverse)

library(forcats)
library(labeling)
library(ggmap)
library(leaflet)
library(maps)

leaflet(options = leafletOptions(minZoom = 0, maxZoom = 18))
mapStates = map("state", fill = TRUE, plot = FALSE)
leaflet(data = mapStates) %>% addTiles() %>%
  addPolygons(fillColor = topo.colors(10, alpha = NULL), stroke = FALSE)

leaflet() %>% addTiles() %>% setView(-93.65, 42.0285, zoom = 5) %>%
  ## Zoom=5 should be a proper size for this plot
  addWMSTiles(
    "http://mesonet.agron.iastate.edu/cgi-bin/wms/nexrad/n0r.cgi",
    layers = "nexrad-n0r-900913",
    options = WMSTileOptions(format = "image/png", transparent = TRUE),
    attribution = "Weather data ? 2012 IEM Nexrad"
  )