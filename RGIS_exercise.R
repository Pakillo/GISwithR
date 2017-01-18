## download GBIF data for 'Cistus ladanifer'
library(rgbif)
spdata <- occ_search(scientificName = "Arbutus unedo",
                       hasCoordinate = TRUE, continent = "europe",
                       return = "data")
str(spdata,1)

## make spatial
library(sp)
coordinates(spdata) <- c("decimalLongitude", "decimalLatitude")

## set projection (CRS)
library(raster)
projection(spdata) <- CRS("+proj=longlat +ellps=WGS84 +datum=WGS84")


## plot localities
library(dismo)
plot(gmap(spdata, type = "satellite"))
points(Mercator(spdata), col = "orange", pch = 20, cex = 3)


## mapr
library(mapr)
map_ggmap(spdata, lon = "decimalLongitude", lat = "decimalLatitude")


## explore interactively with mapview
library(mapview)
mapView(spdata)


## subset

## rasterize and plot

p <- rasterize()



## digitalizar
newlocs <- click(n = 2)
newpoly <- drawPoly()

## download bioclim data
library(raster)
clim <- getData('worldclim', var = "bio", res = 10)


## plot bioclim data
plot(clim)

## crop to given extent
crop

## export to KML



## extract data to data frame
extract

## fit model
glm

## map predictions


