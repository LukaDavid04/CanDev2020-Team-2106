library(shiny)
require(dplyr)
require(xlsx)
require(scales)
require(rCharts)
require(DT)
require(leaflet)
require(plotly)

source("./scripts/helper.R", local=T)
orders.extended <- read.data()


getwd()
setwd("C:/Users/Cheta/OneDrive/Hackathons/canDEV")
Cities <- read.csv("Cities.csv",header=TRUE,sep=",",skip = 7,nrows=10)
Cities
plot(Cities$X,Cities$City, xlab="City Number", ylab="City Visits")
barplot(Cities$Visits, names.arg = {Cities$City}, ylab= "Visits", xlab = "City",cex.names=0.45,las=2, space=1, horiz=FALSE,cex.axis=0.5)


shinyServer(function(input, output, sessions) {
  output$yearSlider <- renderUI({
    sliderInput(inputID = "year.in",
                label = "Year Slider",
                min = 1,
                max = 10,
                step = 1,
                value = c(1,10),
                ticks = T,
                sep = "")
    })
  

