library(readr)
folder <- paste(getwd(), "/files/", sep='')
files <- list.files(path=folder, pattern = "*.csv", full.names = TRUE)
files

dataset <- read_delim(file=file.path(files[1]), ";", escape_double = FALSE, col_names = FALSE)
lat <- dataset$X6[1]
lon <- dataset$X6[2]
numRecord <- nrow(dataset)
dataset <- dataset[11:numRecord,]
colnames(dataset) = dataset[1,]
dataset = dataset[-1,]
dataset$latitude <- lat
dataset$longitude <- lon

for(i in 2:length(files)){
  data <- read_delim(files[i], ";", escape_double = FALSE, col_names = FALSE)
  lat <- data$X6[1]
  lon <- data$X6[2]
  numRecord <- nrow(data)
  data <- data[11:numRecord,]
  colnames(data) = data[1,]
  data = data[-1,]
  data$latitude <- lat
  data$longitude <- lon
  dataset <- rbind(dataset, data)
}

wind_data <- data.frame(
  lat = numeric(nrow(dataset)),
  lon = numeric(nrow(dataset)),
  dir = numeric(nrow(dataset)),
  speed = numeric(nrow(dataset)),
  stringsAsFactors = FALSE
)
wind_data$lat <-as.numeric(dataset$latitude)
wind_data$lon <- as.numeric(dataset$longitude)
wind_data$dir <- as.numeric(dataset$`Wind Direction  [10 m above gnd]`)
wind_data$speed <- as.numeric(dataset$`Wind Speed  [10 m above gnd]`)

library(rWind) 
library(raster)
r_dir <- wind2raster(wind_data)  

library(rworldmap)
newmap <- getMap(resolution = "low")  

par(mfrow=c(1,2))  

plot(r_dir$direction, main="direction")  
lines(newmap, lwd=4)  

plot(r_dir$speed, main="speed")  
lines(newmap, lwd=4)





